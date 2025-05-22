.class Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;
.super Ljava/lang/Object;
.source "RESByteSpeedometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/core/RESByteSpeedometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ByteFrame"
.end annotation


# instance fields
.field bytenum:J

.field final synthetic this$0:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

.field time:J


# direct methods
.method public constructor <init>(Lcom/powervision/livestreaming/core/RESByteSpeedometer;JJ)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;->this$0:Lcom/powervision/livestreaming/core/RESByteSpeedometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p2, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;->time:J

    .line 56
    iput-wide p4, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;->bytenum:J

    return-void
.end method
