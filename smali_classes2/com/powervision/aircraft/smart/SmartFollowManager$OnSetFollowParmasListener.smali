.class public interface abstract Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;
.super Ljava/lang/Object;
.source "SmartFollowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/smart/SmartFollowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSetFollowParmasListener"
.end annotation


# virtual methods
.method public abstract onSetParmasResultFailed(II)V
.end method

.method public abstract onSetParmasResultSuccess(II)V
.end method

.method public abstract onSmartFunctionActuaHight(F)V
.end method

.method public abstract onSmartFunctionActuaSpeed(F)V
.end method

.method public abstract onSmartFunctionData(FFFFI)V
.end method
