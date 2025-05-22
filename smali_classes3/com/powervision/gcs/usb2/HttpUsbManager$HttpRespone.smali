.class Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;
.super Ljava/lang/Object;
.source "HttpUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/HttpUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpRespone"
.end annotation


# instance fields
.field contentLen:J

.field headEnd:J

.field isIO:Z

.field receiveLen:J

.field final synthetic this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/HttpUsbManager;)V
    .locals 2

    .line 170
    iput-object p1, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->this$0:Lcom/powervision/gcs/usb2/HttpUsbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 172
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->contentLen:J

    .line 173
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->receiveLen:J

    .line 174
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/HttpUsbManager$HttpRespone;->headEnd:J

    return-void
.end method
