.class Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$2;
.super Ljava/lang/Object;
.source "CameraImageSettingFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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

    .line 150
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 154
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p2}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    move-result-object p2

    invoke-interface {p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;->setSingleShootingMode()V

    .line 155
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p2, p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$302(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;I)I

    :cond_0
    return p1
.end method
