.class Lcom/powervision/camera/camera/BaseCameraManager$14;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartTrack;


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

    .line 2454
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$14;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureStartTrack()V
    .locals 3

    const-string v0, "new_camera"

    const-string v1, "callbackk ...onGestureStartTrack ...."

    .line 2457
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$14;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGestureStartTrackListenerList:Ljava/util/List;

    const-string v2, "mCameraOnGestureStartTrackListenerList"

    invoke-static {v0, v1, v2}, Lcom/powervision/camera/camera/BaseCameraManager;->access$100(Lcom/powervision/camera/camera/BaseCameraManager;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$14;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGestureStartTrackListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;

    .line 2462
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;->onGestureStartTrack()V

    goto :goto_0

    :cond_0
    return-void
.end method
