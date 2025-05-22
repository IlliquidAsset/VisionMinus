.class public Lcom/powervision/gcs/usb2/SdkAOAMsg;
.super Ljava/lang/Object;
.source "SdkAOAMsg.java"


# instance fields
.field channel:I

.field packet:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/powervision/gcs/usb2/SdkAOAMsg;->channel:I

    .line 13
    iput-object p2, p0, Lcom/powervision/gcs/usb2/SdkAOAMsg;->packet:[B

    return-void
.end method
