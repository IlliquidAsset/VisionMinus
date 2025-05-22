.class public interface abstract Lcom/lewis/edit/utils/mp4/IObservable;
.super Ljava/lang/Object;
.source "IObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addObserver(Lcom/lewis/edit/utils/mp4/IObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewis/edit/utils/mp4/IObserver<",
            "TType;>;)V"
        }
    .end annotation
.end method

.method public abstract notify(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation
.end method
