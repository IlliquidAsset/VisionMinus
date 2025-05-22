.class public Lcom/powervision/livestreaming/core/Packager$FLVPackager;
.super Ljava/lang/Object;
.source "Packager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/core/Packager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FLVPackager"
.end annotation


# static fields
.field public static final FLV_AUDIO_TAG_LENGTH:I = 0x2

.field public static final FLV_TAG_FOOTER_LENGTH:I = 0x4

.field public static final FLV_TAG_LENGTH:I = 0xb

.field public static final FLV_VIDEO_TAG_LENGTH:I = 0x5

.field public static final NALU_HEADER_LENGTH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillFlvAudioTag([BIZ)V
    .locals 1

    const/16 v0, -0x52

    .line 85
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    xor-int/lit8 p2, p2, 0x1

    .line 86
    aput-byte p2, p0, p1

    return-void
.end method

.method public static fillFlvVideoTag([BIZZI)V
    .locals 1

    if-eqz p3, :cond_0

    const/16 p3, 0x17

    goto :goto_0

    :cond_0
    const/16 p3, 0x27

    .line 65
    :goto_0
    aput-byte p3, p0, p1

    add-int/lit8 p3, p1, 0x1

    xor-int/lit8 v0, p2, 0x1

    .line 67
    aput-byte v0, p0, p3

    add-int/lit8 p3, p1, 0x2

    const/4 v0, 0x0

    .line 69
    aput-byte v0, p0, p3

    add-int/lit8 p3, p1, 0x3

    .line 70
    aput-byte v0, p0, p3

    add-int/lit8 p3, p1, 0x4

    .line 71
    aput-byte v0, p0, p3

    if-nez p2, :cond_1

    add-int/lit8 p1, p1, 0x5

    .line 74
    invoke-static {p0, p1, p4}, Lcom/powervision/livestreaming/tools/ByteArrayTools;->intToByteArrayFull([BII)V

    :cond_1
    return-void
.end method
