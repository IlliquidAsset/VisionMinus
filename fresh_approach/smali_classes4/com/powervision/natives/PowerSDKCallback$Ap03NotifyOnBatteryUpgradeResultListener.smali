.class public interface abstract Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;
.super Ljava/lang/Object;
.source "PowerSDKCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/PowerSDKCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnBatteryUpgradeResultListener"
.end annotation


# static fields
.field public static final BATTERY_UPGRADE_RESULT_CODE_AUTO_FAILED:I = 0x2

.field public static final BATTERY_UPGRADE_RESULT_CODE_AUTO_INPROGRESS:I = 0x1

.field public static final BATTERY_UPGRADE_RESULT_CODE_AUTO_SUCCESS:I = 0x0

.field public static final BATTERY_UPGRADE_RESULT_CODE_QUERY_TIMEOUT:I = 0x3

.field public static final BATTERY_UPGRADE_RESULT_CODE_TRIGGER_FAILED:I = 0x5

.field public static final BATTERY_UPGRADE_RESULT_CODE_TRIGGER_PERCENT:I = 0x6

.field public static final BATTERY_UPGRADE_RESULT_CODE_TRIGGER_SUCCESS:I = 0x4

.field public static final BATTERY_UPGRADE_RESULT_CODE_TRIGGER_TIMEOUT:I = 0x7


# virtual methods
.method public abstract setBatteryUpgradeResultCodeAutoFailed(I)V
.end method

.method public abstract setBatteryUpgradeResultCodeAutoInprogress(I)V
.end method

.method public abstract setBatteryUpgradeResultCodeAutoSuccess(I)V
.end method

.method public abstract setBatteryUpgradeResultCodeQueryTimeout(I)V
.end method

.method public abstract setBatteryUpgradeResultCodeTriggerFailed(I)V
.end method

.method public abstract setBatteryUpgradeResultCodeTriggerPercent(I)V
.end method

.method public abstract setBatteryUpgradeResultCodeTriggerSuccess(I)V
.end method

.method public abstract setBatteryUpgradeResultCodeTriggerTimeout(I)V
.end method
