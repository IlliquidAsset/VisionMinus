.class public interface abstract Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;
.super Ljava/lang/Object;
.source "RemoteStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyRemoteConnectLinkListener"
.end annotation


# static fields
.field public static final CONNECT_LINK_CALLBACK_INFO_DISCONNECTED:I = 0x1

.field public static final CONNECT_LINK_CALLBACK_INFO_FAILED:I = 0x3

.field public static final CONNECT_LINK_CALLBACK_INFO_SUCCESS:I = 0x0

.field public static final CONNECT_LINK_CALLBACK_INFO_TIMEOUT:I = 0x2


# virtual methods
.method public abstract onRemoteLinkConnectFailed()V
.end method

.method public abstract onRemoteLinkConnectSuccess()V
.end method

.method public abstract onRemoteLinkConnectTimeOut()V
.end method

.method public abstract onRemoteLinkDisConnected()V
.end method
