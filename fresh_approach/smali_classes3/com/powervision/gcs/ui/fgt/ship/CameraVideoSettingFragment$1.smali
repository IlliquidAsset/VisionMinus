.class Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment$1;
.super Ljava/lang/Object;
.source "CameraVideoSettingFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->processLogic(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2

    const/4 v0, 0x0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    invoke-static {v1}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;)Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eq p1, v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    iget-object v1, v1, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
