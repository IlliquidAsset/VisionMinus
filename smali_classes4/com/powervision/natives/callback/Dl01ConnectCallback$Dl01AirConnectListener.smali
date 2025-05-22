.class public interface abstract Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;
.super Ljava/lang/Object;
.source "Dl01ConnectCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/Dl01ConnectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dl01AirConnectListener"
.end annotation


# static fields
.field public static final CONNECT_LINK_CALLBACK_INFO_DISCONNECTED:Ljava/lang/String; = "Disconnected"

.field public static final CONNECT_LINK_CALLBACK_INFO_FAILED:Ljava/lang/String; = "Failed"

.field public static final CONNECT_LINK_CALLBACK_INFO_MESSAGE_ERROR:Ljava/lang/String; = "CheckError"

.field public static final CONNECT_LINK_CALLBACK_INFO_MESSAGE_SUCCESS:Ljava/lang/String; = "CheckOK"

.field public static final CONNECT_LINK_CALLBACK_INFO_SUCCESS:Ljava/lang/String; = "Success"

.field public static final CONNECT_LINK_CALLBACK_INFO_TIMEOUT:Ljava/lang/String; = "Timeout"

.field public static final CheckError:I = 0x4

.field public static final CheckOk:I = 0x5

.field public static final Disconnected:I = 0x1

.field public static final Failed:I = 0x3

.field public static final Success:I = 0x0

.field public static final Timeout:I = 0x2


# virtual methods
.method public abstract onAirCheckError()V
.end method

.method public abstract onAirCheckOk()V
.end method

.method public abstract onAirDisconnect()V
.end method

.method public abstract onConnectAirFailed()V
.end method

.method public abstract onConnectAirSuccess()V
.end method

.method public abstract onConnectAirTimeOut()V
.end method
