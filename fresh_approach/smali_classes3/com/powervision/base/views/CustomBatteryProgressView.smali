.class public Lcom/powervision/base/views/CustomBatteryProgressView;
.super Landroid/view/View;
.source "CustomBatteryProgressView.java"


# instance fields
.field private mAircraftHeight:I

.field private mAircraftPaint:Landroid/graphics/Paint;

.field private mAircraftWidth:I

.field private mCurrentAircraft:Landroid/graphics/Bitmap;

.field private mEndGrayX:F

.field private mEndGreenX:F

.field private mEndRedX:F

.field private mEndYellowX:F

.field private mFixedLength:F

.field private mGrayLength:F

.field private mGrayPaint:Landroid/graphics/Paint;

.field private mGreenAircraft:Landroid/graphics/Bitmap;

.field private mGreenColor:I

.field private mGreenLength:F

.field private mGreenPaint:Landroid/graphics/Paint;

.field private mLastBattery:F

.field private mRedAircraft:Landroid/graphics/Bitmap;

.field private mRedColor:I

.field private mRedLength:F

.field private mRedPaint:Landroid/graphics/Paint;

.field private mStartGreenX:F

.field private mStartRedX:F

.field private mStartYellowX:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private mYellowAircraft:Landroid/graphics/Bitmap;

.field private mYellowColor:I

.field private mYellowLength:F

.field private mYellowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/CustomBatteryProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/views/CustomBatteryProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x42c80000    # 100.0f

    .line 63
    iput p2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mLastBattery:F

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/base/R$color;->green:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGreenColor:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/base/R$color;->yellow:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mYellowColor:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/base/R$color;->red:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mRedColor:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/base/R$mipmap;->aircraft_icon_green:I

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGreenAircraft:Landroid/graphics/Bitmap;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/base/R$mipmap;->aircraft_icon_yellow:I

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mYellowAircraft:Landroid/graphics/Bitmap;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/base/R$mipmap;->aircraft_icon_red:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mRedAircraft:Landroid/graphics/Bitmap;

    .line 81
    iget-object p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGreenAircraft:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mCurrentAircraft:Landroid/graphics/Bitmap;

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mAircraftHeight:I

    .line 83
    iget-object p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mCurrentAircraft:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mAircraftWidth:I

    .line 84
    invoke-direct {p0}, Lcom/powervision/base/views/CustomBatteryProgressView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGrayPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    .line 89
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGrayPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGreenPaint:Landroid/graphics/Paint;

    .line 93
    iget v3, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGreenColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mYellowPaint:Landroid/graphics/Paint;

    .line 97
    iget v3, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mYellowColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mYellowPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mRedPaint:Landroid/graphics/Paint;

    .line 101
    iget v3, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mRedColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mRedPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mAircraftPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewWidth:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mLastBattery:F

    mul-float v0, v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndGrayX:F

    .line 133
    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mFixedLength:F

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v6, 0x0

    cmpg-float v3, v1, v0

    if-gtz v3, :cond_0

    .line 134
    iput v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartGreenX:F

    .line 135
    iput v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndGreenX:F

    .line 136
    iput v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartYellowX:F

    mul-float v1, v0, v2

    .line 137
    iput v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndYellowX:F

    mul-float v0, v0, v2

    .line 138
    iput v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartRedX:F

    .line 139
    iget-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGreenAircraft:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mCurrentAircraft:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    mul-float v3, v0, v2

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 141
    iput v6, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartGreenX:F

    .line 142
    iput v6, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndGreenX:F

    .line 143
    iput v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartYellowX:F

    mul-float v1, v0, v2

    .line 144
    iput v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndYellowX:F

    mul-float v0, v0, v2

    .line 145
    iput v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartRedX:F

    .line 146
    iget-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mYellowAircraft:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mCurrentAircraft:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 148
    :cond_1
    iput v6, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartGreenX:F

    .line 149
    iput v6, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndGreenX:F

    .line 150
    iput v6, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartYellowX:F

    .line 151
    iput v6, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndYellowX:F

    .line 152
    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndGrayX:F

    iput v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartRedX:F

    .line 153
    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndRedX:F

    .line 154
    iget-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mRedAircraft:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mCurrentAircraft:Landroid/graphics/Bitmap;

    :goto_0
    const/4 v1, 0x0

    .line 156
    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewHeight:I

    int-to-float v2, v0

    iget v3, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndGrayX:F

    int-to-float v4, v0

    iget-object v5, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGrayPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 157
    iget v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartGreenX:F

    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewHeight:I

    int-to-float v2, v0

    iget v3, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndGreenX:F

    int-to-float v4, v0

    iget-object v5, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mGreenPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 158
    iget v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartYellowX:F

    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewHeight:I

    int-to-float v2, v0

    iget v3, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndYellowX:F

    int-to-float v4, v0

    iget-object v5, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mYellowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    iget v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mStartRedX:F

    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewHeight:I

    int-to-float v2, v0

    iget v3, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndRedX:F

    int-to-float v4, v0

    iget-object v5, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mRedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndGrayX:F

    iget v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mAircraftWidth:I

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 161
    iget-object v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mCurrentAircraft:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewHeight:I

    iget v2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mAircraftHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mAircraftPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mCurrentAircraft:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewHeight:I

    iget v3, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mAircraftHeight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mAircraftPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 123
    invoke-virtual {p0}, Lcom/powervision/base/views/CustomBatteryProgressView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewWidth:I

    .line 124
    invoke-virtual {p0}, Lcom/powervision/base/views/CustomBatteryProgressView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewHeight:I

    .line 125
    iget p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mViewWidth:I

    div-int/lit8 p2, p1, 0x3

    int-to-float p2, p2

    iput p2, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mFixedLength:F

    int-to-float p1, p1

    .line 126
    iput p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mEndRedX:F

    return-void
.end method

.method public setBatteryProgress(F)V
    .locals 1

    .line 113
    iget v0, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mLastBattery:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iput p1, p0, Lcom/powervision/base/views/CustomBatteryProgressView;->mLastBattery:F

    .line 117
    invoke-virtual {p0}, Lcom/powervision/base/views/CustomBatteryProgressView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
