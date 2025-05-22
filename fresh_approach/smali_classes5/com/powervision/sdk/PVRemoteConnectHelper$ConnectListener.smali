.class public interface abstract Lcom/powervision/sdk/PVRemoteConnectHelper$ConnectListener;
.super Ljava/lang/Object;
.source "PVRemoteConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/sdk/PVRemoteConnectHelper;
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


# virtual methods
.method public abstract onRemoteChainConnectFailed()V
.end method

.method public abstract onRemoteChainConnectTimeout()V
.end method

.method public abstract onRemoteChainConnected()V
.end method

.method public abstract onRemoteChainDisconnected()V
.end method

.method public abstract onRemoteConnectFailed()V
.end method

.method public abstract onRemoteConnectTimeout()V
.end method

.method public abstract onRemoteConnected()V
.end method

.method public abstract onRemoteDisConnect()V
.end method

.method public abstract onRemoteHeartbeatRecovery()V
.end method

.method public abstract onRemoteHeartbeatTimeout()V
.end method
