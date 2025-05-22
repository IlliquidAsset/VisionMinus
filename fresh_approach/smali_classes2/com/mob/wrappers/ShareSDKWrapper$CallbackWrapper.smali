.class public interface abstract Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "ShareSDKWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/ShareSDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallbackWrapper"
.end annotation


# virtual methods
.method public abstract onCancel(Ljava/lang/String;I)V
.end method

.method public abstract onComplete(Ljava/lang/String;ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;ILjava/lang/Throwable;)V
.end method
