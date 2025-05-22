.class public interface abstract Lcom/powervision/natives/callback/RemoteControlCallback$FirmwareUpgradeListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FirmwareUpgradeListener"
.end annotation


# static fields
.field public static final PVSDK_FIRMWAREUPGRADE_CALLBACK_STATUS_FAILED:I = -0x1

.field public static final PVSDK_FIRMWAREUPGRADE_CALLBACK_STATUS_SUCCESS:I = 0x0

.field public static final PVSDK_FIRMWAREUPGRADE_CALLBACK_STATUS_UPGRADING:I = 0x1


# virtual methods
.method public abstract onFirmwareUpgradeFailed()V
.end method

.method public abstract onFirmwareUpgradeProcessing(I)V
.end method

.method public abstract onFirmwareUpgradeSuccess()V
.end method
