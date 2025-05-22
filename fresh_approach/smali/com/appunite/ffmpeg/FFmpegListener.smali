.class public interface abstract Lcom/appunite/ffmpeg/FFmpegListener;
.super Ljava/lang/Object;
.source "FFmpegListener.java"


# virtual methods
.method public abstract onConnectTimeout()V
.end method

.method public abstract onFFConnStatus(I)V
.end method

.method public abstract onFFDataSourceLoaded(Lcom/appunite/ffmpeg/FFmpegError;[Lcom/appunite/ffmpeg/FFmpegStreamInfo;)V
.end method

.method public abstract onFFPause(Lcom/appunite/ffmpeg/NotPlayingException;)V
.end method

.method public abstract onFFRecordStatus(I)V
.end method

.method public abstract onFFRenderStatus(I)V
.end method

.method public abstract onFFResume(Lcom/appunite/ffmpeg/NotPlayingException;)V
.end method

.method public abstract onFFSeeked(Lcom/appunite/ffmpeg/NotPlayingException;)V
.end method

.method public abstract onFFStop()V
.end method

.method public abstract onFFUpdateTime(JJZ)V
.end method

.method public abstract onFrameUpdate(I)V
.end method
