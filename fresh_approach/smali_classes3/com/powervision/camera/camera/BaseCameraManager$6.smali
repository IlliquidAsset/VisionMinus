.class Lcom/powervision/camera/camera/BaseCameraManager$6;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetEmmcStorageSizeListener;


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

    .line 1400
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$6;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmmcStorageSize(Ljava/lang/String;)V
    .locals 3

    .line 1403
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$6;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-static {v0}, Lcom/powervision/camera/camera/BaseCameraManager;->access$000(Lcom/powervision/camera/camera/BaseCameraManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getEmmcStorageSize()--s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$6;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-static {p1}, Lcom/powervision/camera/utils/CameraUtil;->getStorageSizeValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->emmcRemainCapacity:I

    .line 1405
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$6;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-static {v0}, Lcom/powervision/camera/camera/BaseCameraManager;->access$300(Lcom/powervision/camera/camera/BaseCameraManager;)V

    .line 1406
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$6;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetEmmcStorageSizeListenerList:Ljava/util/List;

    const-string v2, "cameraNotifyGetEmmcStorageSizeListenerList"

    invoke-static {v0, v1, v2}, Lcom/powervision/camera/camera/BaseCameraManager;->access$100(Lcom/powervision/camera/camera/BaseCameraManager;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$6;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetEmmcStorageSizeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetEmmcStorageSizeListener;

    .line 1410
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetEmmcStorageSizeListener;->getEmmcStorageSize(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
