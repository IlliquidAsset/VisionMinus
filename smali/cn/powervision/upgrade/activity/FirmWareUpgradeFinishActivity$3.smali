.class Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$3;
.super Ljava/lang/Object;
.source "FirmWareUpgradeFinishActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    iput p2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$3;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$3;->val$type:I

    if-nez p1, :cond_0

    .line 102
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDeviceFirmwareVersion()V

    .line 104
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xd1

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 105
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->finish()V

    return-void
.end method
