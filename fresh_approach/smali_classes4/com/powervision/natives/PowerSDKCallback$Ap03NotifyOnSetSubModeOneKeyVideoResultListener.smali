.class public interface abstract Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;
.super Ljava/lang/Object;
.source "PowerSDKCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/PowerSDKCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnSetSubModeOneKeyVideoResultListener"
.end annotation


# static fields
.field public static final COMMON_RESULT_FAILED:I = 0x2

.field public static final COMMON_RESULT_SUCCESS:I = 0x0

.field public static final COMMON_RESULT_TIMEOUT:I = 0x1


# virtual methods
.method public abstract setCommonResultFailed()V
.end method

.method public abstract setCommonResultSuccess(I)V
.end method

.method public abstract setCommonResultTimeout()V
.end method
