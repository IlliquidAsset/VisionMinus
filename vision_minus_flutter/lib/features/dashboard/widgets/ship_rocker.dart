import 'dart:async';

import 'package:flutter/material.dart';

enum ShipRockerAxis { horizontal, vertical }

class ShipRocker extends StatefulWidget {
  final double size;
  final String label;
  final ShipRockerAxis axis;
  final ValueChanged<double> onAxisChanged;
  final VoidCallback onRelease;

  const ShipRocker({
    super.key,
    required this.size,
    required this.label,
    required this.axis,
    required this.onAxisChanged,
    required this.onRelease,
  });

  @override
  State<ShipRocker> createState() => _ShipRockerState();
}

class _ShipRockerState extends State<ShipRocker> {
  double _x = 0;
  double _y = 0;
  Timer? _repeatTimer;

  double get _radius => widget.size / 2;
  double get _knobRadius => widget.size / 5;
  double get _maxTravel => _radius - _knobRadius;

  void _update(Offset localPosition) {
    final center = Offset(_radius, _radius);
    final delta = localPosition - center;
    final clampedX = (delta.dx / _maxTravel).clamp(-1.0, 1.0);
    final clampedY = (delta.dy / _maxTravel).clamp(-1.0, 1.0);

    setState(() {
      if (widget.axis == ShipRockerAxis.vertical) {
        _x = 0;
        _y = clampedY;
      } else {
        _x = clampedX;
        _y = 0;
      }
    });

    widget.onAxisChanged(widget.axis == ShipRockerAxis.vertical ? -_y : _x);
  }

  void _startRepeat() {
    _repeatTimer?.cancel();
    _repeatTimer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      widget.onAxisChanged(widget.axis == ShipRockerAxis.vertical ? -_y : _x);
    });
  }

  void _reset() {
    _repeatTimer?.cancel();
    _repeatTimer = null;
    setState(() {
      _x = 0;
      _y = 0;
    });
    widget.onRelease();
  }

  @override
  void dispose() {
    _repeatTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final knobCenter = Offset(
      _radius + (_x * _maxTravel),
      _radius + (_y * _maxTravel),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.label,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onPanStart: (d) {
            _update(d.localPosition);
            _startRepeat();
          },
          onPanUpdate: (d) => _update(d.localPosition),
          onPanEnd: (_) => _reset(),
          onPanCancel: _reset,
          child: SizedBox(
            width: widget.size,
            height: widget.size,
            child: CustomPaint(
              painter: _ShipRockerPainter(
                knobCenter: knobCenter,
                knobRadius: _knobRadius,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ShipRockerPainter extends CustomPainter {
  final Offset knobCenter;
  final double knobRadius;

  const _ShipRockerPainter({
    required this.knobCenter,
    required this.knobRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final basePaint = Paint()
      ..color = Colors.black.withValues(alpha: 0.45)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, basePaint);

    final rings = Paint()
      ..color = Colors.white10
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawCircle(center, radius * 0.66, rings);
    canvas.drawCircle(center, radius * 0.33, rings);

    final axisPaint = Paint()
      ..color = Colors.white24
      ..strokeWidth = 1.2;
    canvas.drawLine(Offset(center.dx, 0), Offset(center.dx, size.height), axisPaint);
    canvas.drawLine(Offset(0, center.dy), Offset(size.width, center.dy), axisPaint);

    final borderPaint = Paint()
      ..color = Colors.white30
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    canvas.drawCircle(center, radius, borderPaint);

    final knobPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.85)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(knobCenter, knobRadius, knobPaint);

    final knobBorder = Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawCircle(knobCenter, knobRadius, knobBorder);
  }

  @override
  bool shouldRepaint(covariant _ShipRockerPainter oldDelegate) {
    return oldDelegate.knobCenter != knobCenter;
  }
}
