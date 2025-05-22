.class public Lcn/powervision/upgrade/utils/TimeMechine$Timer;
.super Ljava/lang/Thread;
.source "TimeMechine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/utils/TimeMechine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Timer"
.end annotation


# instance fields
.field listener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

.field final synthetic this$0:Lcn/powervision/upgrade/utils/TimeMechine;

.field timeMode:Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;


# direct methods
.method public constructor <init>(Lcn/powervision/upgrade/utils/TimeMechine;Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->this$0:Lcn/powervision/upgrade/utils/TimeMechine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    iput-object p2, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->timeMode:Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, " lzqFirm"

    .line 69
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    iget-object v1, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->timeMode:Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;

    iget v1, v1, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->repeat_times:I

    .line 77
    iget-object v2, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->timeMode:Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;

    iget-wide v2, v2, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->sleepTime:J

    .line 78
    iget-object v4, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->timeMode:Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;

    iget-boolean v4, v4, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->hasdl01:Z

    .line 79
    iget-object v5, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->timeMode:Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;

    iget v5, v5, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->start:F

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const/high16 v7, 0x42c80000    # 100.0f

    if-nez v4, :cond_0

    int-to-float v8, v6

    int-to-float v9, v1

    div-float/2addr v8, v9

    mul-float v8, v8, v7

    .line 84
    iget-object v7, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->listener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

    invoke-virtual {v7, v8}, Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;->onProgress(F)V

    goto :goto_1

    :cond_0
    int-to-float v8, v6

    int-to-float v9, v1

    div-float/2addr v8, v9

    sub-float/2addr v7, v5

    mul-float v8, v8, v7

    add-float/2addr v8, v5

    .line 87
    iget-object v7, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->listener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

    invoke-virtual {v7, v8}, Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;->onProgress(F)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " TimeMechine \u8d70\u5b8c\u4e00\u4e2a\u5b9a\u65f6\u5668"

    .line 90
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->listener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->listener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;->onTimeEnd()V

    goto :goto_2

    .line 74
    :cond_2
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "TimeMechine \u5b9a\u65f6\u5668\u88ab\u9500\u6bc1\u4e86"

    .line 97
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setProgressListener(Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->listener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

    return-void
.end method
