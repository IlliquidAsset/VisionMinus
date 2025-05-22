.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;)V
    .locals 0

    .line 3838
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3841
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3844
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5104(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    .line 3845
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v0

    .line 3846
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    iget-boolean v1, v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->val$oneKeyMode:Z

    if-eqz v1, :cond_1

    .line 3847
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    iget-object v1, v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3849
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 3850
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    iget-object v1, v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3851
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    iget-object v1, v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3853
    :cond_2
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    iget-object v1, v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3856
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    recordingTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    iget-object v2, v2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  formatTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "record_time"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
