.class public interface abstract Lcom/powervision/powersdk/callback/RemoteControlCallback$Dl01BSConnectListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dl01BSConnectListener"
.end annotation


# static fields
.field public static final PVSDK_DL01_BS_CONNECT_STATUS_CONNECT_FAIL:I = 0x1

.field public static final PVSDK_DL01_BS_CONNECT_STATUS_CONNECT_OK:I = 0x0

.field public static final PVSDK_DL01_BS_CONNECT_STATUS_DISCONNECT:I = 0x5

.field public static final PVSDK_DL01_BS_CONNECT_STATUS_LINK_CLOSE:I = 0x4

.field public static final PVSDK_DL01_BS_CONNECT_STATUS_LINK_OK:I = 0x2


# virtual methods
.method public abstract dl01BSConnect(I)V
.end method
