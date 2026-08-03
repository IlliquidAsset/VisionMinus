import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class VideoFeedWidget extends StatefulWidget {
  final String url;

  const VideoFeedWidget({
    super.key,
    this.url = 'rtsp://192.168.1.10/livestream/12',
  });

  @override
  State<VideoFeedWidget> createState() => _VideoFeedWidgetState();
}

class _VideoFeedWidgetState extends State<VideoFeedWidget> {
  static Player? _sharedPlayer;
  static String? _currentUrl;

  late final Player _player;
  late final VideoController _controller;
  StreamSubscription<bool>? _bufferingSub;
  StreamSubscription<String>? _errorSub;

  bool _isBuffering = true;
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _player = _sharedPlayer ??
        Player(
          configuration: const PlayerConfiguration(
            bufferSize: 4 * 1024 * 1024,
            logLevel: MPVLogLevel.warn,
          ),
        );
    _sharedPlayer ??= _player;
    _controller = VideoController(_player);

    _bufferingSub = _player.stream.buffering.listen((buffering) {
      if (!mounted) return;
      setState(() => _isBuffering = buffering);
    });

    _errorSub = _player.stream.error.listen((error) {
      if (!mounted) return;
      setState(() => _errorText = error.isEmpty ? 'Video stream unavailable' : error);
    });

    _open();
  }

  Future<void> _configureLiveStreamOptions() async {
    final platformPlayer = _player.platform;
    if (platformPlayer is! NativePlayer) {
      return;
    }

    await platformPlayer.setProperty('cache-secs', '1');
    await platformPlayer.setProperty('cache-on-disk', 'no');
    await platformPlayer.setProperty('demuxer-readahead-secs', '1');
    await platformPlayer.setProperty('cache-pause', 'no');
    await platformPlayer.setProperty('tcp-nodelay', 'yes');
    await platformPlayer.setProperty('audio-buffer', '0.1');
    if (Platform.isAndroid) {
      await platformPlayer.setProperty('force-seekable', 'yes');
      await platformPlayer.setProperty('hr-seek', 'no');
    }
  }

  Future<void> _open() async {
    setState(() {
      _errorText = null;
      _isBuffering = true;
    });

    try {
      await _configureLiveStreamOptions();
      if (_currentUrl != widget.url) {
        await _player.open(Media(widget.url), play: true);
        _currentUrl = widget.url;
      } else {
        await _player.play();
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _errorText = 'Failed to open RTSP stream';
        _isBuffering = false;
      });
    }
  }

  @override
  void dispose() {
    _bufferingSub?.cancel();
    _errorSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_errorText != null) {
      return Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Text(
          _errorText!,
          style: const TextStyle(color: Colors.white70, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      );
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        ColoredBox(
          color: Colors.black,
          child: Video(
            controller: _controller,
            fit: BoxFit.cover,
            controls: NoVideoControls,
          ),
        ),
        if (_isBuffering)
          const Center(
            child: SizedBox(
              width: 32,
              height: 32,
              child: CircularProgressIndicator(strokeWidth: 2.5),
            ),
          ),
      ],
    );
  }
}
