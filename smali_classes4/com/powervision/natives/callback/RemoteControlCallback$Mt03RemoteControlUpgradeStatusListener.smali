.class public interface abstract Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlUpgradeStatusListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mt03RemoteControlUpgradeStatusListener"
.end annotation


# static fields
.field public static final PVSDK_MT03_REMOTE_CONTROL_UPGRADE_STATUS_CHECK_FAIL:I = 0x5

.field public static final PVSDK_MT03_REMOTE_CONTROL_UPGRADE_STATUS_CHECK_OK:I = 0x4

.field public static final PVSDK_MT03_REMOTE_CONTROL_UPGRADE_STATUS_CONNECT_FAIL:I = 0x1

.field public static final PVSDK_MT03_REMOTE_CONTROL_UPGRADE_STATUS_CONNECT_OK:I = 0x0

.field public static final PVSDK_MT03_REMOTE_CONTROL_UPGRADE_STATUS_PUT_FAIL_FAIL:I = 0x3

.field public static final PVSDK_MT03_REMOTE_CONTROL_UPGRADE_STATUS_PUT_FIAL_OK:I = 0x2


# virtual methods
.method public abstract mt03RemoteControlUpgradeStatus(I)V
.end method
