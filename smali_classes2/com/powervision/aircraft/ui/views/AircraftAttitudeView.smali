.class public Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;
.super Landroid/widget/LinearLayout;
.source "AircraftAttitudeView.java"


# instance fields
.field private currentGimbalYaw:F

.field private currentRotateRoll:F

.field private currentRotateYaw:F

.field private mAircraftAngle:Landroid/widget/ImageView;

.field private mGimbalAngle:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->currentRotateRoll:F

    .line 30
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->currentRotateYaw:F

    .line 31
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->currentGimbalYaw:F

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_attitude_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    sget v1, Lcom/powervision/aircraft/R$id;->compass_attitude_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 50
    sget v1, Lcom/powervision/aircraft/R$id;->compass_gimbal_angle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mGimbalAngle:Landroid/widget/ImageView;

    .line 51
    sget v1, Lcom/powervision/aircraft/R$id;->aircraft_angle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mAircraftAngle:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setAircraftAngle(F)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mAircraftAngle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->currentRotateYaw:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 77
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mGimbalAngle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->currentRotateYaw:F

    add-float/2addr p1, v1

    iget v1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->currentGimbalYaw:F

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public setGimbalAngle(F)V
    .locals 0

    return-void
.end method

.method public updateAircraftAttitude(FFF)V
    .locals 9

    .line 58
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mAircraftAngle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    float-to-double v1, p1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double v1, v1, v5

    add-double/2addr v1, v5

    const-wide v7, 0x4076800000000000L    # 360.0

    div-double/2addr v1, v7

    .line 59
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-double v7, p1

    mul-double v1, v1, v7

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    float-to-double p1, p2

    div-double/2addr p1, v3

    mul-double p1, p1, v5

    double-to-float p1, p1

    .line 60
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->currentRotateRoll:F

    .line 61
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setRotation(F)V

    float-to-double p1, p3

    div-double/2addr p1, v3

    mul-double p1, p1, v5

    double-to-float p1, p1

    .line 62
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->currentRotateYaw:F

    :cond_0
    return-void
.end method

.method public updateGimbalAttitude(FFF)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->mGimbalAngle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    neg-float p1, p3

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    double-to-float p1, p1

    .line 71
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->currentGimbalYaw:F

    :cond_0
    return-void
.end method
