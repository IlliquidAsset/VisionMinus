.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setDelayCaptureSuccess()V
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

    .line 3106
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 3109
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    const/4 v1, 0x5

    iput v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->captureMode:I

    .line 3110
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_FuncGuide_13:I

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$502(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3111
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 3113
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3114
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3115
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v4, Lcom/powervision/handheld/R$string;->AP03_DV_FuncGuide_13:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3116
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3117
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    move-result-object v0

    const/16 v4, 0x15

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3118
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    sget v4, Lcom/powervision/handheld/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v0, v4}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 3119
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3120
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3121
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3502(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 3122
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3602(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 3123
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 3125
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/camera/views/CameraNewSettingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3126
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/camera/views/CameraNewSettingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    :cond_0
    return-void
.end method
