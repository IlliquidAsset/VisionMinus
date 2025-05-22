.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doFirmwareUpgrade(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

.field final synthetic val$mZipPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Ljava/lang/String;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput-object p2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->val$mZipPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 806
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$600(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)I

    move-result v0

    const/16 v1, 0x64

    const/16 v2, 0x1e

    const-string v3, ""

    const-string v4, "get Barrery Failed"

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-string v8, "lzqFirm"

    if-nez v0, :cond_7

    .line 807
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    const/high16 v9, -0x40800000    # -1.0f

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 809
    :cond_0
    sget v0, Lcom/powervision/natives/JniRemoteNative;->ele:I

    if-ge v0, v2, :cond_2

    .line 810
    sget v0, Lcom/powervision/natives/JniRemoteNative;->ele:I

    if-eq v0, v6, :cond_1

    sget v0, Lcom/powervision/natives/JniAp03Native;->ele:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_1

    .line 812
    sget v0, Lcom/powervision/natives/JniAp03Native;->ele:F

    float-to-int v0, v0

    sget v1, Lcom/powervision/natives/JniRemoteNative;->ele:I

    invoke-static {v0, v1, v5}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->newInstance(III)Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;

    move-result-object v0

    .line 813
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 814
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->setOnCloseListener(Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;)V

    goto :goto_0

    .line 816
    :cond_1
    invoke-static {v4}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0, v7}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V

    :goto_0
    return-void

    .line 823
    :cond_2
    sget v0, Lcom/powervision/natives/JniAp03Native;->ele:F

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const-string v0, "inwhere: 111111"

    .line 824
    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    sget v0, Lcom/powervision/natives/JniAp03Native;->ele:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_3

    .line 827
    sget v0, Lcom/powervision/natives/JniAp03Native;->ele:F

    float-to-int v0, v0

    sget v1, Lcom/powervision/natives/JniRemoteNative;->ele:I

    .line 828
    invoke-static {v0, v1, v7}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->newInstance(III)Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 830
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->setOnCloseListener(Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;)V

    goto :goto_1

    .line 832
    :cond_3
    invoke-static {v4}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0, v7}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V

    :goto_1
    return-void

    .line 838
    :cond_4
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isDroneConnectStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u5347\u7ea7\u63a5\u53e3\u4e4b\u524d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->val$mZipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528\u5347\u7ea7\u63a5\u53e3\u4e4b\u524d needAP03_DataSendStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needAP03_DataSendStart:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needAP03_DataSendStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zip\u5b58\u5728\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->val$mZipPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$700(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->val$mZipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->integrationUpgrade(Ljava/lang/String;)I

    move-result v0

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528\u5347\u7ea7\u63a5\u53e3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v6, :cond_5

    const-string v0, "SDK error"

    .line 847
    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0, v7}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V

    return-void

    .line 852
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 854
    :cond_6
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    sget v1, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_26:I

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0, v7}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V

    goto/16 :goto_4

    .line 860
    :cond_7
    sget v0, Lcom/powervision/natives/JniRemoteNative;->ele:I

    if-ge v0, v2, :cond_9

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isBootloader()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "MCU\u56fa\u4ef6\u5347\u7ea7 \u4e3a\u6ee1\u8db3\u6761\u4ef6:"

    .line 861
    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    sget v0, Lcom/powervision/natives/JniRemoteNative;->ele:I

    if-eq v0, v6, :cond_8

    .line 863
    sget v0, Lcom/powervision/natives/JniAp03Native;->ele:F

    float-to-int v0, v0

    sget v1, Lcom/powervision/natives/JniRemoteNative;->ele:I

    const/4 v2, 0x2

    .line 864
    invoke-static {v0, v1, v2}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->newInstance(III)Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment;->setOnCloseListener(Lcn/powervision/upgrade/fragment/FirmwareUpgradeLowPowerFragment$OnCloseListener;)V

    goto :goto_2

    .line 868
    :cond_8
    invoke-static {v4}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0, v7}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V

    :goto_2
    return-void

    .line 875
    :cond_9
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareMcu_LocalWitchDevice()Z

    move-result v2

    invoke-static {v0, v2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$802(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)Z

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMcuNeedUpgrade\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$800(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareDl01_LocalWithDevice()Z

    move-result v2

    invoke-static {v0, v2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$902(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)Z

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDL01NeedUpgrade\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$900(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$800(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 882
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0, v7}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1002(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)Z

    .line 883
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput v7, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->current_Remote:I

    .line 885
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 886
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$700(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0xf

    const-string v2, "DOWN"

    invoke-virtual {v0, v1, v2, v5}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    move-result v0

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGetOperation res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v0, " DL01\u6ca1\u6709\u8fde\u63a5\u6210\u529f \u65e0\u6cd5\u5347\u7ea7MCU "

    .line 889
    invoke-static {v8, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_3
    if-ne v0, v6, :cond_c

    .line 892
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0, v7}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V

    goto :goto_4

    .line 895
    :cond_b
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$900(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 896
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput v5, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->current_Remote:I

    .line 897
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$8;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1100(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    :cond_c
    :goto_4
    return-void
.end method
