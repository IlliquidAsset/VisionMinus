.class Lcom/powervision/camera/camera/BaseCameraManager$23;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/camera/camera/BaseCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/camera/BaseCameraManager;


# direct methods
.method constructor <init>(Lcom/powervision/camera/camera/BaseCameraManager;)V
    .locals 0

    .line 2577
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$23;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLapsePhotoNumber(I)V
    .locals 2

    .line 2580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2581
    :goto_0
    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager$23;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v1, v1, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnLapsePhotoNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2582
    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager$23;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v1, v1, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnLapsePhotoNumberList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    invoke-interface {v1, p1}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;->onLapsePhotoNumber(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
