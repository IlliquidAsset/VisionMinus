.class public final Lcom/univocity/parsers/common/input/BomInput;
.super Ljava/io/InputStream;
.source "BomInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;
    }
.end annotation


# static fields
.field public static final UTF_16BE_BOM:[B

.field public static final UTF_16LE_BOM:[B

.field public static final UTF_32BE_BOM:[B

.field public static final UTF_32LE_BOM:[B

.field public static final UTF_8_BOM:[B


# instance fields
.field private bytes:[I

.field private bytesRead:I

.field private consumed:I

.field private encoding:Ljava/lang/String;

.field private exception:Ljava/io/IOException;

.field private final input:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/univocity/parsers/common/ArgumentUtils;->toByteArray([I)[B

    move-result-object v0

    sput-object v0, Lcom/univocity/parsers/common/input/BomInput;->UTF_8_BOM:[B

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 33
    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/univocity/parsers/common/ArgumentUtils;->toByteArray([I)[B

    move-result-object v1

    sput-object v1, Lcom/univocity/parsers/common/input/BomInput;->UTF_16BE_BOM:[B

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/univocity/parsers/common/ArgumentUtils;->toByteArray([I)[B

    move-result-object v0

    sput-object v0, Lcom/univocity/parsers/common/input/BomInput;->UTF_16LE_BOM:[B

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 35
    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/univocity/parsers/common/ArgumentUtils;->toByteArray([I)[B

    move-result-object v1

    sput-object v1, Lcom/univocity/parsers/common/input/BomInput;->UTF_32BE_BOM:[B

    new-array v0, v0, [I

    .line 36
    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/univocity/parsers/common/ArgumentUtils;->toByteArray([I)[B

    move-result-object v0

    sput-object v0, Lcom/univocity/parsers/common/input/BomInput;->UTF_32LE_BOM:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xef
        0xbb
        0xbf
    .end array-data

    :array_1
    .array-data 4
        0xfe
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xfe
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0xfe
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xff
        0xfe
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    .line 51
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 39
    iput-object v0, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lcom/univocity/parsers/common/input/BomInput;->consumed:I

    .line 52
    iput-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->input:Ljava/io/InputStream;

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result p1

    aput p1, v0, v1

    const/16 v0, 0xef

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v0

    aput v0, p1, v3

    const/16 p1, 0xbb

    if-ne v0, p1, :cond_5

    .line 57
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v0

    aput v0, p1, v2

    const/16 p1, 0xbf

    if-ne v0, p1, :cond_5

    const-string p1, "UTF-8"

    .line 58
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/input/BomInput;->setEncoding(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    aget p1, p1, v1

    const/16 v0, 0xff

    const/16 v4, 0xfe

    if-ne p1, v4, :cond_1

    .line 62
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v1

    aput v1, p1, v3

    if-ne v1, v0, :cond_5

    const-string p1, "UTF-16BE"

    .line 63
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/input/BomInput;->setEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    aget p1, p1, v1

    const/4 v5, 0x3

    if-ne p1, v0, :cond_4

    .line 66
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v0

    aput v0, p1, v3

    if-ne v0, v4, :cond_5

    .line 67
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v0

    aput v0, p1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "UTF-16LE"

    if-nez v0, :cond_3

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v1

    aput v1, v0, v5

    if-nez v1, :cond_2

    const-string p1, "UTF-32LE"

    .line 69
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/input/BomInput;->setEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/input/BomInput;->setEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/input/BomInput;->setEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_4
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    aget p1, p1, v1

    if-nez p1, :cond_5

    .line 78
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v1

    aput v1, p1, v3

    if-nez v1, :cond_5

    .line 79
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v1

    aput v1, p1, v2

    if-ne v1, v4, :cond_5

    .line 80
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v1

    aput v1, p1, v5

    if-ne v1, v0, :cond_5

    const-string p1, "UTF-32BE"

    .line 81
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/input/BomInput;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    iput-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->exception:Ljava/io/IOException;

    :cond_5
    :goto_0
    return-void
.end method

.method private next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/univocity/parsers/common/input/BomInput;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 117
    iget v1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytesRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytesRead:I

    return v0
.end method

.method private setEncoding(Ljava/lang/String;)V
    .locals 5

    .line 94
    iput-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->encoding:Ljava/lang/String;

    const-string v0, "UTF-16LE"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 96
    iget p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytesRead:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 97
    iput v3, p0, Lcom/univocity/parsers/common/input/BomInput;->bytesRead:I

    .line 98
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    aget v1, p1, v2

    aput v1, p1, v0

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/BomInput;->next()I

    move-result v0

    aput v0, p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    check-cast p1, Ljava/io/IOException;

    iput-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->exception:Ljava/io/IOException;

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 106
    iput v2, p0, Lcom/univocity/parsers/common/input/BomInput;->bytesRead:I

    .line 107
    iget-object p1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    aget v2, p1, v2

    aput v2, p1, v0

    .line 108
    aget v0, p1, v1

    aput v0, p1, v3

    return-void

    .line 112
    :cond_1
    iput v0, p0, Lcom/univocity/parsers/common/input/BomInput;->bytesRead:I

    return-void
.end method


# virtual methods
.method public final getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/univocity/parsers/common/input/BomInput;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/univocity/parsers/common/input/BomInput;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public final hasBytesStored()Z
    .locals 1

    .line 154
    iget v0, p0, Lcom/univocity/parsers/common/input/BomInput;->bytesRead:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/univocity/parsers/common/input/BomInput;->bytesRead:I

    if-lez v0, :cond_2

    iget v1, p0, Lcom/univocity/parsers/common/input/BomInput;->consumed:I

    if-le v0, v1, :cond_2

    .line 124
    iget-object v2, p0, Lcom/univocity/parsers/common/input/BomInput;->bytes:[I

    aget v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 129
    iput v1, p0, Lcom/univocity/parsers/common/input/BomInput;->consumed:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/univocity/parsers/common/input/BomInput;->exception:Ljava/io/IOException;

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return v2

    .line 134
    :cond_2
    iget v0, p0, Lcom/univocity/parsers/common/input/BomInput;->consumed:I

    iget v1, p0, Lcom/univocity/parsers/common/input/BomInput;->bytesRead:I

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 135
    iput v0, p0, Lcom/univocity/parsers/common/input/BomInput;->consumed:I

    const/4 v0, -0x1

    return v0

    .line 139
    :cond_3
    new-instance v0, Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;

    iget-object v1, p0, Lcom/univocity/parsers/common/input/BomInput;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/univocity/parsers/common/input/BomInput;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    throw v0
.end method
