.class public interface abstract Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteControlParamListener"
.end annotation


# virtual methods
.method public abstract onRemoteControlGetSuccess(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onRemoteControlGetTimeout(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onRemoteControlSetSuccess(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onRemoteControlSetTimeout(Ljava/lang/String;Ljava/lang/Object;)V
.end method
