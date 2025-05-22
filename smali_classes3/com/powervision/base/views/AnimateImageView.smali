.class public Lcom/powervision/base/views/AnimateImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "AnimateImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/AnimateImageView$IAnimationTimeOutListener;
    }
.end annotation


# instance fields
.field private autoCancle:Z

.field public mIAnimationTimeOutListener:Lcom/powervision/base/views/AnimateImageView$IAnimationTimeOutListener;

.field private resId:I

.field private rotateAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/powervision/base/views/AnimateImageView;->autoCancle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/powervision/base/views/AnimateImageView;->autoCancle:Z

    .line 19
    invoke-direct {p0}, Lcom/powervision/base/views/AnimateImageView;->initAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/powervision/base/views/AnimateImageView;->autoCancle:Z

    return-void
.end method

.method private initAnimation()V
    .locals 8

    .line 25
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/powervision/base/views/AnimateImageView;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0x3e8

    .line 27
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 28
    iget-object v0, p0, Lcom/powervision/base/views/AnimateImageView;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 29
    iget-object v0, p0, Lcom/powervision/base/views/AnimateImageView;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 30
    iget-object v0, p0, Lcom/powervision/base/views/AnimateImageView;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 31
    iget-object v0, p0, Lcom/powervision/base/views/AnimateImageView;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getResId()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/powervision/base/views/AnimateImageView;->resId:I

    return v0
.end method

.method public setIAnimationTimeOutListener(Lcom/powervision/base/views/AnimateImageView$IAnimationTimeOutListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/powervision/base/views/AnimateImageView;->mIAnimationTimeOutListener:Lcom/powervision/base/views/AnimateImageView$IAnimationTimeOutListener;

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 50
    iput p1, p0, Lcom/powervision/base/views/AnimateImageView;->resId:I

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/powervision/base/views/AnimateImageView;->autoCancle:Z

    .line 52
    iget-object p1, p0, Lcom/powervision/base/views/AnimateImageView;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/animation/RotateAnimation;->cancel()V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/views/AnimateImageView;->clearAnimation()V

    return-void
.end method

.method public setImageResource(IZII)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/powervision/base/views/AnimateImageView;->autoCancle:Z

    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onAnimationStart: animate = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "000000000000"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/powervision/base/views/AnimateImageView;->initAnimation()V

    const-string p2, "onAnimationStart: animate"

    .line 72
    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p2, p0, Lcom/powervision/base/views/AnimateImageView;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p2, p1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 74
    iget-object p1, p0, Lcom/powervision/base/views/AnimateImageView;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/AnimateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    iget-object p1, p0, Lcom/powervision/base/views/AnimateImageView;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    new-instance p2, Lcom/powervision/base/views/AnimateImageView$1;

    invoke-direct {p2, p0}, Lcom/powervision/base/views/AnimateImageView$1;-><init>(Lcom/powervision/base/views/AnimateImageView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method
