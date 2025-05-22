.class public Lcom/powervision/aircraft/ui/views/FlightParameterView;
.super Landroid/widget/LinearLayout;
.source "FlightParameterView.java"


# instance fields
.field private mAbsoluteHeight:Landroid/widget/TextView;

.field private mDistance:Landroid/widget/TextView;

.field private mDistanceUnit:Landroid/widget/TextView;

.field private mHSpeed:Landroid/widget/TextView;

.field private mHSpeedUnit:Landroid/widget/TextView;

.field private mHigh:Landroid/widget/TextView;

.field private mHightUnit:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTime:Landroid/widget/TextView;

.field private mVSpeed:Landroid/widget/TextView;

.field private mVSpeedUnit:Landroid/widget/TextView;

.field private mVpsUnit:Landroid/widget/TextView;

.field private mVsImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_flight_parameter_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    sget v1, Lcom/powervision/aircraft/R$id;->distance_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mDistance:Landroid/widget/TextView;

    .line 55
    sget v1, Lcom/powervision/aircraft/R$id;->high_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHigh:Landroid/widget/TextView;

    .line 56
    sget v1, Lcom/powervision/aircraft/R$id;->hs_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHSpeed:Landroid/widget/TextView;

    .line 57
    sget v1, Lcom/powervision/aircraft/R$id;->vs_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVSpeed:Landroid/widget/TextView;

    .line 58
    sget v1, Lcom/powervision/aircraft/R$id;->vps_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mAbsoluteHeight:Landroid/widget/TextView;

    .line 59
    sget v1, Lcom/powervision/aircraft/R$id;->time_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mTime:Landroid/widget/TextView;

    .line 60
    sget v1, Lcom/powervision/aircraft/R$id;->distance_unit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mDistanceUnit:Landroid/widget/TextView;

    .line 61
    sget v1, Lcom/powervision/aircraft/R$id;->high_unit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHightUnit:Landroid/widget/TextView;

    .line 62
    sget v1, Lcom/powervision/aircraft/R$id;->hs_unit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHSpeedUnit:Landroid/widget/TextView;

    .line 63
    sget v1, Lcom/powervision/aircraft/R$id;->vs_unit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVSpeedUnit:Landroid/widget/TextView;

    .line 64
    sget v1, Lcom/powervision/aircraft/R$id;->vps_unit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVpsUnit:Landroid/widget/TextView;

    .line 65
    sget v1, Lcom/powervision/aircraft/R$id;->vs_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVsImg:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setAbsoluteHeight(F)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mAbsoluteHeight:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    float-to-double v0, p1

    const/4 p1, 0x1

    .line 131
    invoke-static {v0, v1, p1}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide v0

    .line 132
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mAbsoluteHeight:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDistance(F)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mDistance:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    float-to-double v0, p1

    const/4 p1, 0x1

    .line 75
    invoke-static {v0, v1, p1}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide v0

    const-wide v2, 0x40d3880000000000L    # 20000.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mDistance:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setHSpeed(F)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHSpeed:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    float-to-double v0, p1

    const/4 p1, 0x1

    .line 102
    invoke-static {v0, v1, p1}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide v0

    .line 103
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHSpeed:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHigh(F)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHigh:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    float-to-double v0, p1

    const/4 p1, 0x1

    .line 90
    invoke-static {v0, v1, p1}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide v0

    .line 91
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHigh:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTime(I)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    int-to-long v1, p1

    .line 144
    invoke-static {v1, v2}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "00:00"

    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUnit(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mDistanceUnit:Landroid/widget/TextView;

    const-string v0, "m"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHightUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHSpeedUnit:Landroid/widget/TextView;

    const-string v1, "m/s"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVpsUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mDistanceUnit:Landroid/widget/TextView;

    const-string v0, "ft"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHightUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mHSpeedUnit:Landroid/widget/TextView;

    const-string v0, "ft/s"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVpsUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setVSpeed(F)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVSpeed:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    float-to-double v0, p1

    const/4 v2, 0x1

    .line 114
    invoke-static {v0, v1, v2}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide v0

    .line 115
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVSpeed:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVsImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_vs_up:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/FlightParameterView;->mVsImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_vs_down:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
