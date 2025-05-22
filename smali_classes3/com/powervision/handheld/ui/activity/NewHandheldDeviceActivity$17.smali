.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->multiShotsFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 2490
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2494
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2495
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2496
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 2497
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 2498
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V

    goto :goto_0

    .line 2505
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 2506
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2507
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2508
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2509
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3502(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 2510
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3602(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 2511
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3702(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 2512
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setEvOnly(Z)V

    .line 2513
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/camera/views/CameraNewSettingView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2514
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/camera/views/CameraNewSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/camera/views/CameraNewSettingView;->setCameraSettingEnable(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
