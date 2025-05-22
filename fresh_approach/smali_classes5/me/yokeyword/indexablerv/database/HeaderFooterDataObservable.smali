.class public Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;
.super Landroid/database/Observable;
.source "HeaderFooterDataObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;",
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
.method public notifyAdd(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 52
    iget-object v2, p0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;

    invoke-virtual {v2, p1, p2, p3}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;->onAdd(ZLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54
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

.method public notifyChanged()V
    .locals 3

    .line 34
    iget-object v0, p0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 40
    iget-object v2, p0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;

    invoke-virtual {v2}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;->onChanged()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 42
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

.method public notifyRemove(ZLjava/lang/Object;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 64
    iget-object v2, p0, Lme/yokeyword/indexablerv/database/HeaderFooterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;

    invoke-virtual {v2, p1, p2}, Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;->onRemove(ZLjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 66
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
