.class public interface abstract Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpgradeListener"
.end annotation


# virtual methods
.method public abstract ap03Connected()V
.end method

.method public abstract ap03Disconnected()V
.end method

.method public abstract canNotUpgradeByArmStatus()V
.end method

.method public abstract canUpgradeByArmStatus()V
.end method

.method public abstract downloadFailed()V
.end method

.method public abstract hideDl01Update()V
.end method

.method public abstract hideDownLoad()V
.end method

.method public abstract hideLoading()V
.end method

.method public abstract hideMcuUpdate()V
.end method

.method public abstract hidebodyupdate()V
.end method

.method public abstract isBootLoader()V
.end method

.method public abstract isNotBootLoader()V
.end method

.method public abstract notify_state()V
.end method

.method public abstract openTheInterNet()V
.end method

.method public abstract reset()V
.end method

.method public abstract showBodyForceUpdate()V
.end method

.method public abstract showBodyUpdate()V
.end method

.method public abstract showDl01ForceUpdate()V
.end method

.method public abstract showDl01Update()V
.end method

.method public abstract showDownloadApp()V
.end method

.method public abstract showFirmwareDownLoad()V
.end method

.method public abstract showFirmwareForceDownLoad()V
.end method

.method public abstract showForceApp()V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showMcuForceUpdate()V
.end method

.method public abstract showMcuUpdate()V
.end method
