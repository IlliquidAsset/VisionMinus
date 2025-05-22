.class Lcom/powervision/camera/camera/BaseCameraManager$1;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;


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

    .line 779
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$1;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusConnect(I)V
    .locals 3

    .line 782
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$1;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-static {v0}, Lcom/powervision/camera/camera/BaseCameraManager;->access$000(Lcom/powervision/camera/camera/BaseCameraManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " camera ...init ...StatusConnect() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$1;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isCameraStateConnect:Z

    .line 784
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$1;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-boolean v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isCameraStateConnect:Z

    if-eqz v0, :cond_2

    .line 785
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$1;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object p1, p1, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraListenerConnectStateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 788
    :cond_1
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$1;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object p1, p1, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraListenerConnectStateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/camera/CameraListener$CameraConnectStateListener;

    .line 789
    invoke-interface {v0}, Lcom/powervision/camera/camera/CameraListener$CameraConnectStateListener;->onCameraStateConnect()V

    goto :goto_1

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$1;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraListenerConnectStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraConnectStateListener;

    .line 793
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraConnectStateListener;->onCameraStateConnectFaile()V

    goto :goto_2

    .line 795
    :cond_3
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$1;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-static {v0}, Lcom/powervision/camera/camera/BaseCameraManager;->access$000(Lcom/powervision/camera/camera/BaseCameraManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  statusDisConnect()......statusConnect()..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
