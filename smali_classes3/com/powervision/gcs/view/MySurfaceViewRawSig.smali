.class public Lcom/powervision/gcs/view/MySurfaceViewRawSig;
.super Landroid/view/SurfaceView;
.source "MySurfaceViewRawSig.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/lang/Runnable;


# instance fields
.field private MaxDeep:F

.field private ReduceVal:F

.field private dataLimate:I

.field private dataLimatem2M1:I

.field deepLen:I

.field private drawScale:F

.field private gourdDataLenght:I

.field private lineSmoothness:F

.field private mAssistPath:Landroid/graphics/Path;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsDrawing:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private mPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/view/Point;",
            ">;"
        }
    .end annotation
.end field

.field private minDeep:F

.field private misCandraw:Ljava/lang/Boolean;

.field rawSigBytes:[B

.field rawSigNewDatas:I

.field private scaley:F

.field startX:I

.field private viewHeight:I

.field x:I

.field xRate:F

.field y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->viewHeight:I

    const/16 v0, 0x28

    .line 31
    iput v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->gourdDataLenght:I

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->misCandraw:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    .line 60
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigNewDatas:I

    .line 62
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->x:I

    const/16 v0, 0x190

    .line 63
    iput v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->y:I

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x3e8

    .line 66
    iput v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimate:I

    const/16 v0, 0x7cf

    .line 68
    iput v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    .line 140
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 141
    iput v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->xRate:F

    .line 299
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->deepLen:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 305
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->lineSmoothness:F

    .line 309
    iput v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->drawScale:F

    .line 72
    invoke-direct {p0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->viewHeight:I

    const/16 p2, 0x28

    .line 31
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->gourdDataLenght:I

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->misCandraw:Ljava/lang/Boolean;

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    .line 60
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigNewDatas:I

    .line 62
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->x:I

    const/16 p2, 0x190

    .line 63
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->y:I

    .line 64
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPaint:Landroid/graphics/Paint;

    const/16 p2, 0x3e8

    .line 66
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimate:I

    const/16 p2, 0x7cf

    .line 68
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    .line 140
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 141
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->xRate:F

    .line 299
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->deepLen:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 305
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->lineSmoothness:F

    .line 309
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->drawScale:F

    .line 77
    invoke-direct {p0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->viewHeight:I

    const/16 p2, 0x28

    .line 31
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->gourdDataLenght:I

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->misCandraw:Ljava/lang/Boolean;

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    .line 60
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigNewDatas:I

    .line 62
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->x:I

    const/16 p2, 0x190

    .line 63
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->y:I

    .line 64
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPaint:Landroid/graphics/Paint;

    const/16 p2, 0x3e8

    .line 66
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimate:I

    const/16 p2, 0x7cf

    .line 68
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    .line 140
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 141
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->xRate:F

    .line 299
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->deepLen:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 305
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->lineSmoothness:F

    .line 309
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->drawScale:F

    .line 82
    invoke-direct {p0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->initView()V

    return-void
.end method

.method private draw()V
    .locals 9

    .line 185
    iget v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigNewDatas:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigNewDatas:I

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    iput-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mCanvas:Landroid/graphics/Canvas;

    const-string v3, "#24394E"

    .line 190
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    .line 193
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    array-length v2, v2

    const/16 v3, 0x3e8

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    array-length v2, v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_f

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    array-length v2, v2

    iput v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimate:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    .line 195
    iput v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    .line 196
    :goto_0
    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimate:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_f

    .line 197
    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimate:I

    if-ge v0, v2, :cond_7

    .line 198
    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->deepLen:I

    if-ge v0, v2, :cond_4

    .line 199
    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->gourdDataLenght:I

    if-ge v0, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    aget-byte v2, v2, v0

    goto :goto_1

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    aget-byte v2, v2, v0

    :goto_1
    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    cmpg-float v3, v2, v5

    if-gez v3, :cond_2

    const/4 v2, 0x0

    .line 207
    :cond_2
    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->xRate:F

    mul-float v2, v2, v3

    int-to-float v3, v0

    .line 208
    iget v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->scaley:F

    mul-float v3, v3, v6

    .line 209
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v6, :cond_3

    .line 210
    iget-object v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 212
    :cond_3
    iget v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->ReduceVal:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_e

    .line 213
    iget-object v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->ReduceVal:F

    sub-float/2addr v3, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 217
    :cond_4
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    cmpg-float v3, v2, v5

    if-gez v3, :cond_5

    const/4 v2, 0x0

    .line 221
    :cond_5
    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->xRate:F

    mul-float v2, v2, v3

    int-to-float v3, v0

    .line 222
    iget v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->scaley:F

    mul-float v3, v3, v6

    .line 223
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v6, :cond_6

    .line 224
    iget-object v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 226
    :cond_6
    iget v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->ReduceVal:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_e

    .line 227
    iget-object v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->ReduceVal:F

    sub-float/2addr v3, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 235
    :cond_7
    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->deepLen:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    if-le v2, v3, :cond_b

    .line 236
    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->gourdDataLenght:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_8

    .line 237
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    aget-byte v2, v2, v3

    goto :goto_2

    .line 240
    :cond_8
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    aget-byte v2, v2, v3

    :goto_2
    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    cmpg-float v3, v2, v5

    if-gez v3, :cond_9

    const/4 v2, 0x0

    .line 245
    :cond_9
    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->xRate:F

    mul-float v2, v2, v3

    .line 246
    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->scaley:F

    mul-float v3, v3, v6

    .line 247
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v6, :cond_a

    .line 248
    iget-object v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 250
    :cond_a
    iget v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->ReduceVal:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_e

    .line 251
    iget-object v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->ReduceVal:F

    sub-float/2addr v3, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 255
    :cond_b
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    cmpg-float v3, v2, v5

    if-gez v3, :cond_c

    const/4 v2, 0x0

    .line 259
    :cond_c
    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->xRate:F

    mul-float v2, v2, v3

    .line 260
    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->scaley:F

    mul-float v3, v3, v6

    .line 261
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v6, :cond_d

    .line 262
    iget-object v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 264
    :cond_d
    iget v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->ReduceVal:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_e

    .line 265
    iget-object v6, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->ReduceVal:F

    sub-float/2addr v3, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 272
    :cond_f
    invoke-direct {p0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->measurePath()V

    .line 273
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 274
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 275
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iget v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->drawScale:F

    mul-float v2, v2, v3

    .line 277
    iget-object v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3, v5, v2, v0, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 279
    iget-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-array v0, v4, [F

    .line 281
    iget-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_10
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_12

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 290
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_12

    .line 293
    :goto_4
    iget-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 292
    :goto_5
    iget-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_11

    .line 293
    iget-object v2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_11
    throw v0

    :cond_12
    :goto_6
    return-void
.end method

.method private initView()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mHolder:Landroid/view/SurfaceHolder;

    .line 87
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->setFocusable(Z)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->setFocusableInTouchMode(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->setKeepScreenOn(Z)V

    .line 93
    iget-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private measurePath()V
    .locals 21

    move-object/from16 v0, p0

    .line 314
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPath:Landroid/graphics/Path;

    .line 315
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mAssistPath:Landroid/graphics/Path;

    .line 325
    iget-object v1, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v1, :cond_7

    .line 327
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 328
    iget-object v3, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/view/Point;

    .line 329
    iget v5, v3, Lcom/powervision/gcs/view/Point;->x:F

    .line 330
    iget v3, v3, Lcom/powervision/gcs/view/Point;->y:F

    move/from16 v20, v5

    move v5, v3

    move/from16 v3, v20

    .line 332
    :cond_0
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_2

    if-lez v9, :cond_1

    .line 335
    iget-object v4, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    add-int/lit8 v7, v9, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/gcs/view/Point;

    .line 336
    iget v7, v4, Lcom/powervision/gcs/view/Point;->x:F

    .line 337
    iget v4, v4, Lcom/powervision/gcs/view/Point;->y:F

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    goto :goto_1

    :cond_1
    move v4, v3

    move v7, v5

    .line 345
    :cond_2
    :goto_1
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v6, 0x1

    if-le v9, v6, :cond_3

    .line 348
    iget-object v6, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    add-int/lit8 v8, v9, -0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/view/Point;

    .line 349
    iget v8, v6, Lcom/powervision/gcs/view/Point;->x:F

    .line 350
    iget v6, v6, Lcom/powervision/gcs/view/Point;->y:F

    move/from16 v20, v8

    move v8, v6

    move/from16 v6, v20

    goto :goto_2

    :cond_3
    move v6, v4

    move v8, v7

    :cond_4
    :goto_2
    add-int/lit8 v10, v1, -0x1

    if-ge v9, v10, :cond_5

    .line 360
    iget-object v10, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/powervision/gcs/view/Point;

    .line 361
    iget v11, v10, Lcom/powervision/gcs/view/Point;->x:F

    .line 362
    iget v10, v10, Lcom/powervision/gcs/view/Point;->y:F

    move/from16 v18, v10

    move/from16 v17, v11

    goto :goto_3

    :cond_5
    move/from16 v17, v3

    move/from16 v18, v5

    :goto_3
    if-nez v9, :cond_6

    .line 371
    iget-object v6, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 372
    iget-object v6, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mAssistPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    :cond_6
    sub-float v6, v3, v6

    sub-float v8, v5, v8

    sub-float v10, v17, v4

    sub-float v11, v18, v7

    .line 379
    iget v12, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->lineSmoothness:F

    mul-float v6, v6, v12

    add-float/2addr v6, v4

    mul-float v8, v8, v12

    add-float/2addr v8, v7

    mul-float v10, v10, v12

    sub-float v15, v3, v10

    mul-float v12, v12, v11

    sub-float v14, v5, v12

    .line 384
    iget-object v10, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPath:Landroid/graphics/Path;

    move v11, v6

    move v12, v8

    move v13, v15

    move/from16 v19, v14

    move v2, v15

    move v15, v3

    move/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 388
    iget-object v10, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mAssistPath:Landroid/graphics/Path;

    invoke-virtual {v10, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 389
    iget-object v6, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mAssistPath:Landroid/graphics/Path;

    move/from16 v8, v19

    invoke-virtual {v6, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 390
    iget-object v2, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mAssistPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move v6, v4

    move v8, v7

    move v4, v3

    move v7, v5

    move/from16 v3, v17

    move/from16 v5, v18

    goto/16 :goto_0

    .line 401
    :cond_7
    new-instance v1, Landroid/graphics/PathMeasure;

    iget-object v2, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, v0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPathMeasure:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mAssistPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 406
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    const-string v1, "#24394E"

    .line 408
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 409
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 145
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 146
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->viewHeight:I

    .line 147
    iget p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->startX:I

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x43480000    # 200.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->xRate:F

    const/4 p1, 0x1

    .line 151
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigNewDatas:I

    return-void
.end method

.method public run()V
    .locals 2

    .line 132
    :goto_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mIsDrawing:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->misCandraw:Ljava/lang/Boolean;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->misCandraw:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->draw()V

    .line 136
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method public setDeep(F)V
    .locals 1

    .line 302
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->deepToDataAbsolute:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->deepLen:I

    return-void
.end method

.method public setManualDeep(FFI)V
    .locals 1

    .line 170
    iput p2, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->minDeep:F

    .line 171
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->MaxDeep:F

    .line 172
    iget v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->viewHeight:I

    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr v0, p3

    const/high16 p3, 0x42480000    # 50.0f

    mul-float v0, v0, p3

    sub-float/2addr p1, p2

    div-float/2addr v0, p1

    iput v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->scaley:F

    mul-float v0, v0, p2

    const/high16 p1, 0x41200000    # 10.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    .line 173
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->ReduceVal:F

    return-void
.end method

.method public setRawSigBytes([B)V
    .locals 3

    .line 38
    array-length v0, p1

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_2

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigBytes:[B

    .line 41
    array-length p1, p1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x50

    goto :goto_0

    :cond_1
    const/16 p1, 0x28

    :goto_0
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->gourdDataLenght:I

    :cond_2
    return-void
.end method

.method public setRawSigNewDatas(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->rawSigNewDatas:I

    return-void
.end method

.method public setScale(FI)V
    .locals 1

    .line 159
    iget v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->viewHeight:I

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    mul-float p1, p1, v0

    iput p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->scaley:F

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mIsDrawing:Z

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->misCandraw:Ljava/lang/Boolean;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->misCandraw:Ljava/lang/Boolean;

    .line 106
    iget-object p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mCanvas:Landroid/graphics/Canvas;

    if-eqz p1, :cond_0

    const-string v1, "#24394E"

    .line 108
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 109
    iget-object p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 111
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p1

    .line 111
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->misCandraw:Ljava/lang/Boolean;

    monitor-enter p1

    const/4 v0, 0x0

    .line 125
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->misCandraw:Ljava/lang/Boolean;

    .line 126
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iput-boolean v0, p0, Lcom/powervision/gcs/view/MySurfaceViewRawSig;->mIsDrawing:Z

    return-void

    :catchall_0
    move-exception v0

    .line 126
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
