.class public Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;
.super Lcom/powervision/natives/model/BaseCallbackModel;
.source "GpsRawIntModel.java"

# interfaces
.implements Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/natives/model/BaseCallbackModel<",
        "Lcom/powervision/natives/param/GpsRawIntParam;",
        ">;",
        "Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsRawIntModel"

.field private static mInstance:Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/natives/model/BaseCallbackModel;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;
    .locals 1

    .line 27
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;

    .line 30
    :cond_0
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;

    return-object v0
.end method


# virtual methods
.method protected onActive()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onActive()V

    .line 39
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setGpsRawIntListener(Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;)V

    :cond_0
    return-void
.end method

.method public onGPSRawIntChanged(IIIII)V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "testtt setSatellitesLevel[ num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eph: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsRawIntModel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 68
    new-instance v0, Lcom/powervision/natives/param/GpsRawIntParam;

    invoke-direct {v0}, Lcom/powervision/natives/param/GpsRawIntParam;-><init>()V

    .line 69
    iput p2, v0, Lcom/powervision/natives/param/GpsRawIntParam;->lat:I

    .line 70
    iput p3, v0, Lcom/powervision/natives/param/GpsRawIntParam;->lon:I

    .line 71
    iput p4, v0, Lcom/powervision/natives/param/GpsRawIntParam;->satellites_visible:I

    .line 72
    iput p1, v0, Lcom/powervision/natives/param/GpsRawIntParam;->vel:I

    .line 73
    iput p5, v0, Lcom/powervision/natives/param/GpsRawIntParam;->eph:I

    .line 74
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onInactive()V

    .line 47
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setGpsRawIntListener(Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->registerListener()V

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setGpsRawIntListener(Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;)V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->unregisterListener()V

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setGpsRawIntListener(Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;)V

    return-void
.end method
