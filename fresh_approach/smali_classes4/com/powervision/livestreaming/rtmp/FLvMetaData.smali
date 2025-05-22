.class public Lcom/powervision/livestreaming/rtmp/FLvMetaData;
.super Ljava/lang/Object;
.source "FLvMetaData.java"


# static fields
.field private static final EmptySize:I = 0x15

.field private static final Name:Ljava/lang/String; = "onMetaData"

.field private static final ObjEndMarker:[B

.field private static final ScriptData:I = 0x12

.field private static final TS_SID:[B


# instance fields
.field private DataSize:I

.field private MetaData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private MetaDataFrame:[B

.field private pointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 64
    fill-array-data v0, :array_0

    sput-object v0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->TS_SID:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 65
    fill-array-data v0, :array_1

    sput-object v0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->ObjEndMarker:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x9t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->DataSize:I

    return-void
.end method

.method public constructor <init>(Lcom/powervision/livestreaming/model/RESCoreParameters;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;-><init>()V

    const-string v0, "audiocodecid"

    const/16 v1, 0xa

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecAACBitRate()I

    move-result v0

    const v1, 0x8000

    const-string v2, "audiodatarate"

    if-eq v0, v1, :cond_2

    const v1, 0xc000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 90
    invoke-virtual {p0, v2, v0}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    .line 87
    invoke-virtual {p0, v2, v0}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x20

    .line 84
    invoke-virtual {p0, v2, v0}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    .line 94
    :goto_0
    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecAACSampleRate()I

    move-result v0

    const-string v1, "audiosamplerate"

    const/16 v2, 0x3e80

    if-eq v0, v2, :cond_4

    const v2, 0xac44

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    :goto_1
    const/4 v0, 0x7

    const-string v1, "videocodecid"

    .line 107
    invoke-virtual {p0, v1, v0}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecAVCFrameRate()I

    move-result v0

    const-string v1, "framerate"

    invoke-virtual {p0, v1, v0}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecVideoWidth()I

    move-result v0

    const-string v1, "width"

    invoke-virtual {p0, v1, v0}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getMediacodecVideoHeight()I

    move-result p1

    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method private Addbyte(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    iget v1, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->pointer:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 175
    iput v1, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->pointer:I

    return-void
.end method

.method private AddbyteArray([B)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    iget v1, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->pointer:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->pointer:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->pointer:I

    return-void
.end method

.method private addProperty([BB[B)V
    .locals 4

    .line 122
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p3

    add-int/2addr v0, v1

    .line 123
    new-array v1, v0, [B

    .line 125
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v2, p1

    aput-byte p2, v1, v2

    .line 127
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    array-length p2, p3

    invoke-static {p3, v3, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object p1, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaData:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget p1, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->DataSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->DataSize:I

    return-void
.end method

.method private toFlvNum(D)[B
    .locals 1

    .line 199
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/16 v0, 0x8

    .line 200
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->toUI(JI)[B

    move-result-object p1

    return-object p1
.end method

.method private toFlvString(Ljava/lang/String;)[B
    .locals 4

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3, v1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->toUI(JI)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private toUI(JI)[B
    .locals 7

    .line 191
    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int/lit8 v2, p3, -0x1

    sub-int/2addr v2, v1

    mul-int/lit8 v3, v1, 0x8

    shr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 193
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getMetaData()[B
    .locals 7

    .line 134
    iget v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->DataSize:I

    add-int/lit8 v0, v0, 0x15

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->pointer:I

    const/4 v1, 0x2

    .line 137
    invoke-direct {p0, v1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->Addbyte(I)V

    const-string v1, "onMetaData"

    .line 138
    invoke-direct {p0, v1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->toFlvString(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->AddbyteArray([B)V

    const/16 v1, 0x8

    .line 140
    invoke-direct {p0, v1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->Addbyte(I)V

    .line 141
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->toUI(JI)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->AddbyteArray([B)V

    .line 142
    iget-object v1, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 143
    invoke-direct {p0, v2}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->AddbyteArray([B)V

    goto :goto_0

    .line 145
    :cond_0
    sget-object v1, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->ObjEndMarker:[B

    invoke-direct {p0, v1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->AddbyteArray([B)V

    :goto_1
    add-int/lit8 v1, v0, 0xa

    .line 148
    iget-object v2, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    array-length v3, v2

    const-string v4, "================,metaDataFrame = "

    const-string v5, "getMetaData"

    if-ge v1, v3, :cond_1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v4, v0, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v6, v0, 0x2

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v6, v0, 0x3

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v6, v0, 0x4

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v6, v0, 0x5

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v6, v0, 0x6

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v6, v0, 0x7

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v6, v0, 0x8

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    add-int/lit8 v0, v0, 0x9

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_1

    .line 159
    :cond_1
    array-length v0, v2

    if-le v1, v0, :cond_2

    .line 160
    array-length v0, v2

    add-int/lit8 v1, v1, -0xa

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    array-length v0, v0

    if-ge v1, v0, :cond_2

    const-string v0, "================,metaDataFrame =================================================== "

    .line 164
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->MetaDataFrame:[B

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->toFlvString(Ljava/lang/String;)[B

    move-result-object p1

    int-to-double v0, p2

    invoke-direct {p0, v0, v1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->toFlvNum(D)[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->addProperty([BB[B)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    invoke-direct {p0, p1}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->toFlvString(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->toFlvString(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/powervision/livestreaming/rtmp/FLvMetaData;->addProperty([BB[B)V

    return-void
.end method
