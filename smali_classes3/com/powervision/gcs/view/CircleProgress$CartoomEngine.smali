.class Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;
.super Ljava/lang/Object;
.source "CircleProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/CircleProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CartoomEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;
    }
.end annotation


# static fields
.field private static final TIMER_ID:I = 0x10


# instance fields
.field public mBCartoom:Z

.field public mCurFloatProcess:F

.field public mHandler:Landroid/os/Handler;

.field public mSaveMax:F

.field public mTimer:Ljava/util/Timer;

.field public mTimerInterval:I

.field public mTimerTask:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;

.field final synthetic this$0:Lcom/powervision/gcs/view/CircleProgress;

.field private timeMil:J


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/CircleProgress;)V
    .locals 1

    .line 288
    iput-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;-><init>(Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;Lcom/powervision/gcs/view/CircleProgress;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 319
    iput-boolean p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mBCartoom:Z

    .line 320
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimer:Ljava/util/Timer;

    const/4 p1, 0x0

    .line 321
    iput p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mSaveMax:F

    const/16 v0, 0x32

    .line 322
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimerInterval:I

    .line 323
    iput p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mCurFloatProcess:F

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;J)J
    .locals 0

    .line 277
    iput-wide p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->timeMil:J

    return-wide p1
.end method


# virtual methods
.method public declared-synchronized startCartoom(F)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_1

    .line 328
    :try_start_0
    iget-boolean v1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mBCartoom:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 332
    iput-wide v3, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->timeMil:J

    .line 333
    iput-boolean v2, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mBCartoom:Z

    .line 335
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/view/CircleProgress;->setMainProgress(I)V

    .line 336
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/view/CircleProgress;->setSubProgress(I)V

    .line 338
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-static {v1}, Lcom/powervision/gcs/view/CircleProgress;->access$100(Lcom/powervision/gcs/view/CircleProgress;)F

    move-result v1

    iput v1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mSaveMax:F

    .line 339
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimerInterval:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v1, v2}, Lcom/powervision/gcs/view/CircleProgress;->access$102(Lcom/powervision/gcs/view/CircleProgress;F)F

    .line 340
    iput v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mCurFloatProcess:F

    .line 342
    new-instance v4, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;

    invoke-direct {v4, p0}, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;-><init>(Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;)V

    iput-object v4, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimerTask:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;

    .line 343
    iget-object v3, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimer:Ljava/util/Timer;

    iget p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimerInterval:I

    int-to-long v5, p1

    iget p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimerInterval:I

    int-to-long v7, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 329
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopCartoom()V
    .locals 3

    monitor-enter p0

    .line 349
    :try_start_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mBCartoom:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 350
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 353
    :try_start_1
    iput-boolean v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mBCartoom:Z

    .line 354
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    iget v2, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mSaveMax:F

    invoke-static {v1, v2}, Lcom/powervision/gcs/view/CircleProgress;->access$102(Lcom/powervision/gcs/view/CircleProgress;F)F

    .line 356
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/CircleProgress;->setMainProgress(I)V

    .line 357
    iget-object v1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/CircleProgress;->setSubProgress(I)V

    .line 359
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimerTask:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimerTask:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mTimerTask:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
