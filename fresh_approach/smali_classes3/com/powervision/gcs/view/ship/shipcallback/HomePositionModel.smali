.class public Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;
.super Lcom/powervision/natives/model/BaseCallbackModel;
.source "HomePositionModel.java"

# interfaces
.implements Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/natives/model/BaseCallbackModel<",
        "Lcom/powervision/natives/param/HomePositionNotifyParam;",
        ">;",
        "Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/powervision/natives/model/BaseCallbackModel;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;
    .locals 1

    .line 23
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;

    .line 26
    :cond_0
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;

    return-object v0
.end method


# virtual methods
.method protected onActive()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onActive()V

    .line 36
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setHomePositionListener(Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;)V

    :cond_0
    return-void
.end method

.method public onHomePosition(Lcom/powervision/natives/param/HomePositionNotifyParam;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onInactive()V

    .line 45
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setHomePositionListener(Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->registerListener()V

    .line 53
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setHomePositionListener(Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;)V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->unregisterListener()V

    .line 59
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setHomePositionListener(Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;)V

    return-void
.end method
