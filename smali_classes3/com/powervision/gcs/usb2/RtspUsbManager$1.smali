.class Lcom/powervision/gcs/usb2/RtspUsbManager$1;
.super Ljava/lang/Object;
.source "RtspUsbManager.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/RtspUsbManager$TimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/usb2/RtspUsbManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/RtspUsbManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/RtspUsbManager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/RtspUsbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/RtspUsbManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->sendStart()V

    return-void
.end method
