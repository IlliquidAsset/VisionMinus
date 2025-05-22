.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->updatePhotoNum(I)V
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

    .line 3171
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updatePhotoNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->val$num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delayes"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->val$num:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    .line 3176
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 3177
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1602(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)I

    return-void

    .line 3180
    :cond_0
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v3, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1602(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)I

    .line 3181
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getRemainingCapacity()V

    .line 3182
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->val$num:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3183
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->val$num:I

    div-int/lit8 v3, v3, 0x1e

    invoke-static {v3}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3184
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->val$num:I

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v3, v3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int/lit8 v3, v3, 0x1e

    if-ne v0, v3, :cond_1

    .line 3185
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v1, v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v3, v3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int v1, v1, v3

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v3, v3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    mul-int v1, v1, v3

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v3, v3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->val$num:I

    mul-int v3, v3, v4

    sub-int/2addr v1, v3

    invoke-static {v1}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3186
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->createLapseFile()V

    .line 3187
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    .line 3188
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 3190
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v2, v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v3, v3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int v2, v2, v3

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v3, v3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    mul-int v2, v2, v3

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v3, v3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->val$num:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3192
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3193
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V

    :cond_2
    :goto_0
    return-void
.end method
