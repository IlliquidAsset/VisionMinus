.class Lcom/powervision/camera/camera/BaseCameraManager$10;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;


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

    .line 2382
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$10;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureSnap()V
    .locals 3

    .line 2386
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$10;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 2387
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$10;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$10;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isGestureRecordToPhoto:Z

    goto :goto_0

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$10;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iput-boolean v2, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isGestureRecordToPhoto:Z

    .line 2392
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$10;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    .line 2394
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$10;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSnapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2395
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$10;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSnapList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;

    invoke-interface {v0}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;->onGestureSnap()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
