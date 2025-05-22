.class public interface abstract Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;
.super Ljava/lang/Object;
.source "HiCamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/camplayer/HiCamPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HiCamPlayerStateListener"
.end annotation


# virtual methods
.method public abstract onASRChange(Lcom/hisilicon/camplayer/HiCamPlayer;)V
.end method

.method public abstract onBufferingUpdate(Lcom/hisilicon/camplayer/HiCamPlayer;I)V
.end method

.method public abstract onCodecErr(Lcom/hisilicon/camplayer/HiCamPlayer;)V
.end method

.method public abstract onError(Lcom/hisilicon/camplayer/HiCamPlayer;Ljava/lang/String;I)V
.end method

.method public abstract onFinish(Lcom/hisilicon/camplayer/HiCamPlayer;)V
.end method

.method public abstract onStateChange(Lcom/hisilicon/camplayer/HiCamPlayer;Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V
.end method
