.class Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;
.super Ljava/lang/Object;
.source "CircleProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/CircleProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CircleAttribute"
.end annotation


# instance fields
.field public mBRoundPaintsFill:Z

.field public mBottomPaint:Landroid/graphics/Paint;

.field public mDrawPos:I

.field public mMainPaints:Landroid/graphics/Paint;

.field public mPaintColor:I

.field public mPaintWidth:I

.field public mRoundOval:Landroid/graphics/RectF;

.field public mSidePaintInterval:I

.field public mSubPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/powervision/gcs/view/CircleProgress;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/CircleProgress;)V
    .locals 2

    .line 193
    iput-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mRoundOval:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBRoundPaintsFill:Z

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSidePaintInterval:I

    .line 197
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mPaintWidth:I

    const/16 v0, -0x3400

    .line 198
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mPaintColor:I

    const/16 v0, -0x5a

    .line 199
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mDrawPos:I

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mMainPaints:Landroid/graphics/Paint;

    .line 202
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mMainPaints:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mMainPaints:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mPaintWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mMainPaints:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSubPaint:Landroid/graphics/Paint;

    .line 208
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 209
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSubPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSubPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mPaintWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSubPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBottomPaint:Landroid/graphics/Paint;

    .line 214
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBottomPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBottomPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mPaintWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBottomPaint:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public autoFix(II)V
    .locals 7

    .line 260
    iget v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSidePaintInterval:I

    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mRoundOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mPaintWidth:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr p1, v5

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {v1, v3, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/CircleProgress;->getPaddingLeft()I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/CircleProgress;->getPaddingRight()I

    move-result v1

    .line 267
    iget-object v2, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-virtual {v2}, Lcom/powervision/gcs/view/CircleProgress;->getPaddingTop()I

    move-result v2

    .line 268
    iget-object v3, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-virtual {v3}, Lcom/powervision/gcs/view/CircleProgress;->getPaddingBottom()I

    move-result v3

    .line 271
    iget-object v4, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mRoundOval:Landroid/graphics/RectF;

    iget v5, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mPaintWidth:I

    div-int/lit8 v6, v5, 0x2

    add-int/2addr v0, v6

    int-to-float v0, v0

    div-int/lit8 v6, v5, 0x2

    add-int/2addr v2, v6

    int-to-float v2, v2

    sub-int/2addr p1, v1

    div-int/lit8 v1, v5, 0x2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-int/2addr p2, v3

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr p2, v5

    int-to-float p2, p2

    invoke-virtual {v4, v0, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void
.end method

.method public setFill(Z)V
    .locals 1

    .line 244
    iput-boolean p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBRoundPaintsFill:Z

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mMainPaints:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSubPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBottomPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mMainPaints:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSubPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 252
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBottomPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mMainPaints:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0xffffff

    and-int/2addr p1, v0

    const/high16 v0, 0x66000000

    or-int/2addr p1, v0

    .line 237
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPaintWidth(I)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mMainPaints:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CircleAttribute;->mBottomPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
