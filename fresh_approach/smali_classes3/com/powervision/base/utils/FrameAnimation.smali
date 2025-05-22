.class public Lcom/powervision/base/utils/FrameAnimation;
.super Ljava/lang/Object;
.source "FrameAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/FrameAnimation$AnimationListener;
    }
.end annotation


# static fields
.field private static final SELECTED_A:I = 0x1

.field private static final SELECTED_B:I = 0x2

.field private static final SELECTED_C:I = 0x3

.field private static final SELECTED_D:I = 0x4


# instance fields
.field private mAnimationListener:Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentFrame:I

.field private mCurrentSelect:I

.field private mDelay:I

.field private mDuration:I

.field private mDurations:[I

.field private mFrameRess:[I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsRepeat:Z

.field private mLastFrame:I

.field private mNext:Z

.field private mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;[IIZ)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 59
    iput-object p3, p0, Lcom/powervision/base/utils/FrameAnimation;->mFrameRess:[I

    .line 60
    iput p4, p0, Lcom/powervision/base/utils/FrameAnimation;->mDuration:I

    .line 61
    array-length p2, p3

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/powervision/base/utils/FrameAnimation;->mLastFrame:I

    .line 62
    iput-boolean p5, p0, Lcom/powervision/base/utils/FrameAnimation;->mIsRepeat:Z

    .line 63
    iput-object p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[III)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 110
    iput-object p2, p0, Lcom/powervision/base/utils/FrameAnimation;->mFrameRess:[I

    .line 111
    iput p3, p0, Lcom/powervision/base/utils/FrameAnimation;->mDuration:I

    .line 112
    iput p4, p0, Lcom/powervision/base/utils/FrameAnimation;->mDelay:I

    .line 113
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mLastFrame:I

    const/4 p1, 0x0

    .line 114
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/FrameAnimation;->playAndDelay(I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[IIZ)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 78
    iput-object p2, p0, Lcom/powervision/base/utils/FrameAnimation;->mFrameRess:[I

    .line 79
    iput p3, p0, Lcom/powervision/base/utils/FrameAnimation;->mDuration:I

    .line 80
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mLastFrame:I

    .line 81
    iput-boolean p4, p0, Lcom/powervision/base/utils/FrameAnimation;->mIsRepeat:Z

    const/4 p1, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/FrameAnimation;->play(I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[I[II)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 127
    iput-object p2, p0, Lcom/powervision/base/utils/FrameAnimation;->mFrameRess:[I

    .line 128
    iput-object p3, p0, Lcom/powervision/base/utils/FrameAnimation;->mDurations:[I

    .line 129
    iput p4, p0, Lcom/powervision/base/utils/FrameAnimation;->mDelay:I

    .line 130
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mLastFrame:I

    const/4 p1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/FrameAnimation;->playByDurationsAndDelay(I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[I[IZ)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 93
    iput-object p2, p0, Lcom/powervision/base/utils/FrameAnimation;->mFrameRess:[I

    .line 94
    iput-object p3, p0, Lcom/powervision/base/utils/FrameAnimation;->mDurations:[I

    .line 95
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mLastFrame:I

    .line 96
    iput-boolean p4, p0, Lcom/powervision/base/utils/FrameAnimation;->mIsRepeat:Z

    const/4 p1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/FrameAnimation;->playByDurations(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/utils/FrameAnimation;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/powervision/base/utils/FrameAnimation;->mPause:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/powervision/base/utils/FrameAnimation;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/powervision/base/utils/FrameAnimation;->mIsRepeat:Z

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/base/utils/FrameAnimation;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mCurrentSelect:I

    return p1
.end method

.method static synthetic access$1100(Lcom/powervision/base/utils/FrameAnimation;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/FrameAnimation;->playByDurations(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/powervision/base/utils/FrameAnimation;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/FrameAnimation;->play(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/powervision/base/utils/FrameAnimation;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mCurrentFrame:I

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation$AnimationListener;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/powervision/base/utils/FrameAnimation;->mAnimationListener:Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/base/utils/FrameAnimation;)[I
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/powervision/base/utils/FrameAnimation;->mFrameRess:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/base/utils/FrameAnimation;)Landroid/widget/ImageView;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/base/utils/FrameAnimation;)I
    .locals 0

    .line 6
    iget p0, p0, Lcom/powervision/base/utils/FrameAnimation;->mLastFrame:I

    return p0
.end method

.method static synthetic access$702(Lcom/powervision/base/utils/FrameAnimation;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mNext:Z

    return p1
.end method

.method static synthetic access$800(Lcom/powervision/base/utils/FrameAnimation;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/FrameAnimation;->playByDurationsAndDelay(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/powervision/base/utils/FrameAnimation;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/FrameAnimation;->playAndDelay(I)V

    return-void
.end method

.method private play(I)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/base/utils/FrameAnimation$4;

    invoke-direct {v1, p0, p1}, Lcom/powervision/base/utils/FrameAnimation$4;-><init>(Lcom/powervision/base/utils/FrameAnimation;I)V

    iget p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mDuration:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playAndDelay(I)V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/base/utils/FrameAnimation$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/base/utils/FrameAnimation$2;-><init>(Lcom/powervision/base/utils/FrameAnimation;I)V

    iget-boolean p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mNext:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mDelay:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mDuration:I

    :goto_0
    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playByDurations(I)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/base/utils/FrameAnimation$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/base/utils/FrameAnimation$3;-><init>(Lcom/powervision/base/utils/FrameAnimation;I)V

    iget-object v2, p0, Lcom/powervision/base/utils/FrameAnimation;->mDurations:[I

    aget p1, v2, p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playByDurationsAndDelay(I)V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/base/utils/FrameAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/base/utils/FrameAnimation$1;-><init>(Lcom/powervision/base/utils/FrameAnimation;I)V

    iget-boolean v2, p0, Lcom/powervision/base/utils/FrameAnimation;->mNext:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/powervision/base/utils/FrameAnimation;->mDelay:I

    if-lez v2, :cond_0

    int-to-long v2, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/powervision/base/utils/FrameAnimation;->mDurations:[I

    aget p1, v2, p1

    int-to-long v2, p1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isPause()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mPause:Z

    return v0
.end method

.method public justPlay()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lcom/powervision/base/utils/FrameAnimation;->play(I)V

    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mPause:Z

    return-void
.end method

.method public release()V
    .locals 0

    .line 309
    invoke-virtual {p0}, Lcom/powervision/base/utils/FrameAnimation;->pauseAnimation()V

    return-void
.end method

.method public restartAnimation()V
    .locals 2

    .line 321
    iget-boolean v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mPause:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mPause:Z

    .line 323
    iget v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mCurrentSelect:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mCurrentFrame:I

    invoke-direct {p0, v0}, Lcom/powervision/base/utils/FrameAnimation;->play(I)V

    goto :goto_0

    .line 331
    :cond_1
    iget v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mCurrentFrame:I

    invoke-direct {p0, v0}, Lcom/powervision/base/utils/FrameAnimation;->playByDurations(I)V

    goto :goto_0

    .line 328
    :cond_2
    iget v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mCurrentFrame:I

    invoke-direct {p0, v0}, Lcom/powervision/base/utils/FrameAnimation;->playAndDelay(I)V

    goto :goto_0

    .line 325
    :cond_3
    iget v0, p0, Lcom/powervision/base/utils/FrameAnimation;->mCurrentFrame:I

    invoke-direct {p0, v0}, Lcom/powervision/base/utils/FrameAnimation;->playByDurationsAndDelay(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setAnimationListener(Lcom/powervision/base/utils/FrameAnimation$AnimationListener;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/powervision/base/utils/FrameAnimation;->mAnimationListener:Lcom/powervision/base/utils/FrameAnimation$AnimationListener;

    return-void
.end method
