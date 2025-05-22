.class Lcom/powervision/gcs/usb2/GCSSDKConnManager$2;
.super Ljava/lang/Object;
.source "GCSSDKConnManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSSDKConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusConnect(I)V
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manager CameraNotifyConnectionListener..getStatusConnect() rusult= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqCam"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyCameraStatusConnect(I)V

    return-void
.end method
