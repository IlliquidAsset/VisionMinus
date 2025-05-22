.class public Lcom/powervision/camera/views/HistogramLayout;
.super Landroid/widget/RelativeLayout;
.source "HistogramLayout.java"


# instance fields
.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private chart:Lcom/github/mikephil/charting/charts/LineChart;

.field private context:Landroid/content/Context;

.field private height:I

.field private imageView:Landroid/widget/ImageView;

.field private isVertical:I

.field private maxHeight:I

.field private maxWidth:I

.field private moveX:F

.field private moveY:F

.field private paint:Landroid/graphics/Paint;

.field private toX:F

.field private toY:F

.field private type:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/powervision/camera/views/HistogramLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/camera/views/HistogramLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-object p1, p0, Lcom/powervision/camera/views/HistogramLayout;->context:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/lewis/camera/R$layout;->aircraft_histogram:I

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    sget-object p3, Lcom/lewis/camera/R$styleable;->HistogramLayout:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 70
    sget p3, Lcom/lewis/camera/R$styleable;->HistogramLayout_type:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/powervision/camera/views/HistogramLayout;->type:I

    .line 71
    sget p3, Lcom/lewis/camera/R$styleable;->HistogramLayout_gram_orientation:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/powervision/camera/views/HistogramLayout;->isVertical:I

    .line 72
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    sget p2, Lcom/lewis/camera/R$id;->chart:I

    invoke-virtual {p0, p2}, Lcom/powervision/camera/views/HistogramLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object p2, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 74
    sget p2, Lcom/lewis/camera/R$id;->image:I

    invoke-virtual {p0, p2}, Lcom/powervision/camera/views/HistogramLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/camera/views/HistogramLayout;->imageView:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->getMaxWidth(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/powervision/camera/views/HistogramLayout;->maxWidth:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->getMaxHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/powervision/camera/views/HistogramLayout;->maxHeight:I

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "max = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/powervision/camera/views/HistogramLayout;->maxWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "    "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/powervision/camera/views/HistogramLayout;->maxHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/powervision/camera/views/HistogramLayout;->initChart()V

    .line 82
    invoke-direct {p0}, Lcom/powervision/camera/views/HistogramLayout;->initClose()V

    .line 83
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/camera/views/HistogramLayout;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 84
    sget p2, Lcom/lewis/camera/R$color;->transparent:I

    invoke-virtual {p0, p2}, Lcom/powervision/camera/views/HistogramLayout;->setBackgroundResource(I)V

    .line 86
    invoke-direct {p0}, Lcom/powervision/camera/views/HistogramLayout;->initPaint()V

    .line 87
    iget p2, p0, Lcom/powervision/camera/views/HistogramLayout;->type:I

    if-nez p2, :cond_1

    .line 88
    iget p2, p0, Lcom/powervision/camera/views/HistogramLayout;->isVertical:I

    if-ne p2, v0, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    .line 89
    invoke-direct {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->setTranslationY(F)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->getMaxWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->setTranslationX(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dp2px(F)I
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private getMySize(II)I
    .locals 2

    .line 215
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 216
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method private getNavBarOverride()Ljava/lang/String;
    .locals 7

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 364
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 365
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    .line 367
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :catchall_0
    :cond_0
    return-object v1
.end method

.method private initChart()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 137
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 138
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 139
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setViewPortOffsets(FFFF)V

    .line 140
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setNoDataText(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLimitLinesBehindData(Z)V

    .line 151
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawTopYLabelEntry(Z)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    .line 155
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 157
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLinesBehindData(Z)V

    .line 158
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLimitLinesBehindData(Z)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 161
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawTopYLabelEntry(Z)V

    .line 162
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    .line 163
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 164
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 165
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLinesBehindData(Z)V

    .line 166
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLimitLinesBehindData(Z)V

    .line 167
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    return-void
.end method

.method private initClose()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/camera/views/-$$Lambda$HistogramLayout$zR_UBKIZLwxY5AUeJNyO_9dFY-k;

    invoke-direct {v1, p0}, Lcom/powervision/camera/views/-$$Lambda$HistogramLayout$zR_UBKIZLwxY5AUeJNyO_9dFY-k;-><init>(Lcom/powervision/camera/views/HistogramLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->paint:Landroid/graphics/Paint;

    const-string v1, "#CCFFFFFF"

    .line 100
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 112
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->width:I

    div-int/lit8 v1, v0, 0x3

    int-to-float v3, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->height:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/camera/views/HistogramLayout;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 115
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->width:I

    div-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->height:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/powervision/camera/views/HistogramLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 116
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->width:I

    int-to-float v4, v0

    iget-object v6, p0, Lcom/powervision/camera/views/HistogramLayout;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->width:I

    int-to-float v2, v0

    int-to-float v4, v0

    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->height:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/camera/views/HistogramLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->height:I

    int-to-float v3, v0

    iget v1, p0, Lcom/powervision/camera/views/HistogramLayout;->width:I

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/camera/views/HistogramLayout;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->height:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/powervision/camera/views/HistogramLayout;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getMaxHeight(Landroid/content/Context;)I
    .locals 3

    const-string v0, "window"

    .line 308
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 309
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 310
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 311
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->isVertical:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->hasNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 314
    :cond_0
    iget p1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return p1
.end method

.method public getMaxWidth(Landroid/content/Context;)I
    .locals 2

    const-string v0, "window"

    .line 298
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 299
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 300
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 301
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->isVertical:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->hasNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 304
    :cond_0
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return p1
.end method

.method public getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 321
    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->hasNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 323
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 293
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 294
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public hasNavBar(Landroid/content/Context;)Z
    .locals 4

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 339
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 343
    invoke-direct {p0}, Lcom/powervision/camera/views/HistogramLayout;->getNavBarOverride()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 344
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    return v2

    .line 351
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public synthetic lambda$initClose$0$HistogramLayout(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/powervision/camera/views/HistogramLayout;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->enableHistogram(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 238
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 242
    iget-object p1, p0, Lcom/powervision/camera/views/HistogramLayout;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->getMaxWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/views/HistogramLayout;->maxWidth:I

    .line 243
    iget-object p1, p0, Lcom/powervision/camera/views/HistogramLayout;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/powervision/camera/views/HistogramLayout;->getMaxHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/views/HistogramLayout;->maxHeight:I

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "max ==== "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/camera/views/HistogramLayout;->isVertical:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/camera/views/HistogramLayout;->maxWidth:I

    div-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ------- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/camera/views/HistogramLayout;->maxHeight:I

    div-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 247
    iget p1, p0, Lcom/powervision/camera/views/HistogramLayout;->isVertical:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 248
    iget p1, p0, Lcom/powervision/camera/views/HistogramLayout;->maxWidth:I

    div-int/lit8 p1, p1, 0x2

    .line 249
    div-int/lit8 p2, p1, 0x2

    goto :goto_0

    .line 251
    :cond_0
    iget p1, p0, Lcom/powervision/camera/views/HistogramLayout;->maxWidth:I

    div-int/lit8 p1, p1, 0x3

    .line 252
    iget p2, p0, Lcom/powervision/camera/views/HistogramLayout;->maxHeight:I

    div-int/lit8 p2, p2, 0x3

    .line 255
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/powervision/camera/views/HistogramLayout;->setMeasuredDimension(II)V

    .line 256
    iget-object v0, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 257
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 258
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 259
    iget-object p1, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/views/HistogramLayout;->width:I

    .line 261
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/views/HistogramLayout;->height:I

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMaxWidth(context) - getWidth() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/camera/views/HistogramLayout;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/camera/views/HistogramLayout;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/powervision/camera/views/HistogramLayout;->moveX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/camera/views/HistogramLayout;->toX:F

    .line 274
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramLayout;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/powervision/camera/views/HistogramLayout;->moveY:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/powervision/camera/views/HistogramLayout;->toY:F

    .line 276
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->toX:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/powervision/camera/views/HistogramLayout;->width:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/powervision/camera/views/HistogramLayout;->maxWidth:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/powervision/camera/views/HistogramLayout;->moveX:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/HistogramLayout;->setTranslationX(F)V

    .line 279
    :cond_1
    iget v0, p0, Lcom/powervision/camera/views/HistogramLayout;->toY:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/powervision/camera/views/HistogramLayout;->height:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/powervision/camera/views/HistogramLayout;->maxHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/powervision/camera/views/HistogramLayout;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/powervision/camera/views/HistogramLayout;->moveY:F

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/HistogramLayout;->setTranslationY(F)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/powervision/camera/views/HistogramLayout;->moveX:F

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/powervision/camera/views/HistogramLayout;->moveY:F

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setData([I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    array-length v0, p1

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 196
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v5, v3

    aget v6, p1, v3

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_1
    new-instance p1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v0, "Label"

    invoke-direct {p1, v1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 200
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 201
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v1, 0xc8

    .line 205
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    const/4 v1, -0x1

    .line 206
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 207
    new-instance v1, Lcom/github/mikephil/charting/data/LineData;

    new-array v0, v0, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object p1, v0, v2

    invoke-direct {v1, v0}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 208
    iget-object p1, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 209
    iget-object p1, p0, Lcom/powervision/camera/views/HistogramLayout;->chart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    return-void
.end method
