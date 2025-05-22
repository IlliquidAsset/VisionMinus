.class public interface abstract Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;
.super Ljava/lang/Object;
.source "RemoteStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyRemoteConnectListener"
.end annotation


# static fields
.field public static final CONNECT_REMOTE_RESULT_DISCONNECTED:I = 0x1

.field public static final CONNECT_REMOTE_RESULT_FAILED:I = 0x3

.field public static final CONNECT_REMOTE_RESULT_HEARTBEAT_RECOVERED:I = 0x5

.field public static final CONNECT_REMOTE_RESULT_HEARTBEAT_TIMEOUT:I = 0x4

.field public static final CONNECT_REMOTE_RESULT_SUCCESS:I = 0x0

.field public static final CONNECT_REMOTE_RESULT_TIMEOUT:I = 0x2


# virtual methods
.method public abstract onRemoteConnectFailed()V
.end method

.method public abstract onRemoteConnectSuccess()V
.end method

.method public abstract onRemoteConnectTimeOut()V
.end method

.method public abstract onRemoteDisConnected()V
.end method

.method public abstract onRemoteHeartbeatReconvered()V
.end method

.method public abstract onRemoteHeartbeatTimeOut()V
.end method
