.class public interface abstract Lcom/powervision/powersdk/callback/ParamCallback$ParamSetGetListener;
.super Ljava/lang/Object;
.source "ParamCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/ParamCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParamSetGetListener"
.end annotation


# static fields
.field public static final PVSDK_PARAMSETGET_INFO_GET_SUCCESS:I = 0x2

.field public static final PVSDK_PARAMSETGET_INFO_GET_TIMEOUT:I = 0x3

.field public static final PVSDK_PARAMSETGET_INFO_SET_SUCCESS:I = 0x0

.field public static final PVSDK_PARAMSETGET_INFO_SET_TIMEOUT:I = 0x1


# virtual methods
.method public abstract onParamGetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onParamGetTimeout(Ljava/lang/String;)V
.end method

.method public abstract onParamSetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onParamSetTimeout(Ljava/lang/String;)V
.end method
