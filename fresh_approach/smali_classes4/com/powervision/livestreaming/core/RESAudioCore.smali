.class public Lcom/powervision/livestreaming/core/RESAudioCore;
.super Ljava/lang/Object;
.source "RESAudioCore.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/powervision/livestreaming/core/RESAudioCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/livestreaming/core/RESAudioCore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public sendADTSPacket(J[BIZZ)V
    .locals 1

    .line 75
    new-instance p6, Lcom/powervision/livestreaming/rtmp/RESFlvData;

    invoke-direct {p6}, Lcom/powervision/livestreaming/rtmp/RESFlvData;-><init>()V

    xor-int/lit8 v0, p5, 0x1

    .line 76
    iput-boolean v0, p6, Lcom/powervision/livestreaming/rtmp/RESFlvData;->droppable:Z

    if-eqz p5, :cond_0

    const/4 p5, 0x6

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 77
    :goto_0
    iput p5, p6, Lcom/powervision/livestreaming/rtmp/RESFlvData;->audioFrameType:I

    .line 78
    iput-object p3, p6, Lcom/powervision/livestreaming/rtmp/RESFlvData;->byteBuffer:[B

    .line 79
    iput p4, p6, Lcom/powervision/livestreaming/rtmp/RESFlvData;->size:I

    long-to-int p2, p1

    .line 80
    iput p2, p6, Lcom/powervision/livestreaming/rtmp/RESFlvData;->dts:I

    const/16 p1, 0x8

    .line 81
    iput p1, p6, Lcom/powervision/livestreaming/rtmp/RESFlvData;->flvTagType:I

    .line 82
    iget-object p2, p0, Lcom/powervision/livestreaming/core/RESAudioCore;->dataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    if-eqz p2, :cond_1

    .line 83
    invoke-interface {p2, p6, p1}, Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;->collect(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V

    :cond_1
    return-void
.end method

.method public sendAudioAACPacket(JLjava/nio/ByteBuffer;ZZ)V
    .locals 3

    .line 35
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p5

    add-int/lit8 v0, p5, 0x2

    .line 37
    new-array v1, v0, [B

    const/4 v2, 0x2

    .line 39
    invoke-virtual {p3, v1, v2, p5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    .line 40
    invoke-static {v1, p3, p4}, Lcom/powervision/livestreaming/core/Packager$FLVPackager;->fillFlvAudioTag([BIZ)V

    .line 43
    new-instance p5, Lcom/powervision/livestreaming/rtmp/RESFlvData;

    invoke-direct {p5}, Lcom/powervision/livestreaming/rtmp/RESFlvData;-><init>()V

    xor-int/lit8 v2, p4, 0x1

    .line 44
    iput-boolean v2, p5, Lcom/powervision/livestreaming/rtmp/RESFlvData;->droppable:Z

    if-eqz p4, :cond_0

    const/4 p3, 0x6

    .line 45
    :cond_0
    iput p3, p5, Lcom/powervision/livestreaming/rtmp/RESFlvData;->audioFrameType:I

    .line 46
    iput-object v1, p5, Lcom/powervision/livestreaming/rtmp/RESFlvData;->byteBuffer:[B

    .line 47
    iput v0, p5, Lcom/powervision/livestreaming/rtmp/RESFlvData;->size:I

    long-to-int p2, p1

    .line 48
    iput p2, p5, Lcom/powervision/livestreaming/rtmp/RESFlvData;->dts:I

    const/16 p1, 0x8

    .line 49
    iput p1, p5, Lcom/powervision/livestreaming/rtmp/RESFlvData;->flvTagType:I

    .line 50
    iget-object p2, p0, Lcom/powervision/livestreaming/core/RESAudioCore;->dataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    if-eqz p2, :cond_1

    .line 51
    invoke-interface {p2, p5, p1}, Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;->collect(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V

    :cond_1
    return-void
.end method

.method public sendAudioAACPacket(J[BIZ)V
    .locals 4

    add-int/lit8 v0, p4, 0x2

    .line 57
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 59
    invoke-static {p3, v2, v1, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-static {v1, v2, p5}, Lcom/powervision/livestreaming/core/Packager$FLVPackager;->fillFlvAudioTag([BIZ)V

    .line 63
    new-instance p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;

    invoke-direct {p3}, Lcom/powervision/livestreaming/rtmp/RESFlvData;-><init>()V

    xor-int/lit8 p4, p5, 0x1

    .line 64
    iput-boolean p4, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->droppable:Z

    .line 65
    iput-object v1, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->byteBuffer:[B

    .line 66
    iput v0, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->size:I

    long-to-int p2, p1

    .line 67
    iput p2, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->dts:I

    const/16 p1, 0x8

    .line 68
    iput p1, p3, Lcom/powervision/livestreaming/rtmp/RESFlvData;->flvTagType:I

    .line 69
    iget-object p2, p0, Lcom/powervision/livestreaming/core/RESAudioCore;->dataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    if-eqz p2, :cond_0

    .line 70
    invoke-interface {p2, p3, p1}, Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;->collect(Lcom/powervision/livestreaming/rtmp/RESFlvData;I)V

    :cond_0
    return-void
.end method

.method public setRESFlvDataCollecter(Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESAudioCore;->dataCollecter:Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    return-void
.end method
