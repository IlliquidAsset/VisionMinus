.class public Lcom/powervision/firebase/FireApplication;
.super Lcom/powervision/base/base/BaseApplication;
.source "FireApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FireApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 14
    invoke-super {p0}, Lcom/powervision/base/base/BaseApplication;->onCreate()V

    const-string v0, "FireApplication"

    const-string v1, "onCreate: "

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {v1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method
