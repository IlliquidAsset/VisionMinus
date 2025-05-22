.class Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;
.super Ljava/lang/Object;
.source "CameraBasicSettingFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V
    .locals 3

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollingFinished ev: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraBasicSettingFragm"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->access$500(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)I

    move-result v0

    invoke-virtual {p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->access$502(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;I)I

    .line 521
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 524
    invoke-virtual {p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getCurrentItem()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 525
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$CameraBasicSettingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onScrollingStarted(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V
    .locals 1

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollingStarted ev: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->access$500(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraBasicSettingFragm"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
