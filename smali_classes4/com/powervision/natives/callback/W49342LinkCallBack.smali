.class public interface abstract Lcom/powervision/natives/callback/W49342LinkCallBack;
.super Ljava/lang/Object;
.source "W49342LinkCallBack.java"


# static fields
.field public static final CONNECT_LINK_CALLBACK_DISCONNECTED:I = 0x1

.field public static final CONNECT_LINK_CALLBACK_FAILED:I = 0x3

.field public static final CONNECT_LINK_CALLBACK_SUCCESS:I = 0x0

.field public static final CONNECT_LINK_CALLBACK_TIMEOUT:I = 0x2

.field public static final CONNECT_TELENT_CALLBACK_INFO_FAILED:I = 0x4


# virtual methods
.method public abstract onDisconnect()V
.end method

.method public abstract onFailed()V
.end method

.method public abstract onGetVersion(Ljava/lang/String;)V
.end method

.method public abstract onLinkFailed()V
.end method

.method public abstract onLinkSuccess()V
.end method

.method public abstract onTimeOut()V
.end method
