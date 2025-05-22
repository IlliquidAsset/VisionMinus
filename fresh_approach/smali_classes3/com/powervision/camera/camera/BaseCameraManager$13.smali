.class Lcom/powervision/camera/camera/BaseCameraManager$13;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;


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

    .line 2440
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$13;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureStopRecord()V
    .locals 2

    .line 2443
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$13;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    const/4 v0, 0x0

    .line 2444
    :goto_0
    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager$13;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v1, v1, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStopRecordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2445
    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager$13;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v1, v1, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStopRecordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;

    invoke-interface {v1}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;->onGestureStopRecord()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
