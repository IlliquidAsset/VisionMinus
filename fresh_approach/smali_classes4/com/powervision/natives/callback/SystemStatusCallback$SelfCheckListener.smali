.class public interface abstract Lcom/powervision/natives/callback/SystemStatusCallback$SelfCheckListener;
.super Ljava/lang/Object;
.source "SystemStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/SystemStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelfCheckListener"
.end annotation


# virtual methods
.method public abstract onSelfCheckGetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onSelfCheckGetTimeout(Ljava/lang/String;)V
.end method

.method public abstract onSelfCheckSetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onSelfCheckSetTimeout(Ljava/lang/String;)V
.end method
