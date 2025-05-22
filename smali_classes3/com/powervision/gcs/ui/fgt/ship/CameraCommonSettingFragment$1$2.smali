.class Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$2;
.super Ljava/lang/Object;
.source "CameraCommonSettingFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/DialogUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;

.field final synthetic val$activity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$2;->this$1:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$2;->val$activity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$2;->val$activity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getShipCameraMenuView()Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_179:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$2;->this$1:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V

    .line 104
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$2;->this$1:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->showEmptyDialog(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
