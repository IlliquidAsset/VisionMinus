.class public Lcom/powervision/livestreaming/rtmp/RESFlvData;
.super Ljava/lang/Object;
.source "RESFlvData.java"


# static fields
.field public static final AAC_SEQUENCE_HEADER:I = 0x6

.field public static final FLV_RTMP_PACKET_TYPE_AUDIO:I = 0x8

.field public static final FLV_RTMP_PACKET_TYPE_INFO:I = 0x12

.field public static final FLV_RTMP_PACKET_TYPE_VIDEO:I = 0x9

.field public static final FRAME_TYPE_NOMAL:I = 0x0

.field public static final NALU_TYPE_IDR:I = 0x5


# instance fields
.field public audioFrameType:I

.field public byteBuffer:[B

.field public droppable:Z

.field public dts:I

.field public flvTagType:I

.field public size:I

.field public videoFrameType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isKeyframe()Z
    .locals 2

    .line 31
    iget v0, p0, Lcom/powervision/livestreaming/rtmp/RESFlvData;->videoFrameType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
