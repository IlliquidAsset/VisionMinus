.class public Lcom/lewis/edit/utils/mp4/ObservableArray;
.super Ljava/lang/Object;
.source "ObservableArray.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/IObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lewis/edit/utils/mp4/IObservable<",
        "TType;>;"
    }
.end annotation


# instance fields
.field private temp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lewis/edit/utils/mp4/IObserver<",
            "TType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/lewis/edit/utils/mp4/IObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewis/edit/utils/mp4/IObserver<",
            "TType;>;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/ObservableArray;->temp:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/ObservableArray;->temp:Ljava/util/ArrayList;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/ObservableArray;->temp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/ObservableArray;->temp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/ObservableArray;->temp:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public notify(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/ObservableArray;->temp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/utils/mp4/IObserver;

    .line 30
    invoke-interface {v1, p1}, Lcom/lewis/edit/utils/mp4/IObserver;->onCall(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
