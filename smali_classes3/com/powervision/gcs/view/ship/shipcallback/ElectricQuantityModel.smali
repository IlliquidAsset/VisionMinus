.class public Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;
.super Lcom/powervision/natives/model/BaseCallbackModel;
.source "ElectricQuantityModel.java"

# interfaces
.implements Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/natives/model/BaseCallbackModel<",
        "Lcom/powervision/natives/param/ElecgtricQuantityParam;",
        ">;",
        "Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/powervision/natives/model/BaseCallbackModel;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;
    .locals 1

    .line 22
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;

    .line 25
    :cond_0
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;

    return-object v0
.end method


# virtual methods
.method protected onActive()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onActive()V

    .line 34
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setOnElectricQuantityDisplayListener(Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;)V

    :cond_0
    return-void
.end method

.method public onElectric(IIB)V
    .locals 1

    .line 64
    :try_start_0
    new-instance v0, Lcom/powervision/natives/param/ElecgtricQuantityParam;

    invoke-direct {v0}, Lcom/powervision/natives/param/ElecgtricQuantityParam;-><init>()V

    .line 65
    iput-byte p3, v0, Lcom/powervision/natives/param/ElecgtricQuantityParam;->battery_remaining:B

    .line 66
    iput p2, v0, Lcom/powervision/natives/param/ElecgtricQuantityParam;->current_battery:I

    .line 67
    iput p1, v0, Lcom/powervision/natives/param/ElecgtricQuantityParam;->voltage_battery:I

    .line 69
    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onInactive()V

    .line 42
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setOnElectricQuantityDisplayListener(Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->registerListener()V

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setOnElectricQuantityDisplayListener(Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;)V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->unregisterListener()V

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setOnElectricQuantityDisplayListener(Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;)V

    return-void
.end method
