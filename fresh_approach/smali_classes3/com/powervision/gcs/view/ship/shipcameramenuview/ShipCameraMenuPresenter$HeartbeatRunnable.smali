.class Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;
.super Ljava/lang/Object;
.source "ShipCameraMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartbeatRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 322
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "ShipCameraMenuPresenter"

    const-string v1, "run: sendNormalData"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "{\"event\":0}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->sendNormalData([B)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;->this$0:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->access$300(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/camera/w4/CameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/camera/w4/CameraHelper;->checkHeartbeat()V

    :goto_0
    return-void
.end method
