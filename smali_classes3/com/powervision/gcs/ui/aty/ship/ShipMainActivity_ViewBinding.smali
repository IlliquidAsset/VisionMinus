.class public Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ShipMainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field private view1012:Landroid/view/View;

.field private view101c:Landroid/view/View;

.field private view1026:Landroid/view/View;

.field private view1027:Landroid/view/View;

.field private view1028:Landroid/view/View;

.field private view1029:Landroid/view/View;

.field private view102b:Landroid/view/View;

.field private view102c:Landroid/view/View;

.field private view102f:Landroid/view/View;

.field private view1031:Landroid/view/View;

.field private view1033:Landroid/view/View;

.field private view1035:Landroid/view/View;

.field private view1037:Landroid/view/View;

.field private view1141:Landroid/view/View;

.field private view1205:Landroid/view/View;

.field private viewca6:Landroid/view/View;

.field private viewda6:Landroid/view/View;

.field private viewe08:Landroid/view/View;

.field private viewe09:Landroid/view/View;

.field private viewfca:Landroid/view/View;

.field private viewfcf:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 1

    .line 81
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/View;)V
    .locals 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 89
    sget v0, Lcom/powervision/gcs/R$id;->cycle_map_view:I

    const-class v1, Lcom/powervision/gcs/view/CustomCycleLayout;

    const-string v2, "field \'mapCycleLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/CustomCycleLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    .line 90
    sget v0, Lcom/powervision/gcs/R$id;->cycle_sonar_view:I

    const-class v1, Lcom/powervision/gcs/view/CustomCycleLayout;

    const-string v2, "field \'sonarCycleLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/CustomCycleLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    .line 91
    sget v0, Lcom/powervision/gcs/R$id;->gaode_mapview:I

    const-class v1, Lcom/powervision/condition/view/NationMapView;

    const-string v2, "field \'mapView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/condition/view/NationMapView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    .line 92
    sget v0, Lcom/powervision/gcs/R$id;->video_stream_view:I

    const-class v1, Landroid/view/TextureView;

    const-string v2, "field \'mtextureview\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mtextureview:Landroid/view/TextureView;

    .line 93
    sget v0, Lcom/powervision/gcs/R$id;->layout_direction:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'layoutDirection\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layoutDirection:Landroid/widget/RelativeLayout;

    .line 94
    sget v0, Lcom/powervision/gcs/R$id;->image_quick_north:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'mImageQuickNorth\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickNorth:Landroid/widget/ImageView;

    .line 95
    sget v0, Lcom/powervision/gcs/R$id;->image_shrink_video:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'mImageShrink\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageShrink:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcom/powervision/gcs/R$id;->view_holder:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'mLayoutHolder\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    .line 97
    sget v0, Lcom/powervision/gcs/R$id;->text_vs:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextVs\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextVs:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/powervision/gcs/R$id;->text_distance:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextDistance\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextDistance:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/powervision/gcs/R$id;->text_unit_speed:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextUnitSpeed\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextUnitSpeed:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/powervision/gcs/R$id;->text_unit_distance:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextUnitDis\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextUnitDis:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/powervision/gcs/R$id;->layout_vs:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'mLayoutVs\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutVs:Landroid/widget/RelativeLayout;

    .line 102
    sget v0, Lcom/powervision/gcs/R$id;->layout_dis:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'mLayoutDis\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutDis:Landroid/widget/RelativeLayout;

    .line 103
    sget v0, Lcom/powervision/gcs/R$id;->ship_cnu_view:I

    const-class v1, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;

    const-string v2, "field \'shipCNUView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipCNUView:Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;

    .line 104
    sget v0, Lcom/powervision/gcs/R$id;->ic_home_media:I

    const-string v1, "field \'mImageHomeMedia\' and method \'ic_home_media\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 105
    sget v1, Lcom/powervision/gcs/R$id;->ic_home_media:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageHomeMedia\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageHomeMedia:Landroid/widget/ImageView;

    .line 106
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewda6:Landroid/view/View;

    .line 107
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v0, Lcom/powervision/gcs/R$id;->ship_return_button:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipReturnBtn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipReturnBtn:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/powervision/gcs/R$id;->ship_rocker_left:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipRockerView;

    const-string v2, "field \'shipRockerLeft\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipRockerView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipRockerLeft:Lcom/powervision/gcs/view/ship/ShipRockerView;

    .line 115
    sget v0, Lcom/powervision/gcs/R$id;->ship_rocker_right:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipRockerView;

    const-string v2, "field \'shipRockerRight\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipRockerView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipRockerRight:Lcom/powervision/gcs/view/ship/ShipRockerView;

    .line 116
    sget v0, Lcom/powervision/gcs/R$id;->ship_lmh_view:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipLMHView;

    const-string v2, "field \'shipLmhView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipLMHView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipLmhView:Lcom/powervision/gcs/view/ship/ShipLMHView;

    .line 117
    sget v0, Lcom/powervision/gcs/R$id;->ship_light_view:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipLightView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipLightView:Landroid/widget/ImageView;

    .line 118
    sget v0, Lcom/powervision/gcs/R$id;->ship_back_boat:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'shipBackBoat\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipBackBoat:Landroid/widget/FrameLayout;

    .line 119
    sget v0, Lcom/powervision/gcs/R$id;->left_view_ll:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'leftViewLl\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->leftViewLl:Landroid/widget/LinearLayout;

    .line 120
    sget v0, Lcom/powervision/gcs/R$id;->ship_set_button:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipSetButton\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipSetButton:Landroid/widget/TextView;

    .line 121
    sget v0, Lcom/powervision/gcs/R$id;->ship_set_upgrade_point:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipSetUpgradePoint\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipSetUpgradePoint:Landroid/widget/TextView;

    .line 122
    sget v0, Lcom/powervision/gcs/R$id;->ship_set_layout:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'shipSetLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipSetLayout:Landroid/widget/FrameLayout;

    .line 123
    sget v0, Lcom/powervision/gcs/R$id;->gcs_underwater_layout:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'gcsUnderwaterLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->gcsUnderwaterLayout:Landroid/widget/RelativeLayout;

    .line 124
    sget v0, Lcom/powervision/gcs/R$id;->water_lock_button:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'waterLockButton\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->waterLockButton:Landroid/widget/FrameLayout;

    .line 125
    sget v0, Lcom/powervision/gcs/R$id;->water_lock_button_iv:I

    const-string v1, "field \'waterLockButtonIv\' and method \'water_lock_button_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 126
    sget v1, Lcom/powervision/gcs/R$id;->water_lock_button_iv:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'waterLockButtonIv\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->waterLockButtonIv:Landroid/widget/ImageView;

    .line 127
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1205:Landroid/view/View;

    .line 128
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v0, Lcom/powervision/gcs/R$id;->ship_lmh_values_text:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipLmhValuesText\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipLmhValuesText:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/powervision/gcs/R$id;->gesture_layout:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    const-string v2, "field \'shipGesture\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipGesture:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    .line 136
    sget v0, Lcom/powervision/gcs/R$id;->ship_lmh_name_text:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipLmhNameText\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipLmhNameText:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/powervision/gcs/R$id;->ship_map_direction:I

    const-string v1, "field \'direction\' and method \'ship_map_direction\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 138
    sget v1, Lcom/powervision/gcs/R$id;->ship_map_direction:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'direction\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->direction:Landroid/widget/ImageView;

    .line 139
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1026:Landroid/view/View;

    .line 140
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$3;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget v0, Lcom/powervision/gcs/R$id;->ship_iv_function_shrink:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    const-string v2, "field \'mShipShrinkView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mShipShrinkView:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    .line 147
    sget v0, Lcom/powervision/gcs/R$id;->ship_map_layer_switch:I

    const-string v1, "field \'layerSwitch\' and method \'ship_map_layer_switch\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 148
    sget v1, Lcom/powervision/gcs/R$id;->ship_map_layer_switch:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'layerSwitch\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layerSwitch:Landroid/widget/ImageView;

    .line 149
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1027:Landroid/view/View;

    .line 150
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$4;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v0, Lcom/powervision/gcs/R$id;->ship_map_remember_route:I

    const-string v1, "field \'rememberRoute\' and method \'ship_map_remember_route\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 157
    sget v1, Lcom/powervision/gcs/R$id;->ship_map_remember_route:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rememberRoute\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->rememberRoute:Landroid/widget/ImageView;

    .line 158
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1029:Landroid/view/View;

    .line 159
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$5;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v0, Lcom/powervision/gcs/R$id;->ship_map_location:I

    const-string v1, "field \'focusLocation\' and method \'ship_map_location\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 166
    sget v1, Lcom/powervision/gcs/R$id;->ship_map_location:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'focusLocation\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->focusLocation:Landroid/widget/ImageView;

    .line 167
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1028:Landroid/view/View;

    .line 168
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$6;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget v0, Lcom/powervision/gcs/R$id;->ship_add_insterest:I

    const-string v1, "field \'addInterest\' and method \'ship_add_interest\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 175
    sget v1, Lcom/powervision/gcs/R$id;->ship_add_insterest:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'addInterest\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->addInterest:Landroid/widget/ImageView;

    .line 176
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewfca:Landroid/view/View;

    .line 177
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$7;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget v0, Lcom/powervision/gcs/R$id;->ship_interest_list:I

    const-string v1, "field \'interestList\' and method \'ship_interest_list\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 184
    sget v1, Lcom/powervision/gcs/R$id;->ship_interest_list:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'interestList\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->interestList:Landroid/widget/ImageView;

    .line 185
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1012:Landroid/view/View;

    .line 186
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$8;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v0, Lcom/powervision/gcs/R$id;->ship_ll_map_menu:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'shipMapMenu\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipMapMenu:Landroid/widget/LinearLayout;

    .line 193
    sget v0, Lcom/powervision/gcs/R$id;->ship_slide_unlock_view:I

    const-class v1, Lcom/powervision/gcs/view/SlideReturnView;

    const-string v2, "field \'mSlideUnlockView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/SlideReturnView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    .line 194
    sget v0, Lcom/powervision/gcs/R$id;->ship_slide_back_boat_view:I

    const-class v1, Lcom/powervision/gcs/view/SlideReturnView;

    const-string v2, "field \'mSlideBackBoatView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/SlideReturnView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideBackBoatView:Lcom/powervision/gcs/view/SlideReturnView;

    .line 195
    sget v0, Lcom/powervision/gcs/R$id;->ship_navigation_thumb:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipNavigationThumb\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipNavigationThumb:Landroid/widget/ImageView;

    .line 196
    sget v0, Lcom/powervision/gcs/R$id;->ship_small_north:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipSmallNorth\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipSmallNorth:Landroid/widget/ImageView;

    .line 197
    sget v0, Lcom/powervision/gcs/R$id;->ship_navigation_compass:I

    const-string v1, "field \'shipNavigationCompass\' and method \'ship_navigation_compass\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 198
    sget v1, Lcom/powervision/gcs/R$id;->ship_navigation_compass:I

    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'shipNavigationCompass\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipNavigationCompass:Landroid/widget/RelativeLayout;

    .line 199
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view102c:Landroid/view/View;

    .line 200
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$9;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget v0, Lcom/powervision/gcs/R$id;->surfaceViewMask:I

    const-string v1, "field \'surfaceViewMask\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->surfaceViewMask:Landroid/view/View;

    .line 207
    sget v0, Lcom/powervision/gcs/R$id;->ship_man_distance_value:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mManShipDistance\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mManShipDistance:Landroid/widget/TextView;

    .line 208
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_function_close:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'mFunctionClose\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mFunctionClose:Landroid/widget/FrameLayout;

    .line 209
    sget v0, Lcom/powervision/gcs/R$id;->time_view:I

    const-class v1, Lcom/powervision/gcs/view/ship/TimeView;

    const-string v2, "field \'timeView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/TimeView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->timeView:Lcom/powervision/gcs/view/ship/TimeView;

    .line 210
    sget v0, Lcom/powervision/gcs/R$id;->sonar_layout:I

    const-class v1, Lcom/powervision/gcs/view/SonarWindowView;

    const-string v2, "field \'sonarWindowView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/SonarWindowView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarWindowView:Lcom/powervision/gcs/view/SonarWindowView;

    .line 211
    sget v0, Lcom/powervision/gcs/R$id;->layout_bottom:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'mLayoutBottom\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutBottom:Landroid/widget/LinearLayout;

    .line 212
    sget v0, Lcom/powervision/gcs/R$id;->param_layout:I

    const-class v1, Lcom/powervision/gcs/view/SonarParamQuickSetView;

    const-string v2, "field \'paramLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/SonarParamQuickSetView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->paramLayout:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    .line 213
    sget v0, Lcom/powervision/gcs/R$id;->geosetview:I

    const-class v1, Lcom/powervision/gcs/view/GeoSetRangeView;

    const-string v2, "field \'geoSetRangeView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/GeoSetRangeView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->geoSetRangeView:Lcom/powervision/gcs/view/GeoSetRangeView;

    .line 214
    sget v0, Lcom/powervision/gcs/R$id;->image_interest_shrink:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'mImageInterestShrink\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageInterestShrink:Landroid/widget/FrameLayout;

    .line 215
    sget v0, Lcom/powervision/gcs/R$id;->image_interest_shrink_iv:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'mImageInterestShrinkIv\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageInterestShrinkIv:Landroid/widget/ImageView;

    .line 216
    sget v0, Lcom/powervision/gcs/R$id;->image_fish_shrink:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'mImageFishShrink\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageFishShrink:Landroid/widget/FrameLayout;

    .line 217
    sget v0, Lcom/powervision/gcs/R$id;->image_fish_shrink_iv:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'mImageFishShrinkIv\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageFishShrinkIv:Landroid/widget/ImageView;

    .line 218
    sget v0, Lcom/powervision/gcs/R$id;->layout_top:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'mLayoutTop\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutTop:Landroid/widget/RelativeLayout;

    .line 219
    sget v0, Lcom/powervision/gcs/R$id;->slide_stub:I

    const-class v1, Landroid/view/ViewStub;

    const-string v2, "field \'mSlideStub\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideStub:Landroid/view/ViewStub;

    .line 220
    sget v0, Lcom/powervision/gcs/R$id;->interest_stub:I

    const-class v1, Landroid/view/ViewStub;

    const-string v2, "field \'mFishStub\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mFishStub:Landroid/view/ViewStub;

    .line 221
    sget v0, Lcom/powervision/gcs/R$id;->flexbox_layout:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'flexboxLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->flexboxLayout:Landroid/widget/LinearLayout;

    .line 222
    sget v0, Lcom/powervision/gcs/R$id;->ship_rl_LMH_view:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'shipRlLMHView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipRlLMHView:Landroid/widget/RelativeLayout;

    .line 223
    sget v0, Lcom/powervision/gcs/R$id;->ship_man_distance:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipManDistance\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipManDistance:Landroid/widget/TextView;

    .line 224
    sget v0, Lcom/powervision/gcs/R$id;->ship_top_view:I

    const-class v1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    const-string v2, "field \'shipTopView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    .line 225
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_intelli:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'shipQuickIntelli\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickIntelli:Landroid/widget/FrameLayout;

    .line 226
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_sonar_setting:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'shipQuickSonarSetting\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSonarSetting:Landroid/widget/FrameLayout;

    .line 227
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_sonar_setting_iv:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipQuickSonarSettingIv\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSonarSettingIv:Landroid/widget/ImageView;

    .line 228
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_hook:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'shipQuickHook\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickHook:Landroid/widget/FrameLayout;

    .line 229
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_hook_iv:I

    const-string v1, "field \'shipQuickHookIv\' and method \'ship_quick_hook_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 230
    sget v1, Lcom/powervision/gcs/R$id;->ship_quick_hook_iv:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'shipQuickHookIv\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickHookIv:Landroid/widget/ImageView;

    .line 231
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1033:Landroid/view/View;

    .line 232
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$10;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_sche:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'shipQuickSche\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSche:Landroid/widget/FrameLayout;

    .line 239
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_area:I

    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'shipQuickArea\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickArea:Landroid/widget/FrameLayout;

    .line 240
    sget v0, Lcom/powervision/gcs/R$id;->iv_home_back:I

    const-string v1, "field \'ivHomeBack\' and method \'iv_home_back\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 241
    sget v1, Lcom/powervision/gcs/R$id;->iv_home_back:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivHomeBack\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->ivHomeBack:Landroid/widget/ImageView;

    .line 242
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewe08:Landroid/view/View;

    .line 243
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$11;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$11;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    sget v0, Lcom/powervision/gcs/R$id;->iv_home_light:I

    const-string v1, "field \'ivHomeLight\' and method \'iv_home_light\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 250
    sget v1, Lcom/powervision/gcs/R$id;->iv_home_light:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivHomeLight\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->ivHomeLight:Landroid/widget/ImageView;

    .line 251
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewe09:Landroid/view/View;

    .line 252
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$12;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$12;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    sget v0, Lcom/powervision/gcs/R$id;->eph:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextEph\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextEph:Landroid/widget/TextView;

    .line 259
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_intelli_iv:I

    const-string v1, "method \'ship_quick_intelli_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 260
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1035:Landroid/view/View;

    .line 261
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$13;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$13;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    sget v0, Lcom/powervision/gcs/R$id;->ship_more_function_iv:I

    const-string v1, "method \'ship_more_function_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 268
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view102b:Landroid/view/View;

    .line 269
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$14;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$14;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    sget v0, Lcom/powervision/gcs/R$id;->connect_text:I

    const-string v1, "method \'connect_text\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 276
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewca6:Landroid/view/View;

    .line 277
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$15;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$15;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    sget v0, Lcom/powervision/gcs/R$id;->top_setting:I

    const-string v1, "method \'top_setting\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 284
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1141:Landroid/view/View;

    .line 285
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$16;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$16;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    sget v0, Lcom/powervision/gcs/R$id;->ship_iv_map_shrink:I

    const-string v1, "method \'ship_iv_map_shrink\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 292
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view101c:Landroid/view/View;

    .line 293
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$17;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$17;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    sget v0, Lcom/powervision/gcs/R$id;->ship_back_boat_iv:I

    const-string v1, "method \'ship_back_boat_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 300
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewfcf:Landroid/view/View;

    .line 301
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$18;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$18;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_function_close_iv:I

    const-string v1, "method \'ship_quick_function_close_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 308
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1031:Landroid/view/View;

    .line 309
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$19;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$19;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_area_iv:I

    const-string v1, "method \'ship_quick_area_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 316
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view102f:Landroid/view/View;

    .line 317
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$20;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$20;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    sget v0, Lcom/powervision/gcs/R$id;->ship_quick_sche_iv:I

    const-string v1, "method \'ship_quick_sche_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 324
    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1037:Landroid/view/View;

    .line 325
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$21;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$21;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 338
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 340
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    .line 341
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    .line 342
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    .line 343
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mtextureview:Landroid/view/TextureView;

    .line 344
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layoutDirection:Landroid/widget/RelativeLayout;

    .line 345
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickNorth:Landroid/widget/ImageView;

    .line 346
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageShrink:Landroid/widget/ImageView;

    .line 347
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    .line 348
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextVs:Landroid/widget/TextView;

    .line 349
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextDistance:Landroid/widget/TextView;

    .line 350
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextUnitSpeed:Landroid/widget/TextView;

    .line 351
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextUnitDis:Landroid/widget/TextView;

    .line 352
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutVs:Landroid/widget/RelativeLayout;

    .line 353
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutDis:Landroid/widget/RelativeLayout;

    .line 354
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipCNUView:Lcom/powervision/gcs/view/ship/shipcnuview/ShipCNUView;

    .line 355
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageHomeMedia:Landroid/widget/ImageView;

    .line 356
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipReturnBtn:Landroid/widget/TextView;

    .line 357
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipRockerLeft:Lcom/powervision/gcs/view/ship/ShipRockerView;

    .line 358
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipRockerRight:Lcom/powervision/gcs/view/ship/ShipRockerView;

    .line 359
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipLmhView:Lcom/powervision/gcs/view/ship/ShipLMHView;

    .line 360
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipLightView:Landroid/widget/ImageView;

    .line 361
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipBackBoat:Landroid/widget/FrameLayout;

    .line 362
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->leftViewLl:Landroid/widget/LinearLayout;

    .line 363
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipSetButton:Landroid/widget/TextView;

    .line 364
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipSetUpgradePoint:Landroid/widget/TextView;

    .line 365
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipSetLayout:Landroid/widget/FrameLayout;

    .line 366
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->gcsUnderwaterLayout:Landroid/widget/RelativeLayout;

    .line 367
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->waterLockButton:Landroid/widget/FrameLayout;

    .line 368
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->waterLockButtonIv:Landroid/widget/ImageView;

    .line 369
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipLmhValuesText:Landroid/widget/TextView;

    .line 370
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipGesture:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    .line 371
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipLmhNameText:Landroid/widget/TextView;

    .line 372
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->direction:Landroid/widget/ImageView;

    .line 373
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mShipShrinkView:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    .line 374
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layerSwitch:Landroid/widget/ImageView;

    .line 375
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->rememberRoute:Landroid/widget/ImageView;

    .line 376
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->focusLocation:Landroid/widget/ImageView;

    .line 377
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->addInterest:Landroid/widget/ImageView;

    .line 378
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->interestList:Landroid/widget/ImageView;

    .line 379
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipMapMenu:Landroid/widget/LinearLayout;

    .line 380
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    .line 381
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideBackBoatView:Lcom/powervision/gcs/view/SlideReturnView;

    .line 382
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipNavigationThumb:Landroid/widget/ImageView;

    .line 383
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipSmallNorth:Landroid/widget/ImageView;

    .line 384
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipNavigationCompass:Landroid/widget/RelativeLayout;

    .line 385
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->surfaceViewMask:Landroid/view/View;

    .line 386
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mManShipDistance:Landroid/widget/TextView;

    .line 387
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mFunctionClose:Landroid/widget/FrameLayout;

    .line 388
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->timeView:Lcom/powervision/gcs/view/ship/TimeView;

    .line 389
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarWindowView:Lcom/powervision/gcs/view/SonarWindowView;

    .line 390
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutBottom:Landroid/widget/LinearLayout;

    .line 391
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->paramLayout:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    .line 392
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->geoSetRangeView:Lcom/powervision/gcs/view/GeoSetRangeView;

    .line 393
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageInterestShrink:Landroid/widget/FrameLayout;

    .line 394
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageInterestShrinkIv:Landroid/widget/ImageView;

    .line 395
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageFishShrink:Landroid/widget/FrameLayout;

    .line 396
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageFishShrinkIv:Landroid/widget/ImageView;

    .line 397
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutTop:Landroid/widget/RelativeLayout;

    .line 398
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideStub:Landroid/view/ViewStub;

    .line 399
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mFishStub:Landroid/view/ViewStub;

    .line 400
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->flexboxLayout:Landroid/widget/LinearLayout;

    .line 401
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipRlLMHView:Landroid/widget/RelativeLayout;

    .line 402
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipManDistance:Landroid/widget/TextView;

    .line 403
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    .line 404
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickIntelli:Landroid/widget/FrameLayout;

    .line 405
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSonarSetting:Landroid/widget/FrameLayout;

    .line 406
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSonarSettingIv:Landroid/widget/ImageView;

    .line 407
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickHook:Landroid/widget/FrameLayout;

    .line 408
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickHookIv:Landroid/widget/ImageView;

    .line 409
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSche:Landroid/widget/FrameLayout;

    .line 410
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickArea:Landroid/widget/FrameLayout;

    .line 411
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->ivHomeBack:Landroid/widget/ImageView;

    .line 412
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->ivHomeLight:Landroid/widget/ImageView;

    .line 413
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mTextEph:Landroid/widget/TextView;

    .line 415
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewda6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewda6:Landroid/view/View;

    .line 417
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1205:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1205:Landroid/view/View;

    .line 419
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1026:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1026:Landroid/view/View;

    .line 421
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1027:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1027:Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1029:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1029:Landroid/view/View;

    .line 425
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1028:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1028:Landroid/view/View;

    .line 427
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewfca:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewfca:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1012:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1012:Landroid/view/View;

    .line 431
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view102c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view102c:Landroid/view/View;

    .line 433
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1033:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1033:Landroid/view/View;

    .line 435
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewe08:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewe08:Landroid/view/View;

    .line 437
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewe09:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewe09:Landroid/view/View;

    .line 439
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1035:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1035:Landroid/view/View;

    .line 441
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view102b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view102b:Landroid/view/View;

    .line 443
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewca6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewca6:Landroid/view/View;

    .line 445
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1141:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1141:Landroid/view/View;

    .line 447
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view101c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view101c:Landroid/view/View;

    .line 449
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewfcf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->viewfcf:Landroid/view/View;

    .line 451
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1031:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1031:Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view102f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view102f:Landroid/view/View;

    .line 455
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1037:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;->view1037:Landroid/view/View;

    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
