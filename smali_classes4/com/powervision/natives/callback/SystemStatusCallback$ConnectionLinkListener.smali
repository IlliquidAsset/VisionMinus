.class public interface abstract Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;
.super Ljava/lang/Object;
.source "SystemStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/SystemStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionLinkListener"
.end annotation


# static fields
.field public static final PVSDK_LINK_CONNECTION_DISCONNECTED:I = 0x2

.field public static final PVSDK_LINK_CONNECTION_FAILED:I = 0x1

.field public static final PVSDK_LINK_CONNECTION_SUCCESS:I = 0x0

.field public static final PVSDK_LINK_CONNECTION_TIMEOUT:I = 0x3


# virtual methods
.method public abstract onConnectFailed()V
.end method

.method public abstract onConnectSuccess()V
.end method

.method public abstract onConnectTimeOut()V
.end method

.method public abstract onDisConnected()V
.end method
