.class public Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CameraBasicSettingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    .line 23
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_basic_iso_values:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipCameraBasicIsoValue\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoValue:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_basic_iso:I

    const-class v1, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const-string v2, "field \'shipCameraBasicIsoHorizontalView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    .line 25
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_basic_ev_values:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipCameraBasicEvValue\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvValue:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_basic_ev:I

    const-class v1, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const-string v2, "field \'shipCameraBasicEvHorizontalView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    .line 27
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_basic_wb_values:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipCameraBasicWbValue\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbValue:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_basic_wb:I

    const-class v1, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const-string v2, "field \'shipCameraBasicWbHorizontalView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_basic_mm_values:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipCameraBasicMmValue\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmValue:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_basic_mm:I

    const-class v1, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const-string v2, "field \'shipCameraBasicMmHorizontalView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_reversal_switch:I

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "field \'shipCameraReversalSwitch\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraReversalSwitch:Landroid/widget/ToggleButton;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_shake_switch:I

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "field \'shipCameraShakeSwitch\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraShakeSwitch:Landroid/widget/ToggleButton;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_basic_ldc_values:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipCameraBasicLdcValues\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicLdcValues:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_basic_ldc:I

    const-class v1, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    const-string v2, "field \'shipCamaraBasicLdc\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    .line 44
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoValue:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicIsoHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvValue:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicEvHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbValue:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicWbHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    .line 50
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmValue:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicMmHorizontalView:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    .line 52
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraReversalSwitch:Landroid/widget/ToggleButton;

    .line 53
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraShakeSwitch:Landroid/widget/ToggleButton;

    .line 54
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraBasicLdcValues:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCamaraBasicLdc:Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
