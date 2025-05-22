.class Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$1;
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

    .line 139
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;->setImageSize(II)V

    .line 143
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "items"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, p4

    .line 144
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p2}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string p3, "value"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    return p1
.end method
