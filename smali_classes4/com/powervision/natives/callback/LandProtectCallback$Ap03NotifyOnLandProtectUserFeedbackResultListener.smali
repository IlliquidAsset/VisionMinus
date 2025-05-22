.class public interface abstract Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;
.super Ljava/lang/Object;
.source "LandProtectCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/LandProtectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnLandProtectUserFeedbackResultListener"
.end annotation


# static fields
.field public static final COMMON_RESULT_FAILED:I = 0x2

.field public static final COMMON_RESULT_SUCCESS:I = 0x0

.field public static final COMMON_RESULT_TIMEOUT:I = 0x1


# virtual methods
.method public abstract setCommonResultFailed()V
.end method

.method public abstract setCommonResultSuccess()V
.end method

.method public abstract setCommonResultTimeout()V
.end method
