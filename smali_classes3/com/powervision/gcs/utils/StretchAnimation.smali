.class public Lcom/powervision/gcs/utils/StretchAnimation;
.super Ljava/lang/Object;
.source "StretchAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/StretchAnimation$AnimationListener;,
        Lcom/powervision/gcs/utils/StretchAnimation$TYPE;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FRAMTIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SizeChange"


# instance fields
.field private animationlistener:Lcom/powervision/gcs/utils/StretchAnimation$AnimationListener;

.field private isFinished:Z

.field private mCurrSize:I

.field private mDSize:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxSize:I

.field private mMinSize:I

.field private mRawSize:I

.field private mStartTime:J

.field private mType:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(IILcom/powervision/gcs/utils/StretchAnimation$TYPE;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->isFinished:Z

    .line 25
    sget-object v0, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->vertical:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    iput-object v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mType:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    .line 79
    new-instance v0, Lcom/powervision/gcs/utils/StretchAnimation$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/StretchAnimation$1;-><init>(Lcom/powervision/gcs/utils/StretchAnimation;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mHandler:Landroid/os/Handler;

    if-ge p2, p1, :cond_0

    .line 42
    iput p2, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mMinSize:I

    .line 43
    iput p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mMaxSize:I

    .line 44
    iput-object p3, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mType:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    .line 45
    iput p4, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDuration:I

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "View\u7684\u6700\u5927\u6539\u53d8\u503c\u4e0d\u80fd\u5c0f\u4e8e\u6700\u5c0f\u6539\u53d8\u503c"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/powervision/gcs/utils/StretchAnimation;)Z
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/gcs/utils/StretchAnimation;->computeViewSize()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/utils/StretchAnimation;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/utils/StretchAnimation;)Lcom/powervision/gcs/utils/StretchAnimation$AnimationListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->animationlistener:Lcom/powervision/gcs/utils/StretchAnimation$AnimationListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/utils/StretchAnimation;)Landroid/view/View;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mView:Landroid/view/View;

    return-object p0
.end method

.method private changeViewSize()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mType:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    sget-object v2, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->vertical:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    if-ne v1, v2, :cond_0

    .line 69
    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mCurrSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mType:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    sget-object v2, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->horizontal:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    if-ne v1, v2, :cond_1

    .line 71
    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mCurrSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mCurrSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mMaxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mMinSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SizeChange"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private computeViewSize()Z
    .locals 4

    .line 104
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->isFinished:Z

    if-eqz v0, :cond_0

    return v0

    .line 107
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 109
    iget v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDuration:I

    if-gt v1, v0, :cond_2

    int-to-float v0, v1

    .line 110
    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDurationReciprocal:F

    mul-float v0, v0, v1

    .line 111
    iget-object v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 114
    :cond_1
    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mRawSize:I

    iget v2, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDSize:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mCurrSize:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->isFinished:Z

    .line 118
    iget v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mRawSize:I

    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mCurrSize:I

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/powervision/gcs/utils/StretchAnimation;->changeViewSize()V

    .line 122
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->isFinished:Z

    return v0
.end method


# virtual methods
.method public getmType()Lcom/powervision/gcs/utils/StretchAnimation$TYPE;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mType:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/StretchAnimation;->isFinished:Z

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDuration:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setOnAnimationListener(Lcom/powervision/gcs/utils/StretchAnimation$AnimationListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->animationlistener:Lcom/powervision/gcs/utils/StretchAnimation$AnimationListener;

    return-void
.end method

.method public startAnimation(Landroid/view/View;)V
    .locals 3

    const-string v0, "SizeChange"

    if-eqz p1, :cond_5

    .line 128
    iput-object p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mView:Landroid/view/View;

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 135
    iget-boolean p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->isFinished:Z

    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    .line 136
    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDuration:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDurationReciprocal:F

    .line 137
    iget-object p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mType:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    sget-object v1, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->vertical:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    if-ne p1, v1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mCurrSize:I

    iput p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mRawSize:I

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mType:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    sget-object v1, Lcom/powervision/gcs/utils/StretchAnimation$TYPE;->horizontal:Lcom/powervision/gcs/utils/StretchAnimation$TYPE;

    if-ne p1, v1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mCurrSize:I

    iput p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mRawSize:I

    .line 142
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRawSize="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mRawSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mCurrSize:I

    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mMaxSize:I

    if-gt p1, v1, :cond_3

    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mMinSize:I

    if-lt p1, v1, :cond_3

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->isFinished:Z

    .line 148
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mStartTime:J

    .line 149
    iget p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mCurrSize:I

    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mMaxSize:I

    if-ge p1, v1, :cond_2

    sub-int/2addr v1, p1

    .line 150
    iput v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDSize:I

    goto :goto_1

    .line 152
    :cond_2
    iget p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mMinSize:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDSize:I

    .line 154
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDSize="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mDSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p1, p0, Lcom/powervision/gcs/utils/StretchAnimation;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 144
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "View \u7684\u5927\u5c0f\u4e0d\u8fbe\u6807 currentViewSize > mMaxSize || currentViewSize < mMinSize"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string p1, "view \u4e0d\u80fd\u4e3a\u7a7a"

    .line 130
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
