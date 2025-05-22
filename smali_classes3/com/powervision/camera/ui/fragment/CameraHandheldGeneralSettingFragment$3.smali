.class Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;
.super Ljava/lang/Object;
.source "CameraHandheldGeneralSettingFragment.java"

# interfaces
.implements Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$ShowDialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$showFormatEmmc$2$CameraHandheldGeneralSettingFragment$3(Landroid/view/View;)V
    .locals 1

    const-string p1, "set_camera"

    const-string v0, " formatStorageDevice =1     emmc...."

    .line 221
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->formatStorageDevice(I)V

    return-void
.end method

.method public synthetic lambda$showFormatSdCard$1$CameraHandheldGeneralSettingFragment$3(Landroid/view/View;)V
    .locals 1

    const-string p1, "set_camera"

    const-string v0, "   formatStorageDevice =0  sd....  "

    .line 205
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->formatStorageDevice(I)V

    return-void
.end method

.method public synthetic lambda$showResetCamera$0$CameraHandheldGeneralSettingFragment$3(Landroid/view/View;)V
    .locals 1

    .line 187
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->resetCameraParam(I)V

    const-string p1, "set_camera"

    const-string v0, "   click  resetCameraParam   ----close."

    .line 189
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showFormatEmmc()V
    .locals 8

    .line 212
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_57:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_62:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/lewis/camera/R$string;->AP03_Activation_6:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/lewis/camera/R$string;->AP03_Activation_9:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$3$O97nEm8W1ThbxIDNSX5_AkQyy7M;

    invoke-direct {v6, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$3$O97nEm8W1ThbxIDNSX5_AkQyy7M;-><init>(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;)V

    const/4 v7, 0x0

    .line 216
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public showFormatSdCard()V
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_57:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/lewis/camera/R$string;->AP03_CameraSetting_60:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/lewis/camera/R$string;->AP03_Activation_6:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/lewis/camera/R$string;->AP03_Activation_9:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$3$GFVby9V3sbBmj8TtCFFQ1V2-74k;

    invoke-direct {v6, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$3$GFVby9V3sbBmj8TtCFFQ1V2-74k;-><init>(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;)V

    const/4 v7, 0x0

    .line 200
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public showResetCamera()V
    .locals 8

    .line 177
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_57:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/lewis/camera/R$string;->AP03_CameraSetting_58:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/lewis/camera/R$string;->AP03_Activation_6:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/lewis/camera/R$string;->AP03_Activation_9:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$3$GQYJtkUjg0JMEUlURVw13yT1I2g;

    invoke-direct {v6, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$3$GQYJtkUjg0JMEUlURVw13yT1I2g;-><init>(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$3;)V

    const/4 v7, 0x0

    .line 181
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
