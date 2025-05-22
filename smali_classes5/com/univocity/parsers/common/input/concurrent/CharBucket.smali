.class Lcom/univocity/parsers/common/input/concurrent/CharBucket;
.super Ljava/lang/Object;
.source "CharBucket.java"


# instance fields
.field final data:[C

.field length:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->length:I

    if-lez p1, :cond_0

    .line 44
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->data:[C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [C

    .line 46
    iput-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->data:[C

    :goto_0
    return-void
.end method

.method public constructor <init>(IC)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/input/concurrent/CharBucket;-><init>(I)V

    if-lez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->data:[C

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([CC)V

    :cond_0
    return-void
.end method


# virtual methods
.method public fill(Ljava/io/Reader;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->data:[C

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Reader;->read([CII)I

    move-result p1

    iput p1, p0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->length:I

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 79
    iget v0, p0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->length:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
