.class public Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;
.super Lcom/powervision/natives/model/BaseCallbackModel;
.source "AttitudeAndGroundSpeedChangedModel.java"

# interfaces
.implements Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/natives/model/BaseCallbackModel<",
        "Lcom/powervision/natives/param/Attitude;",
        ">;",
        "Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/powervision/natives/model/BaseCallbackModel;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;
    .locals 1

    .line 23
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;

    .line 26
    :cond_0
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;

    return-object v0
.end method


# virtual methods
.method protected onActive()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onActive()V

    .line 34
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setAttitudeAndGroundspeedChangedListener(Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;)V

    :cond_0
    return-void
.end method

.method public onAttitudeAndGroundSpeedChanged(FFF)V
    .locals 1

    .line 63
    new-instance v0, Lcom/powervision/natives/param/Attitude;

    invoke-direct {v0}, Lcom/powervision/natives/param/Attitude;-><init>()V

    .line 64
    iput p1, v0, Lcom/powervision/natives/param/Attitude;->pitch:F

    .line 65
    iput p2, v0, Lcom/powervision/natives/param/Attitude;->roll:F

    .line 66
    iput p3, v0, Lcom/powervision/natives/param/Attitude;->yaw:F

    .line 68
    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onInactive()V

    .line 43
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setAttitudeAndGroundspeedChangedListener(Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->registerListener()V

    .line 52
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setAttitudeAndGroundspeedChangedListener(Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;)V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->unregisterListener()V

    .line 58
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setAttitudeAndGroundspeedChangedListener(Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;)V

    return-void
.end method
