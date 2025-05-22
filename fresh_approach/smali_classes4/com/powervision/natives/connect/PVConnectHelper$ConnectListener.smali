.class public interface abstract Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;
.super Ljava/lang/Object;
.source "PVConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/PVConnectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectListener"
.end annotation


# static fields
.field public static final CHAIN_CONNECTED:I = 0x0

.field public static final CHAIN_CONNECT_FAILED:I = 0x1

.field public static final CHAIN_CONNECT_TIMEOUT:I = 0x3

.field public static final CHAIN_DISCONNECTED:I = 0x2

.field public static final DEVICE_CONNECTED:I = 0x4

.field public static final DEVICE_CONNECT_FAILED:I = 0x5

.field public static final DEVICE_CONNECT_TIMEOUT:I = 0x7

.field public static final DEVICE_DISCONNECT:I = 0x6

.field public static final HEARTBEAT_RECOVERY:I = 0x8

.field public static final HEARTBEAT_TIMEOUT:I = 0x9

.field public static final SELF_DISCONNECT:I = 0x64


# virtual methods
.method public abstract onChainConnectFailed()V
.end method

.method public abstract onChainConnectTimeout()V
.end method

.method public abstract onChainConnected()V
.end method

.method public abstract onChainDisconnected()V
.end method

.method public abstract onDeviceConnectFailed()V
.end method

.method public abstract onDeviceConnectTimeout()V
.end method

.method public abstract onDeviceConnected()V
.end method

.method public abstract onDeviceDisConnect()V
.end method

.method public abstract onHeartbeatRecovery()V
.end method

.method public abstract onHeartbeatTimeout()V
.end method

.method public abstract onSelfDisconnect()V
.end method
