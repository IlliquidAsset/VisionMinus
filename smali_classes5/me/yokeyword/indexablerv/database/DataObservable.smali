.class public Lme/yokeyword/indexablerv/database/DataObservable;
.super Landroid/database/Observable;
.source "DataObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Lme/yokeyword/indexablerv/database/DataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 3

    .line 47
    iget-object v0, p0, Lme/yokeyword/indexablerv/database/DataObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/indexablerv/database/DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 53
    iget-object v2, p0, Lme/yokeyword/indexablerv/database/DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/database/DataObserver;

    invoke-virtual {v2}, Lme/yokeyword/indexablerv/database/DataObserver;->onChanged()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 55
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyInited()V
    .locals 3

    .line 34
    iget-object v0, p0, Lme/yokeyword/indexablerv/database/DataObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/indexablerv/database/DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 36
    iget-object v2, p0, Lme/yokeyword/indexablerv/database/DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/database/DataObserver;

    invoke-virtual {v2}, Lme/yokeyword/indexablerv/database/DataObserver;->onInited()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifySetListener(I)V
    .locals 3

    .line 64
    iget-object v0, p0, Lme/yokeyword/indexablerv/database/DataObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/indexablerv/database/DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 66
    iget-object v2, p0, Lme/yokeyword/indexablerv/database/DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/database/DataObserver;

    invoke-virtual {v2, p1}, Lme/yokeyword/indexablerv/database/DataObserver;->onSetListener(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 68
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
