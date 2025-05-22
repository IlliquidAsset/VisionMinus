.class Lcom/powervision/gcs/usb2/GCSConnectionManager$3;
.super Ljava/lang/Object;
.source "GCSConnectionManager.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GCSConnectionManager;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$3;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSidFailed()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "getSSidFailed"

    .line 556
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getSSidSuccess()V
    .locals 2

    .line 534
    invoke-static {}, Lcom/powervision/base/utils/USBUtils;->isTetheringActive()Z

    move-result v0

    const-string v1, "lzqUsb"

    if-nez v0, :cond_0

    const-string v0, "getSSidSuccess \u7f51\u7edc\u5171\u4eab\u6ca1\u6253\u5f00 \u5c31 \u7528wifi\u8fde\u63a5"

    .line 535
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$3;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->goToWifi()V

    goto :goto_0

    :cond_0
    const-string v0, "getSSidSuccess \u7f51\u7edc\u5171\u4eab\u6253\u5f00 \u4e0d\u5207\u6362\u6210WIFI"

    .line 538
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public needPermission()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "needPermission"

    .line 529
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateConnectUI()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "updateConnectUI"

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateDisconnectUI()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "updateDisconnectUI"

    .line 544
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
