.class Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;
.super Ljava/lang/Object;
.source "CameraImageSettingFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_3

    if-nez p4, :cond_1

    .line 165
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)I

    move-result p1

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;->setShootingContinuousMode(I)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;->setShootingContinuous3Mode()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)I

    move-result p1

    if-nez p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;->setShootingContinuousMode(I)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;->setShootingContinuous5Mode()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
