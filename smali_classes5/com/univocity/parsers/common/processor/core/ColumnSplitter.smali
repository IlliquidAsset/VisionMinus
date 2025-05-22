.class Lcom/univocity/parsers/common/processor/core/ColumnSplitter;
.super Ljava/lang/Object;
.source "ColumnSplitter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private addNullsFrom:J

.field private columnValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private expectedRowCount:I

.field private headers:[Ljava/lang/String;

.field private rowCount:J


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 42
    iput v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->expectedRowCount:I

    if-lez p1, :cond_0

    .line 54
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->expectedRowCount:I

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected row count must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initialize(Lcom/univocity/parsers/common/Context;)V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 102
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    sget-object p1, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_0
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->columnsReordered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_1
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->extractedFieldIndexes()[I

    move-result-object p1

    .line 113
    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 114
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 116
    aget v3, p1, v2

    .line 117
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 118
    iget-object v3, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    aget v4, p1, v2

    aget-object v4, v0, v4

    aput-object v4, v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_4

    array-length v0, v0

    goto :goto_2

    :cond_4
    const/16 v0, 0xa

    :goto_2
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addValuesToColumns([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lcom/univocity/parsers/common/Context;",
            ")V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->initialize(Lcom/univocity/parsers/common/Context;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    if-ge v0, v1, :cond_3

    .line 149
    array-length v0, p1

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    .line 151
    invoke-interface {p2}, Lcom/univocity/parsers/common/Context;->currentRecord()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->addNullsFrom:J

    sub-long/2addr v5, v7

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    iget v7, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->expectedRowCount:I

    int-to-long v8, v7

    cmp-long v10, v8, v5

    if-gez v10, :cond_1

    long-to-int v7, v5

    :cond_1
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    sub-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 157
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_2
    iget-object v5, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 164
    :goto_2
    array-length v0, p1

    if-ge p2, v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    aget-object v1, p1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 169
    :cond_4
    array-length p2, p1

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 170
    array-length p1, p1

    :goto_3
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 171
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 174
    :cond_5
    iget-wide p1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->rowCount:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->rowCount:J

    return-void
.end method

.method clearValues()V
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->rowCount:J

    iput-wide v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->addNullsFrom:J

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    return-void
.end method

.method getColumnValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    return-object v0
.end method

.method getColumnValues(ILjava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 206
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 209
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 207
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Column index must be less than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 204
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Column index must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getColumnValues(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 224
    invoke-virtual {p0, v0, p2}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValues(ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No column named \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has been found. Available column headers: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getColumnValuesAsMapOfIndexes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->putColumnValuesInMapOfIndexes(Ljava/util/Map;)V

    return-object v0
.end method

.method getColumnValuesAsMapOfNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->putColumnValuesInMapOfNames(Ljava/util/Map;)V

    return-object v0
.end method

.method getHeader(I)Ljava/lang/String;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 133
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getHeaders()[Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method putColumnValuesInMapOfIndexes(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method putColumnValuesInMapOfNames(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 187
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getHeader(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed input does not have header for column at index \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'. Parsed header names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getHeaders()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->columnValues:Ljava/util/List;

    .line 71
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->headers:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->addNullsFrom:J

    .line 73
    iput-wide v0, p0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->rowCount:J

    return-void
.end method
