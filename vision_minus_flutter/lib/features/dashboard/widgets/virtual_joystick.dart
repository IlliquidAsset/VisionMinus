import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class VirtualJoystick extends StatefulWidget {
  final void Function(double x, double y) onUpdate;
  final void Function() onRelease;
  final double size;
  final Color baseColor;
  final Color knobColor;
  final String? label;

  const VirtualJoystick({
    super.key,
    required this.onUpdate,
    required this.onRelease,
    this.size = 120,
    this.baseColor = const Color(0x44FFFFFF),
    this.knobColor = const Color(0xBBFFFFFF),
    this.label,
  });

  @override
  State<VirtualJoystick> createState() => _VirtualJoystickState();
}

class _VirtualJoystickState extends State<VirtualJoystick> {
  double _dx = 0;
  double _dy = 0;
  Timer? _repeatTimer;

  double get _radius => widget.size / 2;
  double get _knobRadius => widget.size / 5;

  void _updatePosition(Offset localPos) {
    final center = Offset(_radius, _radius);
    final delta = localPos - center;
    final maxDist = _radius - _knobRadius;
    final dist = min(delta.distance, maxDist);
    final angle = delta.direction;

    setState(() {
      _dx = (dist / maxDist) * cos(angle);
      _dy = (dist / maxDist) * sin(angle);
    });

    widget.onUpdate(_dx, -_dy);
  }

  void _startRepeat() {
    _repeatTimer?.cancel();
    _repeatTimer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (_dx != 0 || _dy != 0) {
        widget.onUpdate(_dx, -_dy);
      }
    });
  }

  void _reset() {
    _repeatTimer?.cancel();
    _repeatTimer = null;
    setState(() {
      _dx = 0;
      _dy = 0;
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
    final knobOffset = Offset(
      _radius + _dx * (_radius - _knobRadius),
      _radius - _dy * (_radius - _knobRadius),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              widget.label!,
              style: const TextStyle(color: Colors.white54, fontSize: 10),
            ),
          ),
        GestureDetector(
          onPanStart: (details) {
            _updatePosition(details.localPosition);
            _startRepeat();
          },
          onPanUpdate: (details) {
            _updatePosition(details.localPosition);
          },
          onPanEnd: (_) => _reset(),
          onPanCancel: _reset,
          child: SizedBox(
            width: widget.size,
            height: widget.size,
            child: CustomPaint(
              painter: _JoystickPainter(
                baseColor: widget.baseColor,
                knobColor: widget.knobColor,
                knobCenter: knobOffset,
                knobRadius: _knobRadius,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _JoystickPainter extends CustomPainter {
  final Color baseColor;
  final Color knobColor;
  final Offset knobCenter;
  final double knobRadius;

  _JoystickPainter({
    required this.baseColor,
    required this.knobColor,
    required this.knobCenter,
    required this.knobRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final basePaint = Paint()
      ..color = baseColor
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, basePaint);

    final borderPaint = Paint()
      ..color = Colors.white24
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    canvas.drawCircle(center, radius, borderPaint);

    final crossPaint = Paint()
      ..color = Colors.white12
      ..strokeWidth = 1;
    canvas.drawLine(Offset(center.dx, 0), Offset(center.dx, size.height), crossPaint);
    canvas.drawLine(Offset(0, center.dy), Offset(size.width, center.dy), crossPaint);

    final knobPaint = Paint()
      ..color = knobColor
      ..style = PaintingStyle.fill;
    canvas.drawCircle(knobCenter, knobRadius, knobPaint);

    final knobBorder = Paint()
      ..color = Colors.white54
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawCircle(knobCenter, knobRadius, knobBorder);
  }

  @override
  bool shouldRepaint(covariant _JoystickPainter oldDelegate) {
    return oldDelegate.knobCenter != knobCenter;
  }
}
