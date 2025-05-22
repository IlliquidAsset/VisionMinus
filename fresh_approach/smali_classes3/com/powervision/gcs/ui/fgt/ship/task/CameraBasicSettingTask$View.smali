.class public interface abstract Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;
.super Ljava/lang/Object;
.source "CameraBasicSettingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract updateAllParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4AllParams;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateEvParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Ev;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateEvParameterValue(Ljava/lang/String;)V
.end method

.method public abstract updateISOParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Iso;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateISOParameterValue(Ljava/lang/String;)V
.end method

.method public abstract updateLDCParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Ldc;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateLDCParameterValue(Ljava/lang/String;)V
.end method

.method public abstract updateMMParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Ttl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateMMParameterValue(Ljava/lang/String;)V
.end method

.method public abstract updateReversalParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Flip;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateReversalParameterValue(Ljava/lang/String;)V
.end method

.method public abstract updateShakeParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Dis;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateShakeParameterValue(Ljava/lang/String;)V
.end method

.method public abstract updateWbParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4Wb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateWbParameterValue(Ljava/lang/String;)V
.end method
