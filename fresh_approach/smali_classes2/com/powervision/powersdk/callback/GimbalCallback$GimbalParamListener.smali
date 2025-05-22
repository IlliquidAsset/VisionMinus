.class public interface abstract Lcom/powervision/powersdk/callback/GimbalCallback$GimbalParamListener;
.super Ljava/lang/Object;
.source "GimbalCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/GimbalCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GimbalParamListener"
.end annotation


# virtual methods
.method public abstract onGimbalParamsGetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onGimbalParamsGetTimeout(Ljava/lang/String;)V
.end method

.method public abstract onGimbalParamsSetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onGimbalParamsSetTimeout(Ljava/lang/String;)V
.end method
