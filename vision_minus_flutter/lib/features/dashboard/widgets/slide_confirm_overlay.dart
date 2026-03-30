import 'package:flutter/material.dart';

class SlideConfirmOverlay extends StatefulWidget {
  final String title;
  final String description;
  final IconData leadingIcon;
  final VoidCallback onCancel;
  final VoidCallback onConfirmed;

  const SlideConfirmOverlay({
    super.key,
    required this.title,
    required this.description,
    required this.leadingIcon,
    required this.onCancel,
    required this.onConfirmed,
  });

  @override
  State<SlideConfirmOverlay> createState() => _SlideConfirmOverlayState();
}

class _SlideConfirmOverlayState extends State<SlideConfirmOverlay> {
  static const double _thumbSize = 52;
  double _thumbLeft = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: widget.onCancel,
        child: ColoredBox(
          color: Colors.black.withValues(alpha: 0.7),
          child: Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
                    decoration: BoxDecoration(
                      color: const Color(0xFF161A22),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          widget.description,
                          style: const TextStyle(
                              color: Colors.white70, fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            final maxLeft = (constraints.maxWidth - _thumbSize)
                                .clamp(0.0, double.infinity);
                            if (_thumbLeft > maxLeft) {
                              _thumbLeft = maxLeft;
                            }
                            final progress = maxLeft == 0
                                ? 0.0
                                : (_thumbLeft / maxLeft).clamp(0.0, 1.0);

                            return SizedBox(
                              height: _thumbSize,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF212936),
                                        borderRadius:
                                            BorderRadius.circular(999),
                                        border:
                                            Border.all(color: Colors.white24),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 14,
                                    top: 0,
                                    bottom: 0,
                                    child: Center(
                                      child: Icon(widget.leadingIcon,
                                          color: Colors.white70, size: 20),
                                    ),
                                  ),
                                  const Positioned(
                                    right: 14,
                                    top: 0,
                                    bottom: 0,
                                    child: Center(
                                      child: Icon(Icons.check_circle,
                                          color: Colors.greenAccent, size: 20),
                                    ),
                                  ),
                                  Positioned(
                                    left: 50,
                                    right: 50,
                                    top: 0,
                                    bottom: 0,
                                    child: Center(
                                      child: Opacity(
                                        opacity: 1 - progress,
                                        child: const Text(
                                          'Slide to confirm',
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: _thumbLeft,
                                    top: 0,
                                    child: GestureDetector(
                                      onHorizontalDragUpdate: (details) {
                                        setState(() {
                                          _thumbLeft =
                                              (_thumbLeft + details.delta.dx)
                                                  .clamp(0.0, maxLeft);
                                        });
                                      },
                                      onHorizontalDragEnd: (_) {
                                        if (progress >= 0.96) {
                                          widget.onConfirmed();
                                          return;
                                        }
                                        setState(() => _thumbLeft = 0);
                                        widget.onCancel();
                                      },
                                      child: Container(
                                        width: _thumbSize,
                                        height: _thumbSize,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF2D9CDB),
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0xFF2D9CDB)
                                                  .withValues(alpha: 0.45),
                                              blurRadius: 12,
                                              offset: const Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        child: const Icon(Icons.arrow_forward,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
