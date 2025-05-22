.class Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;
.super Ljava/lang/Object;
.source "CameraCommonSettingFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->processLogic(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 7

    .line 70
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 71
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Check_7:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return p2

    :cond_0
    const-string p1, "miaojx"

    if-nez p3, :cond_1

    .line 75
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "---groupPosition--------"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/powervision/gcs/utils/show/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 78
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    sget p3, Lcom/powervision/gcs/R$string;->PVW4_Map_20:I

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    sget p3, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_35:I

    .line 79
    invoke-virtual {p1, p3}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    sget p3, Lcom/powervision/gcs/R$string;->OK:I

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    sget p3, Lcom/powervision/gcs/R$string;->AP03_AI_2:I

    .line 80
    invoke-virtual {p1, p3}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$1;

    invoke-direct {v5, p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    const/4 v6, 0x0

    .line 78
    invoke-static/range {v0 .. v6}, Lcom/powervision/gcs/view/DialogUtils;->createNewUiDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    if-ne p3, p4, :cond_2

    .line 92
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "---groupPosition--111------"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/powervision/gcs/utils/show/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 94
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    sget p3, Lcom/powervision/gcs/R$string;->PVW4_Map_20:I

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    sget p3, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_38:I

    .line 95
    invoke-virtual {p1, p3}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    sget p3, Lcom/powervision/gcs/R$string;->OK:I

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    sget p3, Lcom/powervision/gcs/R$string;->AP03_AI_2:I

    .line 96
    invoke-virtual {p1, p3}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$2;

    invoke-direct {v5, p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    const/4 v6, 0x0

    .line 94
    invoke-static/range {v0 .. v6}, Lcom/powervision/gcs/view/DialogUtils;->createNewUiDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_2
    :goto_0
    return p2
.end method
