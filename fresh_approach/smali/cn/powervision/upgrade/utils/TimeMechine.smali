.class public Lcn/powervision/upgrade/utils/TimeMechine;
.super Ljava/lang/Object;
.source "TimeMechine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;,
        Lcn/powervision/upgrade/utils/TimeMechine$Timer;,
        Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;
    }
.end annotation


# instance fields
.field timers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/powervision/upgrade/utils/TimeMechine$Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/powervision/upgrade/utils/TimeMechine;->timers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addANewTimerMissioin(Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;)V
    .locals 3

    const-string v0, " lzqFirm"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------addANewTimerMissioin --------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/TimeMechine;->desTory()V

    .line 19
    iget-object v0, p0, Lcn/powervision/upgrade/utils/TimeMechine;->timers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcn/powervision/upgrade/utils/TimeMechine;->timers:Ljava/util/ArrayList;

    new-instance v2, Lcn/powervision/upgrade/utils/TimeMechine$Timer;

    invoke-direct {v2, p0, p1}, Lcn/powervision/upgrade/utils/TimeMechine$Timer;-><init>(Lcn/powervision/upgrade/utils/TimeMechine;Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcn/powervision/upgrade/utils/TimeMechine;->timers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/powervision/upgrade/utils/TimeMechine;->timers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/utils/TimeMechine$Timer;

    .line 22
    invoke-virtual {p1, p2}, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->setProgressListener(Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;)V

    .line 23
    invoke-virtual {p1}, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->start()V

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public desTory()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcn/powervision/upgrade/utils/TimeMechine;->timers:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 30
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn/powervision/upgrade/utils/TimeMechine;->timers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 31
    iget-object v2, p0, Lcn/powervision/upgrade/utils/TimeMechine;->timers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/powervision/upgrade/utils/TimeMechine$Timer;

    invoke-virtual {v2}, Lcn/powervision/upgrade/utils/TimeMechine$Timer;->interrupt()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcn/powervision/upgrade/utils/TimeMechine;->timers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
