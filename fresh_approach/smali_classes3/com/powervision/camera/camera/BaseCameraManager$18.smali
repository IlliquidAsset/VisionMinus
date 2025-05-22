.class Lcom/powervision/camera/camera/BaseCameraManager$18;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;


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

    .line 2526
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$18;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelayPhoto(Ljava/lang/String;)V
    .locals 2

    .line 2530
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$18;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnDelayPhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    .line 2531
    invoke-interface {v1, p1}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;->onDelayPhoto(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
