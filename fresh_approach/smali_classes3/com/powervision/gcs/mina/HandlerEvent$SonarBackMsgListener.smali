.class public interface abstract Lcom/powervision/gcs/mina/HandlerEvent$SonarBackMsgListener;
.super Ljava/lang/Object;
.source "HandlerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/mina/HandlerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SonarBackMsgListener"
.end annotation


# virtual methods
.method public abstract onSonarMCUUpSucess()V
.end method

.method public abstract onSonarUPFiles()V
.end method

.method public abstract onSonarVersion(Ljava/lang/String;)V
.end method

.method public abstract onSonarWifiUpSuccess()V
.end method

.method public abstract onSonarWifiVersion(Ljava/lang/String;)V
.end method

.method public abstract onVerifyFilesMd5()V
.end method
