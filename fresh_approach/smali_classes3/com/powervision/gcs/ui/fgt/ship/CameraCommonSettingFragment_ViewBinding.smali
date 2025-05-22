.class public Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CameraCommonSettingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;Landroid/view/View;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    .line 21
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_common_listview:I

    const-class v1, Landroid/widget/ExpandableListView;

    const-string v2, "field \'shipCamaraStyleListview\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->shipCamaraStyleListview:Landroid/widget/ExpandableListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    .line 31
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->shipCamaraStyleListview:Landroid/widget/ExpandableListView;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
