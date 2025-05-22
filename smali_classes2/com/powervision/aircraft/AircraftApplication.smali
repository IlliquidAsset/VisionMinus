.class public Lcom/powervision/aircraft/AircraftApplication;
.super Lcom/powervision/base/base/BaseApplication;
.source "AircraftApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 20
    invoke-super {p0}, Lcom/powervision/base/base/BaseApplication;->onCreate()V

    const-string v0, "lzq"

    const-string v1, "onCreate"

    .line 21
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
