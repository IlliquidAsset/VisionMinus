.class public interface abstract Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;
.super Ljava/lang/Object;
.source "PowerSDKCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/PowerSDKCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener"
.end annotation


# static fields
.field public static final INTEGRATION_UPGRADE_GET_UPGRADE_STATUS_FAILED:I = 0x2

.field public static final INTEGRATION_UPGRADE_GET_UPGRADE_STATUS_IDLE:I = 0x0

.field public static final INTEGRATION_UPGRADE_GET_UPGRADE_STATUS_TIMEOUT:I = 0x3

.field public static final INTEGRATION_UPGRADE_GET_UPGRADE_STATUS_UPGRADING:I = 0x1


# virtual methods
.method public abstract setIntegrationUpgradeGetUpgradeStatusFailed()V
.end method

.method public abstract setIntegrationUpgradeGetUpgradeStatusIdle()V
.end method

.method public abstract setIntegrationUpgradeGetUpgradeStatusTimeout()V
.end method

.method public abstract setIntegrationUpgradeGetUpgradeStatusUpgrading()V
.end method
