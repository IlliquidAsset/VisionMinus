.class Lcom/powervision/camera/camera/BaseCameraManager$8;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableLogoListener;


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

    .line 1556
    iput-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager$8;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableLogo(Ljava/lang/String;)V
    .locals 3

    .line 1559
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$8;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-static {v0}, Lcom/powervision/camera/camera/BaseCameraManager;->access$000(Lcom/powervision/camera/camera/BaseCameraManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onEnableLogo result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 1561
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$8;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->localWaterMarkType:I

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->waterMarkType:I

    goto :goto_0

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$8;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->waterMarkType:I

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->localWaterMarkType:I

    .line 1567
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$8;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnEnableLogoListenerList:Ljava/util/List;

    const-string v2, "cameraNotifyOnEnableLogoListenerList"

    invoke-static {v0, v1, v2}, Lcom/powervision/camera/camera/BaseCameraManager;->access$100(Lcom/powervision/camera/camera/BaseCameraManager;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1570
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager$8;->this$0:Lcom/powervision/camera/camera/BaseCameraManager;

    iget-object v0, v0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnEnableLogoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;

    .line 1571
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;->onEnableLogo(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
