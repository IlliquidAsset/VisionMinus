.class Lcom/powervision/gcs/usb2/GCSSDKConnManager$10;
.super Ljava/lang/Object;
.source "GCSSDKConnManager.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;


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

    .line 765
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$10;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    const-string v0, "lzqMsg"

    const-string v1, "pingThread free"

    .line 779
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public work()V
    .locals 3

    .line 769
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingRemtote()Z

    move-result v0

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pingThread work result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqMsg"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$10;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$300(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    .line 773
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$10;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->access$400(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    :cond_0
    return-void
.end method
