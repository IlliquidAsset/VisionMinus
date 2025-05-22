.class public Lcom/powervision/aircraft/ui/views/ExpSwitchView;
.super Landroid/view/View;
.source "ExpSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;
    }
.end annotation


# instance fields
.field private DrawEndX:I

.field private DrawEndY:I

.field private DrawOriginX:I

.field private DrawOriginY:I

.field private DrawRadii:I

.field context:Landroid/content/Context;

.field private controlX1:I

.field private controlX2:I

.field private controlY1:I

.field private controlY2:I

.field private gesOriginX:F

.field private gesOriginY:F

.field private isChecked:Z

.field private isDrag:Z

.field private limi1:I

.field private limi2:I

.field private listener:Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;

.field private mBackGroundPaint:Landroid/graphics/Paint;

.field private mCenterIncludePoint:Landroid/graphics/Paint;

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mCenterPointSize:I

.field private mDiagonalLinePaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private moveDS:I

.field private paint:Landroid/graphics/Paint;

.field private paint1:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginX:I

    .line 27
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginY:I

    .line 31
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    .line 32
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    .line 33
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    .line 34
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->moveDS:I

    const/4 v0, 0x3

    .line 49
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterPointSize:I

    const/16 v0, 0xc

    .line 50
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextSize:I

    .line 52
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isChecked:Z

    .line 53
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isDrag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginX:I

    .line 27
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginY:I

    .line 31
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    .line 32
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    .line 33
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    .line 34
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    const/4 p2, 0x1

    .line 37
    iput p2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->moveDS:I

    const/4 v1, 0x3

    .line 49
    iput v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterPointSize:I

    const/16 v1, 0xc

    .line 50
    iput v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextSize:I

    .line 52
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isChecked:Z

    .line 53
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isDrag:Z

    .line 64
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->context:Landroid/content/Context;

    .line 66
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_exp_frame_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 71
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 72
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint1:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_exp_center_line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint1:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint2:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_exp_curve_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint2:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint2:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->initAdvance()V

    return-void

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method private getHalfUp(F)F
    .locals 4

    .line 343
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 348
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p1, 0x2

    .line 349
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 351
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private getValue(F)F
    .locals 1

    .line 331
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    .line 334
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getHalfUp(F)F

    move-result p1

    return p1
.end method

.method private initAdvance()V
    .locals 5

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextPaint:Landroid/graphics/Paint;

    .line 91
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_exp_text_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->context:Landroid/content/Context;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/powervision/aircraft/utils/SettingUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterPaint:Landroid/graphics/Paint;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterIncludePoint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterIncludePoint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_exp_frame_line:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterIncludePoint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mDiagonalLinePaint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mDiagonalLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mDiagonalLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v0, v3, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 113
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mDiagonalLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 114
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mDiagonalLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mBackGroundPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mBackGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_exp_default_back_ground:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method


# virtual methods
.method public getCurrentValue()F
    .locals 2

    .line 338
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getValue(F)F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 166
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isChecked:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mBackGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_exp_checked_back_ground:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginX:I

    int-to-float v2, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginY:I

    int-to-float v3, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v4, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mBackGroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 170
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginX:I

    int-to-float v2, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginY:I

    int-to-float v3, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v4, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mBackGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_exp_default_back_ground:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginX:I

    int-to-float v2, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginY:I

    int-to-float v3, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v4, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mBackGroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 176
    :goto_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 177
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 180
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 181
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mDiagonalLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mDiagonalLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 184
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->context:Landroid/content/Context;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextSize:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/powervision/aircraft/utils/SettingUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->context:Landroid/content/Context;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextSize:I

    int-to-float v3, v3

    .line 185
    invoke-static {v2, v3}, Lcom/powervision/aircraft/utils/SettingUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "X"

    .line 184
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->context:Landroid/content/Context;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/powervision/aircraft/utils/SettingUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->context:Landroid/content/Context;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextSize:I

    int-to-float v2, v2

    .line 187
    invoke-static {v1, v2}, Lcom/powervision/aircraft/utils/SettingUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "Y"

    .line 186
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 190
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    int-to-float v2, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginY:I

    int-to-float v3, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint1:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 191
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginX:I

    int-to-float v2, v0

    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    int-to-float v3, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint1:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 193
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 194
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 195
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 196
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 198
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 199
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 200
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    int-to-float v1, v1

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawOriginX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 201
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 204
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->context:Landroid/content/Context;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterPointSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/powervision/aircraft/utils/SettingUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 205
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isDrag:Z

    if-eqz v0, :cond_1

    .line 206
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->context:Landroid/content/Context;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterPointSize:I

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    invoke-static {v2, v3}, Lcom/powervision/aircraft/utils/SettingUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->mCenterIncludePoint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 208
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 124
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 v1, 0x1f5

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    goto :goto_0

    .line 132
    :cond_1
    iput v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    .line 135
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 136
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    iput p2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    goto :goto_1

    .line 142
    :cond_3
    iput v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    .line 146
    :goto_1
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 148
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi1:I

    .line 149
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double v0, v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi2:I

    .line 151
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    if-nez p1, :cond_4

    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    if-nez p1, :cond_4

    .line 152
    iput p2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    .line 153
    iput p2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    .line 154
    iput p2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    .line 155
    iput p2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    .line 157
    :cond_4
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    iget p2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    if-eq p1, p2, :cond_5

    .line 158
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    .line 160
    :cond_5
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    iget p2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->gesOriginX:F

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->gesOriginY:F

    .line 216
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isChecked:Z

    if-nez p1, :cond_e

    .line 217
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isChecked:Z

    .line 218
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->invalidate()V

    .line 219
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->listener:Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;

    if-eqz p1, :cond_e

    .line 220
    invoke-interface {p1, p0, v1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;->onExpCheckStatusChanged(Lcom/powervision/aircraft/ui/views/ExpSwitchView;Z)V

    goto/16 :goto_6

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    .line 224
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->gesOriginY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 225
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    if-le v0, v2, :cond_1

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    if-ge v3, v2, :cond_1

    .line 226
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->moveDS:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    add-int/2addr v3, v2

    .line 227
    iput v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    goto :goto_0

    .line 229
    :cond_1
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    .line 230
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    .line 232
    :goto_0
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    if-ne v0, v2, :cond_3

    .line 233
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->moveDS:I

    add-int v3, v0, v2

    iget v4, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi1:I

    if-ge v3, v4, :cond_2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    iget v4, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi2:I

    if-le v3, v4, :cond_2

    sub-int/2addr v3, v2

    .line 234
    iput v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    add-int/2addr v0, v2

    .line 235
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    goto :goto_1

    .line 237
    :cond_2
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi1:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    .line 238
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi2:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    .line 241
    :cond_3
    :goto_1
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->listener:Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;

    if-eqz v0, :cond_4

    .line 242
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getValue(F)F

    move-result v2

    invoke-interface {v0, p0, v2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;->onExpChange(Lcom/powervision/aircraft/ui/views/ExpSwitchView;F)V

    goto :goto_2

    .line 243
    :cond_4
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->listener:Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;

    if-eqz v0, :cond_5

    .line 244
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getValue(F)F

    move-result v2

    invoke-interface {v0, p0, v2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;->onExpChange(Lcom/powervision/aircraft/ui/views/ExpSwitchView;F)V

    .line 246
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->gesOriginY:F

    .line 247
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->invalidate()V

    goto/16 :goto_6

    .line 248
    :cond_6
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->gesOriginY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, -0x3f600000    # -5.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_e

    .line 249
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    if-ge v0, v2, :cond_7

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    if-le v3, v2, :cond_7

    .line 250
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->moveDS:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    sub-int/2addr v3, v2

    .line 251
    iput v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    goto :goto_3

    .line 253
    :cond_7
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    .line 254
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    .line 256
    :goto_3
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    if-ne v0, v2, :cond_9

    .line 257
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi1:I

    if-ge v0, v2, :cond_8

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi2:I

    if-le v2, v3, :cond_8

    .line 258
    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->moveDS:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    sub-int/2addr v2, v3

    .line 259
    iput v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    goto :goto_4

    .line 261
    :cond_8
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi1:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    .line 262
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->limi2:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    .line 265
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->listener:Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;

    if-eqz v0, :cond_b

    .line 266
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    if-ne v2, v3, :cond_a

    .line 267
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getValue(F)F

    move-result v2

    invoke-interface {v0, p0, v2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;->onExpChange(Lcom/powervision/aircraft/ui/views/ExpSwitchView;F)V

    goto :goto_5

    .line 269
    :cond_a
    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    int-to-float v2, v2

    iget v3, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getValue(F)F

    move-result v2

    invoke-interface {v0, p0, v2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;->onExpChange(Lcom/powervision/aircraft/ui/views/ExpSwitchView;F)V

    .line 271
    :goto_5
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isDrag:Z

    if-nez v0, :cond_b

    .line 272
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isDrag:Z

    .line 275
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->gesOriginY:F

    .line 276
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->invalidate()V

    goto :goto_6

    .line 278
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 279
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->listener:Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;

    if-eqz p1, :cond_e

    .line 280
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    if-ne v0, v2, :cond_d

    .line 281
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getValue(F)F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;->onExpChangeEnd(Lcom/powervision/aircraft/ui/views/ExpSwitchView;F)V

    goto :goto_6

    .line 282
    :cond_d
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    if-ne v0, v2, :cond_e

    .line 283
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getValue(F)F

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;->onExpChangeEnd(Lcom/powervision/aircraft/ui/views/ExpSwitchView;F)V

    :cond_e
    :goto_6
    return v1
.end method

.method public setCheckCenterPointState(Z)V
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isDrag:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 373
    :cond_0
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isDrag:Z

    .line 374
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->invalidate()V

    return-void
.end method

.method public setCheckedState(Z)V
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 365
    :cond_0
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->isChecked:Z

    .line 366
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->invalidate()V

    return-void
.end method

.method public setOnExpChangeListener(Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->listener:Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;

    return-void
.end method

.method public setOnExpValue(F)V
    .locals 5

    .line 299
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    :goto_0
    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 307
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getHalfUp(F)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3

    .line 309
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    .line 310
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    .line 311
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v2, v1

    mul-float v2, v2, p1

    float-to-int v2, v2

    sub-int v2, v0, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    int-to-float v0, v1

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 312
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    goto :goto_1

    :cond_3
    cmpl-double v4, v0, v2

    if-lez v4, :cond_4

    .line 314
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    .line 315
    iput v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    .line 316
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndX:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    sub-int v1, v0, v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    .line 317
    iget v0, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawEndY:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    .line 319
    iget p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->DrawRadii:I

    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX1:I

    .line 320
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlX2:I

    .line 321
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY1:I

    .line 322
    iput p1, p0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->controlY2:I

    .line 324
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->invalidate()V

    return-void
.end method
