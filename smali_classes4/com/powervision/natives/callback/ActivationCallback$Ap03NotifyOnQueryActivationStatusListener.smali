.class public interface abstract Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;
.super Ljava/lang/Object;
.source "ActivationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/ActivationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnQueryActivationStatusListener"
.end annotation


# static fields
.field public static final QUERY_ACTIVATION_RESULT_DISABLE:I = 0x1

.field public static final QUERY_ACTIVATION_RESULT_ENABLE:I = 0x0

.field public static final QUERY_ACTIVATION_RESULT_TIMEOUT:I = 0x2


# virtual methods
.method public abstract setQueryActivationResultDisable()V
.end method

.method public abstract setQueryActivationResultEnable()V
.end method

.method public abstract setQueryActivationResultTimeout()V
.end method
