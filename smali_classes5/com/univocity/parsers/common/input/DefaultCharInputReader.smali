.class public Lcom/univocity/parsers/common/input/DefaultCharInputReader;
.super Lcom/univocity/parsers/common/input/AbstractCharInputReader;
.source "DefaultCharInputReader.java"


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(CII)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;-><init>(CI)V

    .line 40
    new-array p1, p2, [C

    iput-object p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    return-void
.end method

.method public constructor <init>([CCII)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p4}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;-><init>([CCI)V

    .line 53
    new-array p1, p3, [C

    iput-object p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    return-void
.end method


# virtual methods
.method public reloadBuffer()V
    .locals 4

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharInputReader;->reader:Ljava/io/Reader;

    iget-object v1, p0, Lcom/univocity/parsers/common/input/DefaultCharInputReader;->buffer:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/univocity/parsers/common/input/DefaultCharInputReader;->buffer:[C

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/DefaultCharInputReader;->stop()V

    .line 83
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/input/DefaultCharInputReader;->unwrapInputStream(Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;)V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error reading from input"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected setReader(Ljava/io/Reader;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/univocity/parsers/common/input/DefaultCharInputReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method public stop()V
    .locals 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharInputReader;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/univocity/parsers/common/input/DefaultCharInputReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error closing input"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
