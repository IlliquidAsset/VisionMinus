.class public interface abstract Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;
.super Ljava/lang/Object;
.source "ShipCameraMenuTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract handleRemoteSignal(I)V
.end method

.method public abstract handleSetRecordMode(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleSetTakePhotoMode(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleShootingMode(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4GetWorkMode;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleStartRecord(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleStopRecord(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleTakPhoto(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCameraConnectTimeout()V
.end method

.method public abstract onRemoteKeyBResult(I)V
.end method

.method public abstract onRequestTimeout(I)V
.end method

.method public abstract startSwitchMode()V
.end method

.method public abstract stopSwitchMode()V
.end method
