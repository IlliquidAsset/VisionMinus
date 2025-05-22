.class public Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;
.super Ljava/lang/Object;
.source "ShipFunctionScanArea_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

.field private view1000:Landroid/view/View;

.field private view1179:Landroid/view/View;

.field private view117a:Landroid/view/View;

.field private view117b:Landroid/view/View;

.field private viewfcb:Landroid/view/View;

.field private viewfcc:Landroid/view/View;

.field private viewfcd:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;Landroid/view/View;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    .line 45
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_airline_speed:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'airlineSpeed\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->airlineSpeed:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/powervision/gcs/R$id;->threshold_value_bar:I

    const-class v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v2, "field \'thresholdValueBar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 47
    sget v0, Lcom/powervision/gcs/R$id;->ship_tv_rect:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipTvRect\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->shipTvRect:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/powervision/gcs/R$id;->tv_ship_triangle:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvShipTriangle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvShipTriangle:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_hide:I

    const-string v1, "field \'tvFunctionHide\' and method \'tv_function_hide\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    sget v1, Lcom/powervision/gcs/R$id;->tv_function_hide:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvFunctionHide\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvFunctionHide:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view117a:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_delete:I

    const-string v1, "field \'tvFunctionDelete\' and method \'tv_function_delete\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    sget v1, Lcom/powervision/gcs/R$id;->tv_function_delete:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvFunctionDelete\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvFunctionDelete:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view1179:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$2;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_pause:I

    const-string v1, "field \'tvFunctionPause\' and method \'tv_function_pause\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 68
    sget v1, Lcom/powervision/gcs/R$id;->tv_function_pause:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvFunctionPause\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvFunctionPause:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view117b:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$3;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v0, Lcom/powervision/gcs/R$id;->ship_detail_close_iv:I

    const-string v1, "field \'detailClose\' and method \'ship_detail_close_iv\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    sget v1, Lcom/powervision/gcs/R$id;->ship_detail_close_iv:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'detailClose\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->detailClose:Landroid/widget/ImageView;

    .line 78
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view1000:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$4;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget v0, Lcom/powervision/gcs/R$id;->ship_airline_rect:I

    const-string v1, "field \'mIVAirLineRect\' and method \'ship_airline_rect\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    sget v1, Lcom/powervision/gcs/R$id;->ship_airline_rect:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mIVAirLineRect\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIVAirLineRect:Landroid/widget/ImageView;

    .line 87
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->viewfcc:Landroid/view/View;

    .line 88
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$5;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget v0, Lcom/powervision/gcs/R$id;->ship_airline_triangle:I

    const-string v1, "field \'mIvAirLineTriangle\' and method \'ship_airline_triangle\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 95
    sget v1, Lcom/powervision/gcs/R$id;->ship_airline_triangle:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mIvAirLineTriangle\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIvAirLineTriangle:Landroid/widget/ImageView;

    .line 96
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->viewfcd:Landroid/view/View;

    .line 97
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$6;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v0, Lcom/powervision/gcs/R$id;->text_type:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextType\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextType:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/powervision/gcs/R$id;->ship_airline_polygon:I

    const-string v1, "field \'mImagePolygon\' and method \'ship_airline_polygon\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 105
    sget v1, Lcom/powervision/gcs/R$id;->ship_airline_polygon:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImagePolygon\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mImagePolygon:Landroid/widget/ImageView;

    .line 106
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->viewfcb:Landroid/view/View;

    .line 107
    new-instance v1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$7;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v0, Lcom/powervision/gcs/R$id;->ship_tv_polygon:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextPolygon\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextPolygon:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/powervision/gcs/R$id;->text_tips:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextTips\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextTips:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/powervision/gcs/R$id;->toggle_fish:I

    const-class v1, Landroid/widget/ToggleButton;

    const-string v2, "field \'mToggle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mToggle:Landroid/widget/ToggleButton;

    .line 116
    sget v0, Lcom/powervision/gcs/R$id;->scan_seekBar:I

    const-class v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v2, "field \'mSeeker\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 117
    sget v0, Lcom/powervision/gcs/R$id;->text_spacing:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextSpacing\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextSpacing:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    .line 127
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->airlineSpeed:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 129
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->shipTvRect:Landroid/widget/TextView;

    .line 130
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvShipTriangle:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvFunctionHide:Landroid/widget/TextView;

    .line 132
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvFunctionDelete:Landroid/widget/TextView;

    .line 133
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvFunctionPause:Landroid/widget/TextView;

    .line 134
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->detailClose:Landroid/widget/ImageView;

    .line 135
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIVAirLineRect:Landroid/widget/ImageView;

    .line 136
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIvAirLineTriangle:Landroid/widget/ImageView;

    .line 137
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextType:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mImagePolygon:Landroid/widget/ImageView;

    .line 139
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextPolygon:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextTips:Landroid/widget/TextView;

    .line 141
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mToggle:Landroid/widget/ToggleButton;

    .line 142
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 143
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextSpacing:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view117a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view117a:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view1179:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view1179:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view117b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view117b:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view1000:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->view1000:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->viewfcc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->viewfcc:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->viewfcd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->viewfcd:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->viewfcb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;->viewfcb:Landroid/view/View;

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
