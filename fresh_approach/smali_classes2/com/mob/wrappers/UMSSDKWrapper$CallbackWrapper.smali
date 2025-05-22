.class public interface abstract Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "UMSSDKWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/UMSSDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallbackWrapper"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Lcom/mob/wrappers/UMSSDKWrapper$User;)V
.end method
