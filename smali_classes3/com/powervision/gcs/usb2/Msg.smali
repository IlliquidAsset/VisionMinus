.class public Lcom/powervision/gcs/usb2/Msg;
.super Ljava/lang/Object;
.source "Msg.java"


# instance fields
.field public channel:I

.field public index:I

.field public packet:[B

.field public type:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/powervision/gcs/usb2/Msg;->type:I

    .line 11
    iput v0, p0, Lcom/powervision/gcs/usb2/Msg;->index:I

    .line 20
    iput p1, p0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    .line 21
    iput-object p2, p0, Lcom/powervision/gcs/usb2/Msg;->packet:[B

    .line 22
    iput p3, p0, Lcom/powervision/gcs/usb2/Msg;->type:I

    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/powervision/gcs/usb2/Msg;->type:I

    .line 11
    iput v0, p0, Lcom/powervision/gcs/usb2/Msg;->index:I

    .line 26
    iput p1, p0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    .line 27
    iput-object p2, p0, Lcom/powervision/gcs/usb2/Msg;->packet:[B

    .line 28
    iput p3, p0, Lcom/powervision/gcs/usb2/Msg;->type:I

    .line 29
    iput p4, p0, Lcom/powervision/gcs/usb2/Msg;->index:I

    return-void
.end method
