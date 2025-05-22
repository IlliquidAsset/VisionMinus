.class public Lcom/tmall/ultraviewpager/TimerHandler;
.super Landroid/os/Handler;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;
    }
.end annotation


# static fields
.field static final MSG_TIMER_ID:I = 0x15444


# instance fields
.field interval:J

.field isStopped:Z

.field listener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

.field specialInterval:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;J)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/tmall/ultraviewpager/TimerHandler;->isStopped:Z

    .line 51
    iput-object p1, p0, Lcom/tmall/ultraviewpager/TimerHandler;->listener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    .line 52
    iput-wide p2, p0, Lcom/tmall/ultraviewpager/TimerHandler;->interval:J

    return-void
.end method

.method private getNextInterval(I)J
    .locals 6

    .line 71
    iget-wide v0, p0, Lcom/tmall/ultraviewpager/TimerHandler;->interval:J

    .line 72
    iget-object v2, p0, Lcom/tmall/ultraviewpager/TimerHandler;->specialInterval:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    .line 73
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x15444

    if-ne v0, p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/tmall/ultraviewpager/TimerHandler;->listener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    if-eqz p1, :cond_0

    .line 59
    invoke-interface {p1}, Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;->getNextItem()I

    move-result p1

    .line 60
    iget-object v0, p0, Lcom/tmall/ultraviewpager/TimerHandler;->listener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    invoke-interface {v0}, Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;->callBack()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/tmall/ultraviewpager/TimerHandler;->tick(I)V

    :cond_0
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/tmall/ultraviewpager/TimerHandler;->isStopped:Z

    return v0
.end method

.method public setListener(Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/tmall/ultraviewpager/TimerHandler;->listener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    return-void
.end method

.method public setSpecialInterval(Landroid/util/SparseIntArray;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/tmall/ultraviewpager/TimerHandler;->specialInterval:Landroid/util/SparseIntArray;

    return-void
.end method

.method public setStopped(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/tmall/ultraviewpager/TimerHandler;->isStopped:Z

    return-void
.end method

.method public tick(I)V
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lcom/tmall/ultraviewpager/TimerHandler;->getNextInterval(I)J

    move-result-wide v0

    const p1, 0x15444

    invoke-virtual {p0, p1, v0, v1}, Lcom/tmall/ultraviewpager/TimerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
