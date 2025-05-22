.class public Lcom/powervision/powersdk/base/RemoteBase;
.super Ljava/lang/Object;
.source "RemoteBase.java"

# interfaces
.implements Lcom/powervision/powersdk/callback/RemoteControlCallback$RemoteControlParamListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;
    }
.end annotation


# instance fields
.field private remoteListener:Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteControlGetSuccess(Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/powervision/powersdk/base/RemoteBase;->remoteListener:Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 36
    invoke-interface {v0, v1, p1}, Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;->remoteCallBack(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRemoteControlGetTimeout(Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/powervision/powersdk/base/RemoteBase;->remoteListener:Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 43
    invoke-interface {v0, v1, p1}, Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;->remoteCallBack(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRemoteControlSetSuccess(Ljava/lang/String;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/powervision/powersdk/base/RemoteBase;->remoteListener:Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 22
    invoke-interface {v0, v1, p1}, Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;->remoteCallBack(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRemoteControlSetTimeout(Ljava/lang/String;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/powervision/powersdk/base/RemoteBase;->remoteListener:Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 29
    invoke-interface {v0, v1, p1}, Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;->remoteCallBack(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setRemoteListener(Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/powervision/powersdk/base/RemoteBase;->remoteListener:Lcom/powervision/powersdk/base/RemoteBase$RemoteListener;

    return-void
.end method
