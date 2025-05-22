.class public interface abstract Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;
.super Ljava/lang/Object;
.source "W4RemoteConnectCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/W4RemoteConnectCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnecteRemoteLinkListener"
.end annotation


# static fields
.field public static final PVSDK_LINK_CONNECTION_DISCONNECTED:I = 0x1

.field public static final PVSDK_LINK_CONNECTION_FAILED:I = 0x3

.field public static final PVSDK_LINK_CONNECTION_SUCCESS:I = 0x0

.field public static final PVSDK_LINK_CONNECTION_TIMEOUT:I = 0x2


# virtual methods
.method public abstract onChainConnectTimeOut()V
.end method

.method public abstract onChainDisConnected()V
.end method

.method public abstract onConnectChainFailed()V
.end method

.method public abstract onConnectChainSuccess()V
.end method
