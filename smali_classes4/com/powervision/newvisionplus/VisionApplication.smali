.class public Lcom/powervision/newvisionplus/VisionApplication;
.super Lcom/powervision/base/base/BaseApplication;
.source "VisionApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;-><init>()V

    return-void
.end method

.method private initBusinessInThread()V
    .locals 1

    .line 38
    new-instance v0, Lcom/powervision/newvisionplus/VisionApplication$1;

    invoke-direct {v0, p0}, Lcom/powervision/newvisionplus/VisionApplication$1;-><init>(Lcom/powervision/newvisionplus/VisionApplication;)V

    .line 51
    invoke-virtual {v0}, Lcom/powervision/newvisionplus/VisionApplication$1;->start()V

    return-void
.end method

.method private initJPush()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/powervision/airmap/utils/JPushUtil;->getInstance()Lcom/powervision/airmap/utils/JPushUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powervision/newvisionplus/VisionApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/airmap/utils/JPushUtil;->initPush(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/powervision/base/base/BaseApplication;->onCreate()V

    .line 23
    iget-boolean v0, p0, Lcom/powervision/newvisionplus/VisionApplication;->isMainProcess:Z

    return-void
.end method
