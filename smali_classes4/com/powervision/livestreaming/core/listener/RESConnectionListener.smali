.class public interface abstract Lcom/powervision/livestreaming/core/listener/RESConnectionListener;
.super Ljava/lang/Object;
.source "RESConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/livestreaming/core/listener/RESConnectionListener$RESWriteErrorRunable;
    }
.end annotation


# virtual methods
.method public abstract onCloseConnection()V
.end method

.method public abstract onOpenConnectionFail()V
.end method

.method public abstract onOpenConnectionSuccess()V
.end method

.method public abstract onWriteError(I)V
.end method
