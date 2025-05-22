.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->storageFull(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V
    .locals 0

    .line 3263
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3266
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 3267
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;->val$type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3268
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 3269
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    .line 3270
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    goto :goto_0

    .line 3272
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
