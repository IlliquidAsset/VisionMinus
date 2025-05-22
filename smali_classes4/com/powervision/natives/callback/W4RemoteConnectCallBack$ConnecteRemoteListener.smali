.class public interface abstract Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;
.super Ljava/lang/Object;
.source "W4RemoteConnectCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/W4RemoteConnectCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnecteRemoteListener"
.end annotation


# static fields
.field public static final CONNECT_REMOTE_RESULT_DISCONNECTED:I = 0x1

.field public static final CONNECT_REMOTE_RESULT_FAILED:I = 0x3

.field public static final CONNECT_REMOTE_RESULT_HEARTBEAT_RECOVERED:I = 0x5

.field public static final CONNECT_REMOTE_RESULT_HEARTBEAT_TIMEOUT:I = 0x4

.field public static final CONNECT_REMOTE_RESULT_SUCCESS:I = 0x0

.field public static final CONNECT_REMOTE_RESULT_TIMEOUT:I = 0x2


# virtual methods
.method public abstract onDeviceConnectFailed()V
.end method

.method public abstract onDeviceConnectSuccess()V
.end method

.method public abstract onDeviceConnectTimeOut()V
.end method

.method public abstract onDeviceDisConnected()V
.end method

.method public abstract onHeartbeatRecovered()V
.end method

.method public abstract onHeartbeatTimeOut()V
.end method
