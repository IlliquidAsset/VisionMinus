.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startDelayCapture()V
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

    .line 3142
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3145
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1402(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z

    .line 3146
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V

    .line 3149
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 3150
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 3152
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 3153
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3154
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Landroid/view/View;)V

    .line 3155
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3156
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3157
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v2, v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int/lit8 v2, v2, 0x1e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3158
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$5900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v1, v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v2, v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int v1, v1, v2

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v2, v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    mul-int v1, v1, v2

    invoke-static {v1}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3159
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$mipmap;->icon_delay_photoing:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 3160
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/AnimateImageView;->clearAnimation()V

    .line 3161
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$3300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/AnimateImageView;->setVisibility(I)V

    return-void
.end method
