.class public Lcom/powervision/base/views/HPickerView;
.super Landroid/view/View;
.source "HPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/HPickerView$OnScrollListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HPickerView"


# instance fields
.field private context:Landroid/content/Context;

.field isAuto:Z

.field private mBaseline:F

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownX:F

.field private mMaxAlpha:I

.field private mMinAlpha:I

.field private mOffset:F

.field private mOnScrollListener:Lcom/powervision/base/views/HPickerView$OnScrollListener;

.field private mSelectIndex:I

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mSpaceBetweenText:F

.field private mTemPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTrianglePaint:Landroid/graphics/Paint;

.field private mViewHeight:F

.field private mViewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/HPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/views/HPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xff

    .line 41
    iput p2, p0, Lcom/powervision/base/views/HPickerView;->mMaxAlpha:I

    const/16 p2, 0x37

    .line 42
    iput p2, p0, Lcom/powervision/base/views/HPickerView;->mMinAlpha:I

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    const/4 p2, 0x1

    .line 174
    iput-boolean p2, p0, Lcom/powervision/base/views/HPickerView;->isAuto:Z

    .line 66
    iput-object p1, p0, Lcom/powervision/base/views/HPickerView;->context:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/powervision/base/views/HPickerView;->init()V

    return-void
.end method

.method private dp2px(F)I
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->getResources()Landroid/content/res/Resources;

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

.method private drawTriangle(Landroid/graphics/Canvas;)V
    .locals 6

    .line 163
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 164
    iget v1, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/powervision/base/views/HPickerView;->mViewHeight:F

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/powervision/base/views/HPickerView;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 165
    iget v1, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    div-float/2addr v1, v2

    invoke-direct {p0, v4}, Lcom/powervision/base/views/HPickerView;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/powervision/base/views/HPickerView;->mViewHeight:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    iget v1, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    div-float/2addr v1, v2

    invoke-direct {p0, v4}, Lcom/powervision/base/views/HPickerView;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/base/views/HPickerView;->mViewHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 168
    iget-object v1, p0, Lcom/powervision/base/views/HPickerView;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 3

    const/high16 v0, 0x41c80000    # 25.0f

    .line 71
    invoke-direct {p0, v0}, Lcom/powervision/base/views/HPickerView;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/base/views/HPickerView;->mSpaceBetweenText:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 72
    invoke-direct {p0, v0}, Lcom/powervision/base/views/HPickerView;->sp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/powervision/base/views/HPickerView;->mTextSize:F

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectPaint:Landroid/graphics/Paint;

    .line 74
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/HPickerView;->mTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectPaint:Landroid/graphics/Paint;

    const-string v2, "#3A75F2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    .line 80
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 82
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/HPickerView;->mTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTrianglePaint:Landroid/graphics/Paint;

    .line 86
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTemPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private parabola(FF)F
    .locals 2

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 314
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private sp2px(F)I
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    return v0
.end method

.method public getCurrentItem()Ljava/lang/String;
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    iget v1, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/powervision/base/views/HPickerView;->drawTriangle(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    iget-object v1, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_2

    .line 121
    :cond_0
    iget v0, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    add-float/2addr v0, v2

    .line 122
    iget-object v2, p0, Lcom/powervision/base/views/HPickerView;->mTemPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    iget-object v2, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    iget v3, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lcom/powervision/base/views/HPickerView;->mBaseline:F

    iget-object v4, p0, Lcom/powervision/base/views/HPickerView;->mTemPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTemPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    iget v3, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 126
    iget v0, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    div-float/2addr v0, v1

    .line 127
    iget v2, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "pickview"

    if-ge v2, v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v3, p0, Lcom/powervision/base/views/HPickerView;->mSpaceBetweenText:F

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 129
    invoke-static {v4}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x1= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 130
    iget-object v3, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/powervision/base/views/HPickerView;->mMaxAlpha:I

    iget v5, p0, Lcom/powervision/base/views/HPickerView;->mMinAlpha:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    div-float v6, v5, v1

    div-float/2addr v5, v1

    sub-float v5, v0, v5

    iget v7, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    add-float/2addr v5, v7

    invoke-direct {p0, v6, v5}, Lcom/powervision/base/views/HPickerView;->parabola(FF)F

    move-result v5

    mul-float v4, v4, v5

    iget v5, p0, Lcom/powervision/base/views/HPickerView;->mMinAlpha:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    iget-object v3, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/powervision/base/views/HPickerView;->mBaseline:F

    iget-object v6, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 133
    :cond_1
    iget v0, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    div-float/2addr v0, v1

    .line 134
    iget v2, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 135
    iget-object v3, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/powervision/base/views/HPickerView;->mSpaceBetweenText:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    .line 136
    invoke-static {v4}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x2= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 137
    iget-object v3, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/powervision/base/views/HPickerView;->mMaxAlpha:I

    iget v6, p0, Lcom/powervision/base/views/HPickerView;->mMinAlpha:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    div-float v7, v6, v1

    div-float/2addr v6, v1

    sub-float v6, v0, v6

    iget v8, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    sub-float/2addr v6, v8

    invoke-direct {p0, v7, v6}, Lcom/powervision/base/views/HPickerView;->parabola(FF)F

    move-result v6

    mul-float v5, v5, v6

    iget v6, p0, Lcom/powervision/base/views/HPickerView;->mMinAlpha:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    iget-object v3, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    add-float/2addr v5, v0

    iget v6, p0, Lcom/powervision/base/views/HPickerView;->mBaseline:F

    iget-object v7, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 102
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 103
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    .line 104
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mViewHeight:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 107
    iget-object p2, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    .line 108
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    div-int/lit8 v0, v0, 0x2

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    int-to-float p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mBaseline:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 179
    iget-boolean v0, p0, Lcom/powervision/base/views/HPickerView;->isAuto:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTemPaint:Landroid/graphics/Paint;

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    .line 217
    iget-object p1, p0, Lcom/powervision/base/views/HPickerView;->mOnScrollListener:Lcom/powervision/base/views/HPickerView$OnScrollListener;

    if-eqz p1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    iget v2, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/powervision/base/views/HPickerView$OnScrollListener;->onSelect(Ljava/lang/String;I)V

    .line 220
    :cond_1
    iput v3, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    .line 221
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->invalidate()V

    goto/16 :goto_1

    .line 188
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 189
    iget v0, p0, Lcom/powervision/base/views/HPickerView;->mDownX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    .line 191
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    iget v4, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    iget-object v4, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 193
    iget v4, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    iget v5, p0, Lcom/powervision/base/views/HPickerView;->mSpaceBetweenText:F

    add-float/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 194
    iget v4, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    if-lez v4, :cond_4

    .line 195
    iput v3, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    sub-int/2addr v4, v1

    .line 196
    iput v4, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    cmpg-float v4, p1, v3

    if-gez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move v4, p1

    .line 197
    :goto_0
    iput v4, p0, Lcom/powervision/base/views/HPickerView;->mDownX:F

    .line 198
    iget-object v4, p0, Lcom/powervision/base/views/HPickerView;->mOnScrollListener:Lcom/powervision/base/views/HPickerView$OnScrollListener;

    if-eqz v4, :cond_4

    .line 199
    iget-object v5, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    iget v7, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/powervision/base/views/HPickerView$OnScrollListener;->onSelect(Ljava/lang/String;I)V

    .line 203
    :cond_4
    iget v4, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    iget v5, p0, Lcom/powervision/base/views/HPickerView;->mSpaceBetweenText:F

    add-float/2addr v0, v5

    neg-float v0, v0

    div-float/2addr v0, v6

    cmpg-float v0, v4, v0

    if-gez v0, :cond_6

    .line 204
    iget v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    iget-object v4, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_6

    .line 205
    iput v3, p0, Lcom/powervision/base/views/HPickerView;->mOffset:F

    .line 206
    iget v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    .line 207
    iget v0, p0, Lcom/powervision/base/views/HPickerView;->mViewWidth:F

    cmpl-float v3, p1, v0

    if-lez v3, :cond_5

    move p1, v0

    :cond_5
    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mDownX:F

    .line 208
    iget-object p1, p0, Lcom/powervision/base/views/HPickerView;->mOnScrollListener:Lcom/powervision/base/views/HPickerView$OnScrollListener;

    if-eqz p1, :cond_6

    .line 209
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    iget v3, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/powervision/base/views/HPickerView$OnScrollListener;->onSelect(Ljava/lang/String;I)V

    .line 213
    :cond_6
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->invalidate()V

    goto :goto_1

    .line 185
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mDownX:F

    :goto_1
    return v1
.end method

.method public setAlpha(II)V
    .locals 0

    .line 302
    iput p2, p0, Lcom/powervision/base/views/HPickerView;->mMinAlpha:I

    .line 303
    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mMaxAlpha:I

    return-void
.end method

.method public setCallBackResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/powervision/base/views/HPickerView;->mSelectPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/powervision/base/views/HPickerView;->mTemPaint:Landroid/graphics/Paint;

    .line 235
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    iput-object p1, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    const/4 p1, 0x0

    .line 248
    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    .line 249
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    iput-object p1, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    .line 257
    iput p2, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    .line 258
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsAuto(Z)V
    .locals 0

    .line 329
    iput-boolean p1, p0, Lcom/powervision/base/views/HPickerView;->isAuto:Z

    return-void
.end method

.method public setMargin(I)V
    .locals 0

    int-to-float p1, p1

    .line 272
    invoke-direct {p0, p1}, Lcom/powervision/base/views/HPickerView;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mSpaceBetweenText:F

    return-void
.end method

.method public setOnScrollListener(Lcom/powervision/base/views/HPickerView$OnScrollListener;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/powervision/base/views/HPickerView;->mOnScrollListener:Lcom/powervision/base/views/HPickerView$OnScrollListener;

    return-void
.end method

.method public setSclollSelectIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mSelectIndex:I

    .line 355
    invoke-virtual {p0}, Lcom/powervision/base/views/HPickerView;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectPaintColor(I)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mSelectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/powervision/base/views/HPickerView;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/powervision/base/views/HPickerView;->sp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/powervision/base/views/HPickerView;->mTextSize:F

    return-void
.end method

.method public setUnSelectPaintColor(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/powervision/base/views/HPickerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/powervision/base/views/HPickerView;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
