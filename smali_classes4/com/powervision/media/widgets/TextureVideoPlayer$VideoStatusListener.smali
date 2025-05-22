.class public interface abstract Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;
.super Ljava/lang/Object;
.source "TextureVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/TextureVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoStatusListener"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onStart(Landroid/media/MediaPlayer;)V
.end method

.method public abstract release()V
.end method
