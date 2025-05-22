.class public interface abstract Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;
.super Ljava/lang/Object;
.source "Ap03ActivationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/utils/Ap03ActivationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivationResultListener"
.end annotation


# virtual methods
.method public abstract onActivationFailed()V
.end method

.method public abstract onActivationSuccess()V
.end method

.method public abstract onActivationTimeout()V
.end method
