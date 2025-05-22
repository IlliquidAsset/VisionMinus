.class public interface abstract Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;
.super Ljava/lang/Object;
.source "ConnectActivationSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/ConnectActivationSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivationConnectListener"
.end annotation


# virtual methods
.method public abstract onActivationConnect()V
.end method

.method public abstract onActivationConnectFailed()V
.end method

.method public abstract onActivationConnectTimeout()V
.end method

.method public abstract onActivationDisConnect()V
.end method
