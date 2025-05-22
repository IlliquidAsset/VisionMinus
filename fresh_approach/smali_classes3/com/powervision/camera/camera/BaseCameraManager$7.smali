.class Lcom/powervision/camera/camera/BaseCameraManager$7;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableAudioListener;


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

    .line 1505
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$7;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableAudio(Ljava/lang/String;)V
    .locals 3

    .line 1508
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$7;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-static {v0}, Lcom/powervision/camera/camera/BaseCameraManager;->access$000(Lcom/powervision/camera/camera/BaseCameraManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... onEnableAudio result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " localAudioState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/camera/camera/BaseCameraManager$7;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget v2, v2, Lcom/powervision/camera/camera/BaseCameraManager;->localAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 1510
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$7;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->localAudioState:I

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraAudioState:I

    goto :goto_0

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$7;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraAudioState:I

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->localAudioState:I

    .line 1516
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$7;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyEnableAudioListener:Ljava/util/List;

    const-string v2, "mCameraNotifyEnableAudioListener"

    invoke-static {v0, v1, v2}, Lcom/powervision/camera/camera/BaseCameraManager;->access$100(Lcom/powervision/camera/camera/BaseCameraManager;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$7;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyEnableAudioListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;

    .line 1520
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;->setEnableAudio(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
