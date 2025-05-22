.class public interface abstract Lcom/xiao/nicevideoplayer/INiceVideoPlayer;
.super Ljava/lang/Object;
.source "INiceVideoPlayer.java"


# virtual methods
.method public abstract continueFromLastPosition(Z)V
.end method

.method public abstract enterFullScreen()V
.end method

.method public abstract enterTinyWindow()V
.end method

.method public abstract exitFullScreen()Z
.end method

.method public abstract exitTinyWindow()Z
.end method

.method public abstract getBufferPercentage()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMaxVolume()I
.end method

.method public abstract getSpeed(F)F
.end method

.method public abstract getTcpSpeed()J
.end method

.method public abstract getVolume()I
.end method

.method public abstract isBufferingPaused()Z
.end method

.method public abstract isBufferingPlaying()Z
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract isError()Z
.end method

.method public abstract isFullScreen()Z
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isNormal()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract isPreparing()Z
.end method

.method public abstract isTinyWindow()Z
.end method

.method public abstract pause()V
.end method

.method public abstract release()V
.end method

.method public abstract releasePlayer()V
.end method

.method public abstract restart()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setSpeed(F)V
.end method

.method public abstract setUp(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVolume(I)V
.end method

.method public abstract start()V
.end method

.method public abstract start(J)V
.end method
