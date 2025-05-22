.class public Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;
.super Ljava/lang/Object;
.source "ShipCameraSettingView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

.field private viewfe8:Landroid/view/View;

.field private viewfef:Landroid/view/View;

.field private viewff4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    .line 36
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_base_btn:I

    const-string v1, "field \'shipCameraBaseBtn\' and method \'ship_camera_base_btn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    sget v1, Lcom/powervision/gcs/R$id;->ship_camera_base_btn:I

    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'shipCameraBaseBtn\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraBaseBtn:Landroid/widget/RadioButton;

    .line 38
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->viewfe8:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_video_btn:I

    const-string v1, "field \'shipCameraVideoBtn\' and method \'ship_camera_video_btn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    sget v1, Lcom/powervision/gcs/R$id;->ship_camera_video_btn:I

    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'shipCameraVideoBtn\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraVideoBtn:Landroid/widget/RadioButton;

    .line 47
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->viewff4:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$2;-><init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_common_btn:I

    const-string v1, "field \'shipCameraCommonBtn\' and method \'ship_camera_common_btn\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    sget v1, Lcom/powervision/gcs/R$id;->ship_camera_common_btn:I

    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'shipCameraCommonBtn\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraCommonBtn:Landroid/widget/RadioButton;

    .line 56
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->viewfef:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding$3;-><init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_menu:I

    const-class v1, Landroid/widget/RadioGroup;

    const-string v2, "field \'shipCameraMenu\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraMenu:Landroid/widget/RadioGroup;

    .line 64
    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_detail:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'shipCameraDetail\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraDetail:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    .line 74
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraBaseBtn:Landroid/widget/RadioButton;

    .line 75
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraVideoBtn:Landroid/widget/RadioButton;

    .line 76
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraCommonBtn:Landroid/widget/RadioButton;

    .line 77
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraMenu:Landroid/widget/RadioGroup;

    .line 78
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraDetail:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->viewfe8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->viewfe8:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->viewff4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->viewff4:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->viewfef:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView_ViewBinding;->viewfef:Landroid/view/View;

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
