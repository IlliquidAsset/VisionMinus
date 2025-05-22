.class public abstract Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;
.super Ljava/lang/Object;
.source "AbstractWheelAdapter.java"

# interfaces
.implements Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;


# instance fields
.field private datasetObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected notifyDataChangedEvent()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 67
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyDataInvalidatedEvent()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 78
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
