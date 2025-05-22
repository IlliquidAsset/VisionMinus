.class Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipCameraSettingView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$1;->val$target:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$1;->val$target:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->ship_camera_base_btn()V

    return-void
.end method
