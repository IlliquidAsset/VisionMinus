.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V
    .locals 0

    .line 1161
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ap03Connected()V
    .locals 0

    return-void
.end method

.method public ap03Disconnected()V
    .locals 0

    return-void
.end method

.method public canNotUpgradeByArmStatus()V
    .locals 0

    return-void
.end method

.method public canUpgradeByArmStatus()V
    .locals 0

    return-void
.end method

.method public downloadFailed()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| downloadFailed downloadFailed downloadFailed  "

    .line 1256
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hideDl01Update()V
    .locals 0

    return-void
.end method

.method public hideDownLoad()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| hideDownLoad hideDownLoad hideDownLoad  "

    .line 1166
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->removeUpgradListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| hideLoading hideLoading hideLoading  "

    .line 1250
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hideMcuUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| hideMcuUpdate hideMcuUpdate hideMcuUpdate  "

    .line 1244
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hidebodyupdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| hidebodyupdatehidebodyupdatehidebodyupdate  "

    .line 1262
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isBootLoader()V
    .locals 0

    return-void
.end method

.method public isNotBootLoader()V
    .locals 0

    return-void
.end method

.method public notify_state()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " ||||  notify_state  notify_state notify_state   "

    .line 1274
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->notifyRebot()V

    .line 1278
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->removeUpgradListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    .line 1279
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1700(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    return-void
.end method

.method public openTheInterNet()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| openTheInterNet openTheInterNet openTheInterNet  "

    .line 1172
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->removeUpgradListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " ||||  reset reset reset reset   "

    .line 1268
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showBodyForceUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| showBodyForceUpdate showBodyForceUpdate showBodyForceUpdate  "

    .line 1304
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->notifyRebot()V

    .line 1307
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->removeUpgradListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    .line 1309
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V

    return-void
.end method

.method public showBodyUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| showBodyUpdate showBodyUpdate showBodyUpdate  "

    .line 1315
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->notifyRebot()V

    .line 1317
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->removeUpgradListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    .line 1319
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V

    return-void
.end method

.method public showDl01ForceUpdate()V
    .locals 0

    return-void
.end method

.method public showDl01Update()V
    .locals 0

    return-void
.end method

.method public showDownloadApp()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| showDownloadApp showDownloadApp showDownloadApp  "

    .line 1212
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showFirmwareDownLoad()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| showFirmwareDownLoad showFirmwareDownLoad showFirmwareDownLoad  "

    .line 1188
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$13;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v1, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updatelistener:Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->removeUpgradListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    return-void
.end method

.method public showFirmwareForceDownLoad()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| showFirmwareForceDownLoad showFirmwareForceDownLoad showFirmwareForceDownLoad  "

    .line 1194
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showForceApp()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| showForceApp showForceApp showForceApp  "

    .line 1206
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| showLoading showLoading showLoading  "

    .line 1200
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showMcuForceUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| showMcuForceUpdate showMcuForceUpdate showMcuForceUpdate  "

    .line 1238
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showMcuUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " |||| showMcuForceUpdate showMcuForceUpdate showMcuForceUpdate  "

    .line 1233
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
