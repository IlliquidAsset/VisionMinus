.class public interface abstract Lcom/lewis/edit/utils/mp4/IStore;
.super Ljava/lang/Object;
.source "IStore.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/ICloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Track:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lewis/edit/utils/mp4/ICloseable;"
    }
.end annotation


# virtual methods
.method public abstract addData(ILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITData;)I"
        }
    .end annotation
.end method

.method public abstract addTrack(ZLjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTTrack;)I"
        }
    .end annotation
.end method
