.class public interface abstract Lcom/powervision/powersdk/callback/RemoteControlCallback$RemoteControlParamListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteControlParamListener"
.end annotation


# virtual methods
.method public abstract onRemoteControlGetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onRemoteControlGetTimeout(Ljava/lang/String;)V
.end method

.method public abstract onRemoteControlSetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onRemoteControlSetTimeout(Ljava/lang/String;)V
.end method
