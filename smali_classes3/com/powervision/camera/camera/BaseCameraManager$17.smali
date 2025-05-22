.class Lcom/powervision/camera/camera/BaseCameraManager$17;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableGesture;


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

    .line 2503
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$17;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableGesture(Ljava/lang/String;)V
    .locals 3

    .line 2506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "0"

    .line 2509
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2510
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$17;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-static {v0}, Lcom/powervision/camera/camera/BaseCameraManager;->access$000(Lcom/powervision/camera/camera/BaseCameraManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onEnableGesture result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$17;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->localGestureState:I

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->gestureState:I

    goto :goto_0

    .line 2513
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$17;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->gestureState:I

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->localGestureState:I

    .line 2516
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$17;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnEnableGestureListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;

    .line 2517
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;->onEnableGesture(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
