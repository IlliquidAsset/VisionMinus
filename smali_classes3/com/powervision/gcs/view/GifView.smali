.class public Lcom/powervision/gcs/view/GifView;
.super Landroid/view/View;
.source "GifView.java"


# static fields
.field private static final DEFAULT_MOVIE_VIEW_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimationTime:I

.field private mLeft:F

.field private mMeasuredMovieHeight:I

.field private mMeasuredMovieWidth:I

.field private mMovieResourceId:I

.field private mMovieStart:J

.field private volatile mPaused:Z

.field private mScale:F

.field private mTop:F

.field private mVisible:Z

.field private movie:Landroid/graphics/Movie;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    sget v0, Lcom/powervision/gcs/R$styleable;->CustomTheme_gifViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mVisible:Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/gcs/view/GifView;->setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private drawMovieFrame(Landroid/graphics/Canvas;)V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/powervision/gcs/view/GifView;->movie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/powervision/gcs/view/GifView;->mCurrentAnimationTime:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    iget v0, p0, Lcom/powervision/gcs/view/GifView;->mScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 254
    iget-object v0, p0, Lcom/powervision/gcs/view/GifView;->movie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/powervision/gcs/view/GifView;->mLeft:F

    iget v2, p0, Lcom/powervision/gcs/view/GifView;->mScale:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/powervision/gcs/view/GifView;->mTop:F

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private invalidateView()V
    .locals 2

    .line 216
    iget-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mVisible:Z

    if-eqz v0, :cond_1

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/view/GifView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 75
    :cond_0
    sget-object v0, Lcom/powervision/gcs/R$styleable;->GifView:[I

    sget v1, Lcom/powervision/gcs/R$style;->Widget_GifView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    sget p2, Lcom/powervision/gcs/R$styleable;->GifView_gif:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/GifView;->mMovieResourceId:I

    .line 80
    sget p2, Lcom/powervision/gcs/R$styleable;->GifView_paused:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/gcs/view/GifView;->mPaused:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    iget p1, p0, Lcom/powervision/gcs/view/GifView;->mMovieResourceId:I

    if-eq p1, p3, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/powervision/gcs/view/GifView;->mMovieResourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/GifView;->movie:Landroid/graphics/Movie;

    :cond_1
    return-void
.end method

.method private updateAnimationTime()V
    .locals 7

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 231
    iget-wide v2, p0, Lcom/powervision/gcs/view/GifView;->mMovieStart:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 232
    iput-wide v0, p0, Lcom/powervision/gcs/view/GifView;->mMovieStart:J

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/view/GifView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    .line 241
    :cond_1
    iget-wide v3, p0, Lcom/powervision/gcs/view/GifView;->mMovieStart:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/powervision/gcs/view/GifView;->mCurrentAnimationTime:I

    return-void
.end method


# virtual methods
.method public getGifResource()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/powervision/gcs/view/GifView;->mMovieResourceId:I

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mPaused:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/powervision/gcs/view/GifView;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 199
    iget-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mPaused:Z

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/powervision/gcs/view/GifView;->updateAnimationTime()V

    .line 201
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/GifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    .line 202
    invoke-direct {p0}, Lcom/powervision/gcs/view/GifView;->invalidateView()V

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/GifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 186
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 190
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/powervision/gcs/view/GifView;->mMeasuredMovieWidth:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/GifView;->mLeft:F

    .line 191
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->getHeight()I

    move-result p1

    iget p3, p0, Lcom/powervision/gcs/view/GifView;->mMeasuredMovieHeight:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/view/GifView;->mTop:F

    .line 193
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/powervision/gcs/view/GifView;->mVisible:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/powervision/gcs/view/GifView;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/powervision/gcs/view/GifView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v0, p1, :cond_0

    int-to-float v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 157
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v1, p1, :cond_1

    int-to-float p2, v1

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_1

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 169
    :goto_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    iput v3, p0, Lcom/powervision/gcs/view/GifView;->mScale:F

    int-to-float p1, v0

    mul-float p1, p1, v3

    float-to-int p1, p1

    .line 171
    iput p1, p0, Lcom/powervision/gcs/view/GifView;->mMeasuredMovieWidth:I

    int-to-float p2, v1

    mul-float p2, p2, v3

    float-to-int p2, p2

    .line 172
    iput p2, p0, Lcom/powervision/gcs/view/GifView;->mMeasuredMovieHeight:I

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/GifView;->setMeasuredDimension(II)V

    goto :goto_2

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/GifView;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .line 261
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    iput-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mVisible:Z

    .line 263
    invoke-direct {p0}, Lcom/powervision/gcs/view/GifView;->invalidateView()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 269
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 270
    :goto_0
    iput-boolean p1, p0, Lcom/powervision/gcs/view/GifView;->mVisible:Z

    .line 271
    invoke-direct {p0}, Lcom/powervision/gcs/view/GifView;->invalidateView()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 277
    :goto_0
    iput-boolean p1, p0, Lcom/powervision/gcs/view/GifView;->mVisible:Z

    .line 278
    invoke-direct {p0}, Lcom/powervision/gcs/view/GifView;->invalidateView()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mPaused:Z

    .line 119
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->invalidate()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .line 102
    iget-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/powervision/gcs/view/GifView;->mPaused:Z

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/powervision/gcs/view/GifView;->mCurrentAnimationTime:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/gcs/view/GifView;->mMovieStart:J

    .line 111
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGifResource(I)V
    .locals 1

    .line 90
    iput p1, p0, Lcom/powervision/gcs/view/GifView;->mMovieResourceId:I

    .line 91
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/powervision/gcs/view/GifView;->mMovieResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/GifView;->movie:Landroid/graphics/Movie;

    .line 92
    invoke-virtual {p0}, Lcom/powervision/gcs/view/GifView;->requestLayout()V

    return-void
.end method
