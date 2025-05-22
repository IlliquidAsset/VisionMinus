.class public Lcom/powervision/gcs/Texture/TextureVerticalView;
.super Landroid/view/TextureView;
.source "TextureVerticalView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
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

.field private scaleY:F

.field startX:I

.field private unitY:F

.field private viewHeight:I

.field xRate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->misCandraw:Ljava/lang/Boolean;

    .line 29
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->viewHeight:I

    .line 30
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigNewDatas:I

    .line 31
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 32
    iput p2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->xRate:F

    .line 35
    iput p2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->scaleY:F

    const/16 v0, 0x3e8

    .line 36
    iput v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimate:I

    const/16 v0, 0x28

    .line 37
    iput v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->gourdDataLenght:I

    const/16 v0, 0x7cf

    .line 39
    iput v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimatem2M1:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPaint:Landroid/graphics/Paint;

    .line 124
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->deepLen:I

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    const p1, 0x3e4ccccd    # 0.2f

    .line 278
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->lineSmoothness:F

    .line 282
    iput p2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->drawScale:F

    .line 44
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->init()V

    return-void
.end method

.method private draw()V
    .locals 9

    .line 156
    iget v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigNewDatas:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigNewDatas:I

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    iput-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {p0, v2}, Lcom/powervision/gcs/Texture/TextureVerticalView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string v3, "#24394E"

    .line 165
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 166
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    if-nez v2, :cond_3

    const-string v0, "lzqdraw"

    const-string v1, "== null"

    .line 167
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    .line 170
    :cond_3
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    .line 172
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    array-length v2, v2

    const/16 v3, 0x3e8

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    array-length v2, v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_13

    .line 173
    :cond_4
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    array-length v2, v2

    iput v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimate:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    .line 174
    iput v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimatem2M1:I

    .line 175
    :goto_0
    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimate:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_13

    .line 176
    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimate:I

    if-ge v0, v2, :cond_b

    .line 177
    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->deepLen:I

    if-ge v0, v2, :cond_8

    .line 178
    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->gourdDataLenght:I

    if-ge v0, v2, :cond_5

    .line 179
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    aget-byte v2, v2, v0

    goto :goto_1

    .line 181
    :cond_5
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    aget-byte v2, v2, v0

    :goto_1
    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    cmpg-float v3, v2, v5

    if-gez v3, :cond_6

    const/4 v2, 0x0

    .line 186
    :cond_6
    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->xRate:F

    mul-float v2, v2, v3

    int-to-float v3, v0

    .line 187
    iget v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->unitY:F

    mul-float v3, v3, v6

    .line 188
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v6, :cond_7

    .line 189
    iget-object v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 191
    :cond_7
    iget v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->ReduceVal:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_12

    .line 192
    iget-object v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->ReduceVal:F

    sub-float/2addr v3, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 196
    :cond_8
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    cmpg-float v3, v2, v5

    if-gez v3, :cond_9

    const/4 v2, 0x0

    .line 200
    :cond_9
    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->xRate:F

    mul-float v2, v2, v3

    int-to-float v3, v0

    .line 201
    iget v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->unitY:F

    mul-float v3, v3, v6

    .line 202
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v6, :cond_a

    .line 203
    iget-object v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 205
    :cond_a
    iget v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->ReduceVal:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_12

    .line 206
    iget-object v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->ReduceVal:F

    sub-float/2addr v3, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 214
    :cond_b
    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->deepLen:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimatem2M1:I

    if-le v2, v3, :cond_f

    .line 215
    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimatem2M1:I

    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->gourdDataLenght:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_c

    .line 216
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    aget-byte v2, v2, v3

    goto :goto_2

    .line 219
    :cond_c
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    aget-byte v2, v2, v3

    :goto_2
    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    cmpg-float v3, v2, v5

    if-gez v3, :cond_d

    const/4 v2, 0x0

    .line 224
    :cond_d
    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->xRate:F

    mul-float v2, v2, v3

    .line 225
    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->unitY:F

    mul-float v3, v3, v6

    .line 226
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v6, :cond_e

    .line 227
    iget-object v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 229
    :cond_e
    iget v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->ReduceVal:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_12

    .line 230
    iget-object v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->ReduceVal:F

    sub-float/2addr v3, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 234
    :cond_f
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    cmpg-float v3, v2, v5

    if-gez v3, :cond_10

    const/4 v2, 0x0

    .line 238
    :cond_10
    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->xRate:F

    mul-float v2, v2, v3

    .line 239
    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->dataLimatem2M1:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->unitY:F

    mul-float v3, v3, v6

    .line 240
    sget-boolean v6, Lcom/powervision/gcs/utils/SonarStateHelper;->Auto:Z

    if-eqz v6, :cond_11

    .line 241
    iget-object v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 243
    :cond_11
    iget v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->ReduceVal:F

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_12

    .line 244
    iget-object v6, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    new-instance v7, Lcom/powervision/gcs/view/Point;

    iget v8, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->ReduceVal:F

    sub-float/2addr v3, v2

    invoke-direct {v7, v8, v3}, Lcom/powervision/gcs/view/Point;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 251
    :cond_13
    invoke-direct {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->measurePath()V

    .line 252
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 253
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 254
    iget-object v2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iget v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->drawScale:F

    mul-float v2, v2, v3

    .line 256
    iget-object v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3, v5, v2, v0, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 258
    iget-object v1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-array v0, v4, [F

    .line 260
    iget-object v1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :cond_14
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_16

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 269
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_16

    .line 272
    :goto_4
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 271
    :goto_5
    iget-object v1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_15

    .line 272
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_15
    throw v0

    :cond_16
    :goto_6
    return-void
.end method

.method private measurePath()V
    .locals 21

    move-object/from16 v0, p0

    .line 287
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPath:Landroid/graphics/Path;

    .line 288
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mAssistPath:Landroid/graphics/Path;

    .line 298
    iget-object v1, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

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

    .line 300
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 301
    iget-object v3, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/view/Point;

    .line 302
    iget v5, v3, Lcom/powervision/gcs/view/Point;->x:F

    .line 303
    iget v3, v3, Lcom/powervision/gcs/view/Point;->y:F

    move/from16 v20, v5

    move v5, v3

    move/from16 v3, v20

    .line 305
    :cond_0
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_2

    if-lez v9, :cond_1

    .line 308
    iget-object v4, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    add-int/lit8 v7, v9, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/gcs/view/Point;

    .line 309
    iget v7, v4, Lcom/powervision/gcs/view/Point;->x:F

    .line 310
    iget v4, v4, Lcom/powervision/gcs/view/Point;->y:F

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    goto :goto_1

    :cond_1
    move v4, v3

    move v7, v5

    .line 318
    :cond_2
    :goto_1
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v6, 0x1

    if-le v9, v6, :cond_3

    .line 321
    iget-object v6, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    add-int/lit8 v8, v9, -0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/view/Point;

    .line 322
    iget v8, v6, Lcom/powervision/gcs/view/Point;->x:F

    .line 323
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

    .line 333
    iget-object v10, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/powervision/gcs/view/Point;

    .line 334
    iget v11, v10, Lcom/powervision/gcs/view/Point;->x:F

    .line 335
    iget v10, v10, Lcom/powervision/gcs/view/Point;->y:F

    move/from16 v18, v10

    move/from16 v17, v11

    goto :goto_3

    :cond_5
    move/from16 v17, v3

    move/from16 v18, v5

    :goto_3
    if-nez v9, :cond_6

    .line 344
    iget-object v6, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 345
    iget-object v6, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mAssistPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    :cond_6
    sub-float v6, v3, v6

    sub-float v8, v5, v8

    sub-float v10, v17, v4

    sub-float v11, v18, v7

    .line 352
    iget v12, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->lineSmoothness:F

    mul-float v6, v6, v12

    add-float/2addr v6, v4

    mul-float v8, v8, v12

    add-float/2addr v8, v7

    mul-float v10, v10, v12

    sub-float v15, v3, v10

    mul-float v12, v12, v11

    sub-float v14, v5, v12

    .line 357
    iget-object v10, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPath:Landroid/graphics/Path;

    move v11, v6

    move v12, v8

    move v13, v15

    move/from16 v19, v14

    move v2, v15

    move v15, v3

    move/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 361
    iget-object v10, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mAssistPath:Landroid/graphics/Path;

    invoke-virtual {v10, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 362
    iget-object v6, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mAssistPath:Landroid/graphics/Path;

    move/from16 v8, v19

    invoke-virtual {v6, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 363
    iget-object v2, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mAssistPath:Landroid/graphics/Path;

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

    .line 374
    :cond_7
    new-instance v1, Landroid/graphics/PathMeasure;

    iget-object v2, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, v0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPathMeasure:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mAssistPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 380
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    const-string v1, "#24394E"

    .line 382
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 383
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    invoke-virtual {p0, p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mIsDrawing:Z

    .line 61
    iput p3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->viewHeight:I

    .line 63
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    .line 64
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x43480000    # 200.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->xRate:F

    .line 65
    iget-object p2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->misCandraw:Ljava/lang/Boolean;

    monitor-enter p2

    .line 66
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->misCandraw:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz p1, :cond_0

    const-string p3, "#24394E"

    .line 69
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 70
    iget-object p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 72
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->misCandraw:Ljava/lang/Boolean;

    monitor-enter p1

    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->misCandraw:Ljava/lang/Boolean;

    .line 99
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iput-boolean v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mIsDrawing:Z

    return v0

    :catchall_0
    move-exception v0

    .line 99
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p1, "lzqver"

    const-string p2, "change change "

    .line 87
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput p3, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->viewHeight:I

    .line 89
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->startX:I

    .line 90
    iget p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->scaleY:F

    iget p2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->viewHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x43fa0000    # 500.0f

    div-float/2addr p2, p3

    mul-float p1, p1, p2

    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->unitY:F

    .line 91
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x43480000    # 200.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->xRate:F

    const/4 p1, 0x1

    .line 92
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigNewDatas:I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    .line 112
    :goto_0
    iget-boolean v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->mIsDrawing:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->misCandraw:Ljava/lang/Boolean;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->misCandraw:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->draw()V

    .line 116
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

    .line 127
    sget v0, Lcom/powervision/gcs/utils/SonarStateHelper;->deepToDataAbsolute:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->deepLen:I

    return-void
.end method

.method public setManualDeep(FFI)V
    .locals 1

    .line 146
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->minDeep:F

    .line 147
    iput p2, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->MaxDeep:F

    .line 148
    iget v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->viewHeight:I

    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr v0, p3

    const/high16 p3, 0x42480000    # 50.0f

    mul-float v0, v0, p3

    sub-float/2addr p2, p1

    div-float/2addr v0, p2

    iput v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->unitY:F

    mul-float v0, v0, p1

    const/high16 p1, 0x41200000    # 10.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    .line 149
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->ReduceVal:F

    return-void
.end method

.method public setRawSigBytes([B)V
    .locals 3

    if-nez p1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    goto :goto_1

    .line 136
    :cond_0
    array-length v0, p1

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    array-length v0, p1

    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_3

    .line 138
    :cond_1
    iput-object p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigBytes:[B

    .line 139
    array-length p1, p1

    if-ne p1, v1, :cond_2

    const/16 p1, 0x50

    goto :goto_0

    :cond_2
    const/16 p1, 0x28

    :goto_0
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->gourdDataLenght:I

    :cond_3
    :goto_1
    return-void
.end method

.method public setRawSigNewDatas(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->rawSigNewDatas:I

    return-void
.end method

.method public setScale(FI)V
    .locals 2

    .line 77
    iget v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->viewHeight:I

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside setScale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqVer"

    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->scaleY:F

    .line 80
    iget v0, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->viewHeight:I

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    mul-float p1, p1, v0

    iput p1, p0, Lcom/powervision/gcs/Texture/TextureVerticalView;->unitY:F

    :cond_0
    return-void
.end method
