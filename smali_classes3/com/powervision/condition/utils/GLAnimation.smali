.class public Lcom/powervision/condition/utils/GLAnimation;
.super Ljava/lang/Object;
.source "GLAnimation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Lcom/powervision/condition/utils/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Lcom/powervision/condition/utils/GLTransformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field private mZAdjustment:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mEnded:Z

    .line 27
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStarted:Z

    .line 28
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mCycleFlip:Z

    .line 29
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mInitialized:Z

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillBefore:Z

    .line 31
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillAfter:Z

    .line 32
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillEnabled:Z

    const-wide/16 v2, -0x1

    .line 33
    iput-wide v2, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartTime:J

    const-wide/16 v2, 0x1f4

    .line 35
    iput-wide v2, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    .line 36
    iput v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatCount:I

    .line 37
    iput v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeated:I

    .line 38
    iput v1, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 43
    iput v2, p0, Lcom/powervision/condition/utils/GLAnimation;->mScaleFactor:F

    .line 44
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mDetachWallpaper:Z

    .line 45
    iput-boolean v1, p0, Lcom/powervision/condition/utils/GLAnimation;->mMore:Z

    .line 46
    iput-boolean v1, p0, Lcom/powervision/condition/utils/GLAnimation;->mOneMoreTime:Z

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mRegion:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Lcom/powervision/condition/utils/GLTransformation;

    invoke-direct {v0}, Lcom/powervision/condition/utils/GLTransformation;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mPreviousTransformation:Lcom/powervision/condition/utils/GLTransformation;

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/condition/utils/GLAnimation;->ensureInterpolator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private fireAnimationEnd()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mListener:Lcom/powervision/condition/utils/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 408
    iget-object v1, p0, Lcom/powervision/condition/utils/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 409
    invoke-interface {v0}, Lcom/powervision/condition/utils/Animation$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private fireAnimationRepeat()V
    .locals 0

    return-void
.end method

.method private fireAnimationStart()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mListener:Lcom/powervision/condition/utils/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/powervision/condition/utils/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/powervision/condition/utils/Animation$AnimationListener;->onAnimationStart()V

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLcom/powervision/condition/utils/GLTransformation;)V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mEnded:Z

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/powervision/condition/utils/GLAnimation;->fireAnimationEnd()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mEnded:Z

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 88
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartTime:J

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mOneMoreTime:Z

    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mMore:Z

    return-void
.end method

.method public clone()Lcom/powervision/condition/utils/GLAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 64
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/condition/utils/GLAnimation;

    .line 65
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/powervision/condition/utils/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 66
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/powervision/condition/utils/GLAnimation;->mRegion:Landroid/graphics/RectF;

    .line 67
    new-instance v1, Lcom/powervision/condition/utils/GLTransformation;

    invoke-direct {v1}, Lcom/powervision/condition/utils/GLTransformation;-><init>()V

    iput-object v1, v0, Lcom/powervision/condition/utils/GLAnimation;->mPreviousTransformation:Lcom/powervision/condition/utils/GLTransformation;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/powervision/condition/utils/GLAnimation;->clone()Lcom/powervision/condition/utils/GLAnimation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 4

    .line 316
    invoke-virtual {p0}, Lcom/powervision/condition/utils/GLAnimation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/powervision/condition/utils/GLAnimation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/powervision/condition/utils/GLAnimation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public detach()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mEnded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mEnded:Z

    .line 95
    invoke-direct {p0}, Lcom/powervision/condition/utils/GLAnimation;->fireAnimationEnd()V

    :cond_0
    return-void
.end method

.method protected ensureInterpolator()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mBackgroundColor:I

    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 261
    iget-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mRegion:Landroid/graphics/RectF;

    .line 448
    iget-object v1, p0, Lcom/powervision/condition/utils/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    .line 449
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 450
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 451
    invoke-virtual {p5, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 452
    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 453
    invoke-virtual {p5, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 454
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatMode:I

    return v0
.end method

.method protected getScaleFactor()F
    .locals 1

    .line 245
    iget v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mScaleFactor:F

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .line 265
    iget-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 257
    iget-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLcom/powervision/condition/utils/GLTransformation;)Z
    .locals 11

    .line 320
    iget-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 321
    iput-wide p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartTime:J

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/condition/utils/GLAnimation;->getStartOffset()J

    move-result-wide v0

    .line 325
    iget-wide v4, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    cmp-long v10, v4, v6

    if-eqz v10, :cond_1

    .line 328
    iget-wide v6, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartTime:J

    add-long/2addr v6, v0

    sub-long/2addr p1, v6

    long-to-float p1, p1

    long-to-float p2, v4

    div-float/2addr p1, p2

    goto :goto_0

    .line 330
    :cond_1
    iget-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartTime:J

    cmp-long v4, p1, v0

    if-gez v4, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    cmpl-float v1, p1, v9

    if-ltz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    xor-int/lit8 v4, v1, 0x1

    .line 334
    iput-boolean v4, p0, Lcom/powervision/condition/utils/GLAnimation;->mMore:Z

    .line 335
    iget-boolean v4, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillEnabled:Z

    if-nez v4, :cond_4

    .line 336
    invoke-static {p1, v9}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v8}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_4
    cmpl-float v4, p1, v8

    if-gez v4, :cond_5

    .line 339
    iget-boolean v4, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillBefore:Z

    if-eqz v4, :cond_6

    :cond_5
    cmpg-float v4, p1, v9

    if-lez v4, :cond_7

    iget-boolean v4, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillAfter:Z

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_b

    .line 341
    iget-boolean v4, p0, Lcom/powervision/condition/utils/GLAnimation;->mStarted:Z

    if-nez v4, :cond_8

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/powervision/condition/utils/GLAnimation;->fireAnimationStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v4

    .line 345
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 348
    :goto_4
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStarted:Z

    .line 351
    :cond_8
    iget-boolean v4, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillEnabled:Z

    if-eqz v4, :cond_9

    .line 352
    invoke-static {p1, v9}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v8}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 355
    :cond_9
    iget-boolean v4, p0, Lcom/powervision/condition/utils/GLAnimation;->mCycleFlip:Z

    if-eqz v4, :cond_a

    sub-float p1, v9, p1

    .line 359
    :cond_a
    iget-object v4, p0, Lcom/powervision/condition/utils/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 360
    invoke-virtual {p0, p1, p3}, Lcom/powervision/condition/utils/GLAnimation;->applyTransformation(FLcom/powervision/condition/utils/GLTransformation;)V

    :cond_b
    if-eqz v1, :cond_f

    .line 364
    iget p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatCount:I

    iget p3, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeated:I

    if-ne p1, p3, :cond_c

    .line 365
    iget-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mEnded:Z

    if-nez p1, :cond_f

    .line 366
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mEnded:Z

    .line 367
    invoke-direct {p0}, Lcom/powervision/condition/utils/GLAnimation;->fireAnimationEnd()V

    goto :goto_5

    :cond_c
    if-lez p1, :cond_d

    add-int/2addr p3, v0

    .line 371
    iput p3, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeated:I

    .line 374
    :cond_d
    iget p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatMode:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_e

    .line 375
    iget-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mCycleFlip:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mCycleFlip:Z

    .line 378
    :cond_e
    iput-wide v2, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartTime:J

    .line 379
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mMore:Z

    .line 380
    invoke-direct {p0}, Lcom/powervision/condition/utils/GLAnimation;->fireAnimationRepeat()V

    .line 384
    :cond_f
    :goto_5
    iget-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mMore:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mOneMoreTime:Z

    if-eqz p1, :cond_10

    .line 385
    iput-boolean p2, p0, Lcom/powervision/condition/utils/GLAnimation;->mOneMoreTime:Z

    return v0

    .line 388
    :cond_10
    iget-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mMore:Z

    return p1
.end method

.method public getTransformation(JLcom/powervision/condition/utils/GLTransformation;F)Z
    .locals 0

    .line 418
    iput p4, p0, Lcom/powervision/condition/utils/GLAnimation;->mScaleFactor:F

    .line 419
    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/condition/utils/GLAnimation;->getTransformation(JLcom/powervision/condition/utils/GLTransformation;)Z

    move-result p1

    return p1
.end method

.method public getZAdjustment()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mZAdjustment:I

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mEnded:Z

    return v0
.end method

.method protected hasStarted()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStarted:Z

    return v0
.end method

.method public initialize()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/powervision/condition/utils/GLAnimation;->reset()V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mInitialized:Z

    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    .line 459
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 460
    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 461
    iget-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillBefore:Z

    if-eqz p1, :cond_0

    .line 462
    iget-object p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mPreviousTransformation:Lcom/powervision/condition/utils/GLTransformation;

    .line 463
    iget-object p2, p0, Lcom/powervision/condition/utils/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/powervision/condition/utils/GLAnimation;->applyTransformation(FLcom/powervision/condition/utils/GLTransformation;)V

    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 73
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mPreviousTransformation:Lcom/powervision/condition/utils/GLTransformation;

    invoke-virtual {v0}, Lcom/powervision/condition/utils/GLTransformation;->clear()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mInitialized:Z

    .line 75
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mCycleFlip:Z

    .line 76
    iput v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeated:I

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mMore:Z

    .line 78
    iput-boolean v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mOneMoreTime:Z

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    return p2

    :cond_0
    int-to-float p1, p4

    :goto_0
    mul-float p1, p1, p2

    return p1

    :cond_1
    int-to-float p1, p3

    goto :goto_0
.end method

.method public restrictDuration(J)V
    .locals 8

    .line 161
    iget-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartOffset:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, p1

    if-lez v5, :cond_0

    .line 162
    iput-wide p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartOffset:J

    .line 163
    iput-wide v3, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    .line 164
    iput v2, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatCount:I

    goto :goto_0

    .line 166
    :cond_0
    iget-wide v5, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    add-long/2addr v5, v0

    cmp-long v7, v5, p1

    if-lez v7, :cond_1

    sub-long v0, p1, v0

    .line 168
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    move-wide v5, p1

    .line 172
    :cond_1
    iget-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    cmp-long v7, v0, v3

    if-gtz v7, :cond_2

    .line 173
    iput-wide v3, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    .line 174
    iput v2, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatCount:I

    goto :goto_0

    .line 176
    :cond_2
    iget v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatCount:I

    if-ltz v0, :cond_3

    int-to-long v3, v0

    cmp-long v1, v3, p1

    if-gtz v1, :cond_3

    int-to-long v0, v0

    mul-long v0, v0, v5

    cmp-long v3, v0, p1

    if-lez v3, :cond_4

    .line 177
    :cond_3
    div-long/2addr p1, v5

    long-to-int p2, p1

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatCount:I

    if-gez p2, :cond_4

    .line 179
    iput v2, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatCount:I

    :cond_4
    :goto_0
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    long-to-float v0, v0

    mul-float v0, v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    .line 189
    iget-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartOffset:J

    long-to-float v0, v0

    mul-float v0, v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartOffset:J

    return-void
.end method

.method public setAnimationListener(Lcom/powervision/condition/utils/Animation$AnimationListener;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mListener:Lcom/powervision/condition/utils/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mBackgroundColor:I

    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mDetachWallpaper:Z

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 157
    :cond_0
    iput-wide p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mDuration:J

    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillAfter:Z

    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillBefore:Z

    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mFillEnabled:Z

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 0

    .line 141
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/condition/utils/GLAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/powervision/condition/utils/GLAnimation$1;

    invoke-direct {v0, p0}, Lcom/powervision/condition/utils/GLAnimation$1;-><init>(Lcom/powervision/condition/utils/GLAnimation;)V

    iput-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mOnStart:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/powervision/condition/utils/GLAnimation$2;

    invoke-direct {v0, p0}, Lcom/powervision/condition/utils/GLAnimation$2;-><init>(Lcom/powervision/condition/utils/GLAnimation;)V

    iput-object v0, p0, Lcom/powervision/condition/utils/GLAnimation;->mOnEnd:Ljava/lang/Runnable;

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    .line 217
    :cond_0
    iput p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeatMode:I

    return-void
.end method

.method public setStartOffset(J)V
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartOffset:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 193
    iput-wide p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mStartTime:J

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mEnded:Z

    iput-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mStarted:Z

    .line 195
    iput-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mCycleFlip:Z

    .line 196
    iput p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mRepeated:I

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mMore:Z

    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/powervision/condition/utils/GLAnimation;->mZAdjustment:I

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/powervision/condition/utils/GLAnimation;->setStartTime(J)V

    return-void
.end method

.method public startNow()V
    .locals 2

    .line 205
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/powervision/condition/utils/GLAnimation;->setStartTime(J)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
