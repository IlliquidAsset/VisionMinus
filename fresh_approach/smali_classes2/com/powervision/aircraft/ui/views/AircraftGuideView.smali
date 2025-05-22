.class public Lcom/powervision/aircraft/ui/views/AircraftGuideView;
.super Landroid/widget/RelativeLayout;
.source "AircraftGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/AircraftGuideView$OnGuideCompleteListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mFlightFunctions:Landroid/widget/ImageView;

.field private mFlightFunctionsTv:Landroid/widget/TextView;

.field private mGuideIconClose:Landroid/widget/ImageView;

.field private mGuideIconCloseTv:Landroid/widget/TextView;

.field private mGuideMapTv:Landroid/widget/TextView;

.field private mGuideMapView:Landroid/widget/ImageView;

.field private onGuideDismissListener:Lcom/powervision/aircraft/ui/views/AircraftGuideView$OnGuideCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/AircraftGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/AircraftGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mCurrentIndex:I

    .line 36
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->context:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_map_ai_guide_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    sget v1, Lcom/powervision/aircraft/R$id;->guide_map_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideMapView:Landroid/widget/ImageView;

    .line 43
    sget v1, Lcom/powervision/aircraft/R$id;->guide_map_prompt_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideMapTv:Landroid/widget/TextView;

    .line 45
    sget v1, Lcom/powervision/aircraft/R$id;->guide_icon_close_map:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideIconClose:Landroid/widget/ImageView;

    .line 46
    sget v1, Lcom/powervision/aircraft/R$id;->guide_icon_close_prompt_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideIconCloseTv:Landroid/widget/TextView;

    .line 48
    sget v1, Lcom/powervision/aircraft/R$id;->guide_flight_functions:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mFlightFunctions:Landroid/widget/ImageView;

    .line 49
    sget v1, Lcom/powervision/aircraft/R$id;->guide_flight_functions_prompt_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mFlightFunctionsTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->shwoGuideViews(I)V

    .line 52
    sget v1, Lcom/powervision/aircraft/R$id;->guide_map_root_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shwoGuideViews(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideMapView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideMapTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideIconClose:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideIconCloseTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mFlightFunctions:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mFlightFunctionsTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 75
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideMapView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideMapTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideIconClose:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideIconCloseTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mFlightFunctions:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mFlightFunctionsTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideMapView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideMapTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideIconClose:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mGuideIconCloseTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mFlightFunctions:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mFlightFunctionsTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-le p1, v0, :cond_3

    .line 95
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->onGuideDismissListener:Lcom/powervision/aircraft/ui/views/AircraftGuideView$OnGuideCompleteListener;

    if-eqz p1, :cond_2

    .line 96
    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/AircraftGuideView$OnGuideCompleteListener;->onGuideConplete()V

    :cond_2
    const/4 p1, 0x0

    .line 99
    :cond_3
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 59
    sget v0, Lcom/powervision/aircraft/R$id;->guide_map_root_view:I

    if-ne p1, v0, :cond_0

    .line 60
    iget p1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mCurrentIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->shwoGuideViews(I)V

    :cond_0
    return-void
.end method

.method public setOnGuideDismissListener(Lcom/powervision/aircraft/ui/views/AircraftGuideView$OnGuideCompleteListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->onGuideDismissListener:Lcom/powervision/aircraft/ui/views/AircraftGuideView$OnGuideCompleteListener;

    return-void
.end method
