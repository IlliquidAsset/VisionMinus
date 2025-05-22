.class public Lcom/powervision/base/views/MaterialProgressBar;
.super Landroid/widget/ProgressBar;
.source "MaterialProgressBar.java"


# static fields
.field private static final INDETERMINATE_MAX:I = 0x3e8

.field private static final PROGRESS:Ljava/lang/String; = "progress"

.field private static final SECONDARY_PROGRESS:Ljava/lang/String; = "secondaryProgress"


# instance fields
.field private animator:Landroid/animation/Animator;

.field private final duration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lcom/powervision/base/views/MaterialProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/views/MaterialProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/powervision/base/views/MaterialProgressBar;->animator:Landroid/animation/Animator;

    .line 46
    sget-object v0, Lcom/powervision/base/R$styleable;->MaterialProgressBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    :try_start_0
    sget p3, Lcom/powervision/base/R$styleable;->MaterialProgressBar_backgroundColour:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 51
    sget v0, Lcom/powervision/base/R$styleable;->MaterialProgressBar_progressColour:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 53
    sget v3, Lcom/powervision/base/R$styleable;->MaterialProgressBar_duration:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/powervision/base/views/MaterialProgressBar;->duration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x108006c

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/MaterialProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-direct {p0, p3, v0}, Lcom/powervision/base/views/MaterialProgressBar;->createIndeterminateProgressDrawable(II)V

    const/16 p1, 0x3e8

    .line 61
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/MaterialProgressBar;->setMax(I)V

    .line 62
    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/MaterialProgressBar;->setIndeterminate(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 55
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private createClipDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 77
    invoke-direct {p0, p1}, Lcom/powervision/base/views/MaterialProgressBar;->createShapeDrawable(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    .line 78
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const v1, 0x800003

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v0
.end method

.method private createIndeterminateAnimator()Landroid/animation/Animator;
    .locals 5

    .line 107
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 108
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-string v2, "secondaryProgress"

    invoke-direct {p0, v2, v1}, Lcom/powervision/base/views/MaterialProgressBar;->getAnimator(Ljava/lang/String;Landroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 109
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const-string v3, "progress"

    invoke-direct {p0, v3, v2}, Lcom/powervision/base/views/MaterialProgressBar;->getAnimator(Ljava/lang/String;Landroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 110
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 111
    iget v1, p0, Lcom/powervision/base/views/MaterialProgressBar;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private createIndeterminateProgressDrawable(II)V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/powervision/base/views/MaterialProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x1020000

    .line 70
    invoke-direct {p0, p1}, Lcom/powervision/base/views/MaterialProgressBar;->createShapeDrawable(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    const v1, 0x102000d

    .line 71
    invoke-direct {p0, p1}, Lcom/powervision/base/views/MaterialProgressBar;->createClipDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    const p1, 0x102000f

    .line 72
    invoke-direct {p0, p2}, Lcom/powervision/base/views/MaterialProgressBar;->createClipDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_0
    return-void
.end method

.method private createShapeDrawable(I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .line 82
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 83
    invoke-direct {p0, v0, p1}, Lcom/powervision/base/views/MaterialProgressBar;->setColour(Landroid/graphics/drawable/ShapeDrawable;I)V

    return-object v0
.end method

.method private getAnimator(Ljava/lang/String;Landroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 116
    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    iget p2, p0, Lcom/powervision/base/views/MaterialProgressBar;->duration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p2, 0x1

    .line 119
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 p2, -0x1

    .line 120
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3e8
    .end array-data
.end method

.method private isStarted()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/powervision/base/views/MaterialProgressBar;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setColour(Landroid/graphics/drawable/ShapeDrawable;I)V
    .locals 0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    .line 89
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized setIndeterminate(Z)V
    .locals 0

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/powervision/base/views/MaterialProgressBar;->isStarted()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 95
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/powervision/base/views/MaterialProgressBar;->createIndeterminateAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/MaterialProgressBar;->animator:Landroid/animation/Animator;

    .line 98
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lcom/powervision/base/views/MaterialProgressBar;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
