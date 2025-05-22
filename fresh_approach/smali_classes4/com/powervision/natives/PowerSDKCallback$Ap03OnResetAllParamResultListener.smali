.class public interface abstract Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;
.super Ljava/lang/Object;
.source "PowerSDKCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/PowerSDKCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03OnResetAllParamResultListener"
.end annotation


# static fields
.field public static final GIMBAL_RESET_ALL_PARAM_RESULTINFO_FAILED:I = 0x0

.field public static final GIMBAL_RESET_ALL_PARAM_RESULTINFO_SUCCESS:I = 0x1

.field public static final GIMBAL_RESET_ALL_PARAM_RESULTINFO_TIMEOUT:I = 0x2


# virtual methods
.method public abstract setGimbalResetAllParamResultinfoFailed()V
.end method

.method public abstract setGimbalResetAllParamResultinfoSuccess()V
.end method

.method public abstract setGimbalResetAllParamResultinfoTimeout()V
.end method
