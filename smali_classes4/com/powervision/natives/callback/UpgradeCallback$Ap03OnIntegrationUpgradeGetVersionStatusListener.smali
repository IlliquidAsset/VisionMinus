.class public interface abstract Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;
.super Ljava/lang/Object;
.source "UpgradeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/UpgradeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03OnIntegrationUpgradeGetVersionStatusListener"
.end annotation


# static fields
.field public static final INTEGRATION_UPGRADE_GET_VERSION_SUCCESS_:I = 0x0

.field public static final INTEGRATION_UPGRADE_GET_VERSION_TIMEOUT_:I = 0x1


# virtual methods
.method public abstract onIntegrationUpgradeGetVersionSuccess(Ljava/lang/String;)V
.end method

.method public abstract setIntegrationUpgradeGetVersionTimeout()V
.end method
