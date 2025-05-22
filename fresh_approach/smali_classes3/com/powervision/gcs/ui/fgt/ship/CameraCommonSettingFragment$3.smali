.class Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$3;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "CameraCommonSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;
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

    .line 249
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public formatSDCard(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 252
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->formatSDCard(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 253
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_36:I

    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 255
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_37:I

    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 259
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->dismissDialog()V

    return-void
.end method

.method public resetCamera(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->resetCamera(ILcom/powervision/localhttp/entity/BaseModel;)V

    const-string v0, "CameraCommonSettingFrag"

    const-string v1, "resetCamera: "

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 282
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/event/CameraResetEvent;

    invoke-direct {p2}, Lcom/powervision/gcs/event/CameraResetEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/16 p1, 0x14

    .line 284
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setPvw4CameraLastRecordMode(I)V

    const/4 p1, 0x0

    .line 285
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setPvw4CameraLastCameraMode(I)V

    .line 286
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_39:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    goto :goto_0

    .line 288
    :cond_0
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_40:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 290
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->dismissDialog()V

    return-void
.end method
