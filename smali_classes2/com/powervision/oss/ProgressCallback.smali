.class public interface abstract Lcom/powervision/oss/ProgressCallback;
.super Ljava/lang/Object;
.source "ProgressCallback.java"

# interfaces
.implements Lcom/powervision/oss/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/powervision/oss/Callback<",
        "TRequest;TResult;>;"
    }
.end annotation


# virtual methods
.method public abstract onProgress(Ljava/lang/Object;JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;JJ)V"
        }
    .end annotation
.end method
