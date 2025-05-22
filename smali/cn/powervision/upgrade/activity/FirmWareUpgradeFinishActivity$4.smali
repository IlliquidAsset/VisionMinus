.class Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$4;
.super Ljava/lang/Object;
.source "FirmWareUpgradeFinishActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->initSuccess(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$4;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u5ef6\u65f65\u79d2\u540e \u8bf7\u6c42\u7248\u672c\u53f7"

    .line 130
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$4;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->hideloadingDialog()V

    .line 132
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDevVersion()V

    return-void
.end method
