.class Lcom/powervision/gcs/usb2/GCSSDKConnManager$1;
.super Ljava/lang/Object;
.source "GCSSDKConnManager.java"

# interfaces
.implements Lcom/powervision/base/utils/WifiSsidutil$WifiSsidCallBack;


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

    .line 137
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSsidCallBack()V
    .locals 2

    const-string v0, "lzqConn"

    const-string v1, "onSsidCallBack"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$000(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$1;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$000(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;->getSSidSuccess()V

    :cond_0
    return-void
.end method

.method public onWifiDisconnect()V
    .locals 0

    return-void
.end method
