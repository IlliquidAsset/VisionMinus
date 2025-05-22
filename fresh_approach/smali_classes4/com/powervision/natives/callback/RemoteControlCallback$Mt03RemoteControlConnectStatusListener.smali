.class public interface abstract Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlConnectStatusListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mt03RemoteControlConnectStatusListener"
.end annotation


# static fields
.field public static final PVSDK_MT03_REMOTE_CONTROL_CONNECT_STATUS_CONNECT_FAIL:I = 0x1

.field public static final PVSDK_MT03_REMOTE_CONTROL_CONNECT_STATUS_CONNECT_OK:I = 0x0

.field public static final PVSDK_MT03_REMOTE_CONTROL_CONNECT_STATUS_DIS_CONNECT:I = 0x5

.field public static final PVSDK_MT03_REMOTE_CONTROL_CONNECT_STATUS_LINK_OK:I = 0x2

.field public static final PVSDK_MT03_REMOTE_CONTROL_CONNECT_STATUS_LINK_TIME_OUT:I = 0x6

.field public static final PVSDK_MT03_REMOTE_CONTROL_CONNECT_STATUS_RECOVERY:I = 0x4

.field public static final PVSDK_MT03_REMOTE_CONTROL_CONNECT_STATUS_TIME_OUT:I = 0x3


# virtual methods
.method public abstract mt03RemoteControlConnectStatus(I)V
.end method
