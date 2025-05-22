.class public Lcom/lewis/edit/AVEditApplication;
.super Lcom/powervision/base/base/BaseApplication;
.source "AVEditApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 16
    invoke-super {p0}, Lcom/powervision/base/base/BaseApplication;->onCreate()V

    .line 17
    iget-boolean v0, p0, Lcom/lewis/edit/AVEditApplication;->isMainProcess:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->getInstance()Lio/microshow/rxffmpeg/RxFFmpegInvoke;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/microshow/rxffmpeg/RxFFmpegInvoke;->setDebug(Z)V

    :cond_0
    return-void
.end method
