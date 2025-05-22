.class public interface abstract Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;
.super Ljava/lang/Object;
.source "PVConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/PVConnectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnenctRemoteListener"
.end annotation


# static fields
.field public static final AP03_DEVICE_CONNECTED:I = 0xa

.field public static final AP03_DEVICE_CONNECT_FAILED:I = 0xb

.field public static final AP03_DEVICE_CONNECT_TIMEOUT:I = 0xd

.field public static final AP03_DEVICE_DISCONNECT:I = 0xc

.field public static final AP03_HEARTBEAT_RECOVERY:I = 0xe

.field public static final AP03_HEARTBEAT_TIMEOUT:I = 0xf

.field public static final CHAIN_CONNECTED:I = 0x0

.field public static final CHAIN_CONNECT_FAILED:I = 0x1

.field public static final CHAIN_CONNECT_TIMEOUT:I = 0x3

.field public static final CHAIN_DISCONNECTED:I = 0x2

.field public static final W4_DEVICE_CONNECTED:I = 0x4

.field public static final W4_DEVICE_CONNECT_FAILED:I = 0x5

.field public static final W4_DEVICE_CONNECT_TIMEOUT:I = 0x7

.field public static final W4_DEVICE_DISCONNECT:I = 0x6

.field public static final W4_HEARTBEAT_RECOVERY:I = 0x8

.field public static final W4_HEARTBEAT_TIMEOUT:I = 0x9


# virtual methods
.method public abstract onAp03HeartbeatRecovery()V
.end method

.method public abstract onAp03HeartbeatTimeout()V
.end method

.method public abstract onAp03RemoteConnectFailed()V
.end method

.method public abstract onAp03RemoteConnectTimeout()V
.end method

.method public abstract onAp03RemoteConnected()V
.end method

.method public abstract onAp03RemoteDisConnect()V
.end method

.method public abstract onRemoteChainConnectFailed()V
.end method

.method public abstract onRemoteChainConnectTimeout()V
.end method

.method public abstract onRemoteChainConnected()V
.end method

.method public abstract onRemoteChainDisconnected()V
.end method

.method public abstract onW4HeartbeatRecovery()V
.end method

.method public abstract onW4HeartbeatTimeout()V
.end method

.method public abstract onW4RemoteConnectFailed()V
.end method

.method public abstract onW4RemoteConnectTimeout()V
.end method

.method public abstract onW4RemoteConnected()V
.end method

.method public abstract onW4RemoteDisConnect()V
.end method
