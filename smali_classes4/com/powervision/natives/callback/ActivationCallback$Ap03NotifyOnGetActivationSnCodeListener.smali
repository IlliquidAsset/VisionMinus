.class public interface abstract Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;
.super Ljava/lang/Object;
.source "ActivationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/ActivationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnGetActivationSnCodeListener"
.end annotation


# static fields
.field public static final GET_ACTIVATION_SN_CODE_RESULT_SUCCESS:I = 0x0

.field public static final GET_ACTIVATION_SN_CODE_RESULT_TIMEOUT:I = 0x1


# virtual methods
.method public abstract setGetPSNCodeResultSuccess(Ljava/lang/String;)V
.end method

.method public abstract setGetPSNCodeResultTimeout()V
.end method
