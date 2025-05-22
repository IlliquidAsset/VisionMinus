.class Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "ShipCameraMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4GetWorkMode;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 261
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->handleShootingMode(Lcom/powervision/localhttp/entity/BaseModel;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    iget p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onRequestTimeout(I)V

    :goto_0
    return-void
.end method

.method public setWorkModeCommonRecord(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setWorkModeCommonRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->handleSetRecordMode(Lcom/powervision/localhttp/entity/BaseModel;)V

    const/16 p1, 0x14

    .line 272
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setPvw4CameraLastRecordMode(I)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    iget p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onRequestTimeout(I)V

    .line 276
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->stopSwitchMode()V

    return-void
.end method

.method public setWorkModeMultiPicture(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 305
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setWorkModeMultiPicture(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 307
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->handleSetTakePhotoMode(Lcom/powervision/localhttp/entity/BaseModel;)V

    const/16 p1, 0xa

    .line 308
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setPvw4CameraLastCameraMode(I)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    iget p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onRequestTimeout(I)V

    .line 312
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->stopSwitchMode()V

    return-void
.end method

.method public setWorkModeSinglePicture(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 293
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setWorkModeSinglePicture(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 295
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->handleSetTakePhotoMode(Lcom/powervision/localhttp/entity/BaseModel;)V

    const/4 p1, 0x0

    .line 296
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setPvw4CameraLastCameraMode(I)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    iget p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onRequestTimeout(I)V

    .line 300
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->stopSwitchMode()V

    return-void
.end method

.method public setWorkModeSlowRecord(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setWorkModeSlowRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 283
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->handleSetRecordMode(Lcom/powervision/localhttp/entity/BaseModel;)V

    const/16 p1, 0x18

    .line 284
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setPvw4CameraLastRecordMode(I)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    iget p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onRequestTimeout(I)V

    .line 288
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->stopSwitchMode()V

    return-void
.end method

.method public startRecord(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->startRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 241
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->handleStartRecord(Lcom/powervision/localhttp/entity/BaseModel;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    iget p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onRequestTimeout(I)V

    :goto_0
    return-void
.end method

.method public stopRecord(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->stopRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 251
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->handleStopRecord(Lcom/powervision/localhttp/entity/BaseModel;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    iget p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onRequestTimeout(I)V

    :goto_0
    return-void
.end method

.method public takePhoto(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->takePhoto(ILcom/powervision/localhttp/entity/BaseModel;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takePhoto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCameraMenuPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 231
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->handleTakPhoto(Lcom/powervision/localhttp/entity/BaseModel;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    move-result-object p1

    iget p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->onRequestTimeout(I)V

    :goto_0
    return-void
.end method
