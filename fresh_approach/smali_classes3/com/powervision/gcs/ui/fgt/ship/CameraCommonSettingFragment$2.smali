.class Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$2;
.super Ljava/lang/Object;
.source "CameraCommonSettingFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->processLogic(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->shipCamaraStyleListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 118
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    iget-object v2, v2, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->shipCamaraStyleListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
