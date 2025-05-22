.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setAEBMultipleShotsSuccess(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V
    .locals 0

    .line 2580
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->val$num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2584
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->val$num:I

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    .line 2586
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1, v5}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1402(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 2588
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2589
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2590
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v1

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 2591
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 2593
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2594
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V

    goto/16 :goto_0

    .line 2596
    :cond_0
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2597
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2598
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2600
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/powervision/base/views/AnimateImageView;->setVisibility(I)V

    .line 2601
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1, v5}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V

    .line 2602
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 2603
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2604
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2605
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2606
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3502(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 2607
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3602(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 2608
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1, v5}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3702(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 2609
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/powervision/camera/camera/CameraManager;->setEvOnly(Z)V

    .line 2610
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/camera/views/CameraNewSettingView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2611
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/camera/views/CameraNewSettingView;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/powervision/camera/views/CameraNewSettingView;->setCameraSettingEnable(ZZ)V

    goto :goto_0

    .line 2616
    :cond_1
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/views/AnimateImageView;->getResId()I

    move-result v1

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    if-eq v1, v2, :cond_2

    .line 2617
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v1

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    const/4 v6, -0x1

    sget v7, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(IZII)V

    .line 2619
    :cond_2
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2620
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2621
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1, v5}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V

    .line 2622
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2624
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$2700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
