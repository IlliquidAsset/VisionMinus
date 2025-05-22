.class public interface abstract Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;
.super Ljava/lang/Object;
.source "ActivationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/ActivationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnEnableActivationListener"
.end annotation


# static fields
.field public static final ENABLE_ACTIVATION_RESULT_FAILED:I = 0x1

.field public static final ENABLE_ACTIVATION_RESULT_SUCCESS:I = 0x0

.field public static final ENABLE_ACTIVATION_RESULT_TIMEOUT:I = 0x2


# virtual methods
.method public abstract setEnableActivationResultFailed()V
.end method

.method public abstract setEnableActivationResultSuccess()V
.end method

.method public abstract setEnableActivationResultTimeout()V
.end method
