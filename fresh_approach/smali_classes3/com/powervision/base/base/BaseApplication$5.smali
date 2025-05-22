.class Lcom/powervision/base/base/BaseApplication$5;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/base/BaseApplication;->loadJniPowerSdk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/BaseApplication;


# direct methods
.method constructor <init>(Lcom/powervision/base/base/BaseApplication;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/powervision/base/base/BaseApplication$5;->this$0:Lcom/powervision/base/base/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "PowerSDK"

    .line 471
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
