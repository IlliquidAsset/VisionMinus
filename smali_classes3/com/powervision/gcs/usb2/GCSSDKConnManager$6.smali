.class Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;
.super Ljava/lang/Object;
.source "GCSSDKConnManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


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

    .line 392
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckError()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$102(Lcom/powervision/gcs/usb2/GCSSDKConnManager;Z)Z

    .line 426
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyDl01GroundConnection(I)V

    return-void
.end method

.method public onCheckOk()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$102(Lcom/powervision/gcs/usb2/GCSSDKConnManager;Z)Z

    .line 433
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyDl01GroundConnection(I)V

    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$102(Lcom/powervision/gcs/usb2/GCSSDKConnManager;Z)Z

    .line 419
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyDl01GroundConnection(I)V

    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 2

    const-string v0, "lzqW4_dl01_g"

    const-string v1, "notifyDl01GroundConnection"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$102(Lcom/powervision/gcs/usb2/GCSSDKConnManager;Z)Z

    .line 398
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyDl01GroundConnection(I)V

    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$102(Lcom/powervision/gcs/usb2/GCSSDKConnManager;Z)Z

    .line 412
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyDl01GroundConnection(I)V

    return-void
.end method

.method public onLinkDisconnect()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$102(Lcom/powervision/gcs/usb2/GCSSDKConnManager;Z)Z

    .line 405
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyDl01GroundConnection(I)V

    return-void
.end method
