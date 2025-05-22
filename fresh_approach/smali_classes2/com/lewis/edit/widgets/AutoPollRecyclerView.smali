.class public Lcom/lewis/edit/widgets/AutoPollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AutoPollRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;
    }
.end annotation


# static fields
.field private static final TIME_AUTO_POLL:J = 0xc8L


# instance fields
.field private mAutoPollTask:Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;

.field private mCanRun:Z

.field private mIsAutoFlag:Z

.field private mRunning:Z

.field private mTimeAutoPollTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/widgets/AutoPollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mIsAutoFlag:Z

    const-wide/16 p1, 0x0

    .line 30
    iput-wide p1, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mTimeAutoPollTime:J

    .line 38
    new-instance p1, Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;-><init>(Lcom/lewis/edit/widgets/AutoPollRecyclerView;Lcom/lewis/edit/widgets/AutoPollRecyclerView$1;)V

    iput-object p1, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mAutoPollTask:Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;

    const-wide/16 p1, 0xc8

    .line 39
    iput-wide p1, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mTimeAutoPollTime:J

    return-void
.end method

.method static synthetic access$100(Lcom/lewis/edit/widgets/AutoPollRecyclerView;)Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mAutoPollTask:Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;

    return-object p0
.end method


# virtual methods
.method public autoPollStop(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mIsAutoFlag:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public start()V
    .locals 3

    .line 55
    iget-boolean v0, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mRunning:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->stop()V

    :cond_0
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mCanRun:Z

    .line 59
    iput-boolean v0, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mRunning:Z

    .line 60
    iget-object v0, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mAutoPollTask:Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mRunning:Z

    .line 68
    iget-object v0, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->mAutoPollTask:Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;

    invoke-virtual {p0, v0}, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
