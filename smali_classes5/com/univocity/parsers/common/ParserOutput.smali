.class public Lcom/univocity/parsers/common/ParserOutput;
.super Ljava/lang/Object;
.source "ParserOutput.java"


# instance fields
.field public appender:Lcom/univocity/parsers/common/input/CharAppender;

.field private final appenderInstance:Lcom/univocity/parsers/common/input/CharAppender;

.field private final appenders:[Lcom/univocity/parsers/common/input/CharAppender;

.field protected column:I

.field private columnsReordered:Z

.field private columnsToExtractInitialized:Z

.field private currentRecord:J

.field private headers:[Ljava/lang/String;

.field private final nullValue:Ljava/lang/String;

.field parsedHeaders:[Ljava/lang/String;

.field protected final parsedValues:[Ljava/lang/String;

.field private final parser:Lcom/univocity/parsers/common/AbstractParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/AbstractParser<",
            "*>;"
        }
    .end annotation
.end field

.field private selectedIndexes:[I

.field protected final settings:Lcom/univocity/parsers/common/CommonParserSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/CommonParserSettings<",
            "*>;"
        }
    .end annotation
.end field

.field private final skipEmptyLines:Z

.field public trim:Z


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/CommonParserSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/AbstractParser<",
            "*>;",
            "Lcom/univocity/parsers/common/CommonParserSettings<",
            "*>;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    .line 81
    iput-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->trim:Z

    .line 107
    iput-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->parser:Lcom/univocity/parsers/common/AbstractParser;

    .line 108
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonParserSettings;->newCharAppender()Lcom/univocity/parsers/common/input/CharAppender;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->appenderInstance:Lcom/univocity/parsers/common/input/CharAppender;

    .line 109
    iput-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    .line 110
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonParserSettings;->getMaxColumns()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedValues:[Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonParserSettings;->getMaxColumns()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Lcom/univocity/parsers/common/input/CharAppender;

    iput-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    .line 112
    iget-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iput-object p2, p0, Lcom/univocity/parsers/common/ParserOutput;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    .line 114
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonParserSettings;->getSkipEmptyLines()Z

    move-result p1

    iput-boolean p1, p0, Lcom/univocity/parsers/common/ParserOutput;->skipEmptyLines:Z

    .line 115
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonParserSettings;->getNullValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->nullValue:Ljava/lang/String;

    .line 116
    iput-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsToExtractInitialized:Z

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/univocity/parsers/common/ParserOutput;->currentRecord:J

    .line 118
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonParserSettings;->getHeaders()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/univocity/parsers/common/ParserOutput;->initializeHeaders()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/CommonParserSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/CommonParserSettings<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/ParserOutput;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/CommonParserSettings;)V

    return-void
.end method

.method private initializeColumnsToExtract([Ljava/lang/String;)V
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/CommonParserSettings;->getFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 229
    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/fields/FieldSelector;->getFieldIndexes([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->selectedIndexes:[I

    if-eqz v1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    invoke-static {}, Lcom/univocity/parsers/common/input/NoopCharAppender;->getInstance()Lcom/univocity/parsers/common/input/CharAppender;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 234
    :goto_0
    iget-object v3, p0, Lcom/univocity/parsers/common/ParserOutput;->selectedIndexes:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 235
    aget v3, v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    iget-object v5, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    aput-object v5, v4, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/univocity/parsers/common/ParserOutput;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/CommonParserSettings;->isColumnReorderingEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsReordered:Z

    if-nez v2, :cond_2

    .line 243
    array-length v2, p1

    iget-object v3, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    instance-of v0, v0, Lcom/univocity/parsers/common/fields/FieldIndexSelector;

    if-nez v0, :cond_2

    .line 244
    array-length p1, p1

    array-length v0, v3

    iget-object v2, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-static {v3, p1, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 246
    :cond_2
    iget-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    :cond_3
    return-void
.end method


# virtual methods
.method public final discardValues()V
    .locals 2

    const/4 v0, 0x0

    .line 333
    iput v0, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    .line 334
    iget-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    return-void
.end method

.method public emptyParsed()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedValues:[Ljava/lang/String;

    iget v1, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    iget-object v3, p0, Lcom/univocity/parsers/common/ParserOutput;->nullValue:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 296
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    return-void
.end method

.method public getCurrentColumn()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    return v0
.end method

.method public getCurrentRecord()J
    .locals 2

    .line 326
    iget-wide v0, p0, Lcom/univocity/parsers/common/ParserOutput;->currentRecord:J

    return-wide v0
.end method

.method getFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/CommonParserSettings;->getFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()[Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->parser:Lcom/univocity/parsers/common/AbstractParser;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->extractHeadersIfRequired()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIndexes()[I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->selectedIndexes:[I

    return-object v0
.end method

.method protected initializeHeaders()V
    .locals 4

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsReordered:Z

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->selectedIndexes:[I

    .line 126
    iget-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->appenderInstance:Lcom/univocity/parsers/common/input/CharAppender;

    iput-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    .line 127
    iget-object v2, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    iget v1, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    if-lez v1, :cond_0

    .line 130
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedHeaders:[Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedValues:[Ljava/lang/String;

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/CommonParserSettings;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->headers:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->headers:[Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_1
    iget v0, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    if-lez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedHeaders:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->headers:[Ljava/lang/String;

    .line 141
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->headers:[Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 142
    iput-boolean v1, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsToExtractInitialized:Z

    .line 143
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/ParserOutput;->initializeColumnsToExtract([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public isColumnReorderingEnabled()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsReordered:Z

    return v0
.end method

.method final reset()V
    .locals 3

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsToExtractInitialized:Z

    const-wide/16 v1, 0x0

    .line 342
    iput-wide v1, p0, Lcom/univocity/parsers/common/ParserOutput;->currentRecord:J

    .line 343
    iput v0, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->headers:[Ljava/lang/String;

    return-void
.end method

.method public rowParsed()[Ljava/lang/String;
    .locals 7

    .line 154
    iget v0, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_8

    .line 156
    iget-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsToExtractInitialized:Z

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/univocity/parsers/common/ParserOutput;->initializeHeaders()V

    .line 159
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/CommonParserSettings;->isHeaderExtractionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedValues:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    iput v4, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    .line 162
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    return-object v3

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsReordered:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->selectedIndexes:[I

    if-eqz v0, :cond_3

    .line 165
    iget v0, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/common/ParserOutput;->selectedIndexes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 167
    aget v2, v2, v1

    .line 168
    iget v3, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    if-ge v2, v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_2
    iput v4, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    return-object v0

    .line 177
    :cond_3
    iget-wide v5, p0, Lcom/univocity/parsers/common/ParserOutput;->currentRecord:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/univocity/parsers/common/ParserOutput;->currentRecord:J

    .line 178
    iget-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsReordered:Z

    if-eqz v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->selectedIndexes:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/univocity/parsers/common/ParserOutput;->selectedIndexes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 181
    aget v2, v2, v1

    .line 182
    iget v3, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    if-ge v2, v3, :cond_5

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    goto :goto_2

    .line 185
    :cond_4
    iget-object v3, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedValues:[Ljava/lang/String;

    aget-object v2, v3, v2

    aput-object v2, v0, v1

    goto :goto_3

    .line 183
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/univocity/parsers/common/ParserOutput;->nullValue:Ljava/lang/String;

    aput-object v2, v0, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    :cond_6
    iput v4, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    .line 189
    iget-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    return-object v0

    .line 192
    :cond_7
    iget v0, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    new-array v1, v0, [Ljava/lang/String;

    .line 193
    iget-object v2, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedValues:[Ljava/lang/String;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput v4, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    .line 195
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    return-object v1

    .line 198
    :cond_8
    iget-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->skipEmptyLines:Z

    if-nez v0, :cond_b

    .line 199
    iget-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsToExtractInitialized:Z

    if-nez v0, :cond_9

    .line 200
    invoke-virtual {p0}, Lcom/univocity/parsers/common/ParserOutput;->initializeHeaders()V

    .line 203
    :cond_9
    iget-wide v3, p0, Lcom/univocity/parsers/common/ParserOutput;->currentRecord:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/univocity/parsers/common/ParserOutput;->currentRecord:J

    .line 205
    iget-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->columnsReordered:Z

    if-eqz v0, :cond_a

    .line 206
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->selectedIndexes:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/univocity/parsers/common/ParserOutput;->nullValue:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 211
    :cond_a
    sget-object v0, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    :cond_b
    return-object v3
.end method

.method public valueParsed()V
    .locals 3

    .line 303
    iget-boolean v0, p0, Lcom/univocity/parsers/common/ParserOutput;->trim:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharAppender;->updateWhitespace()V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedValues:[Ljava/lang/String;

    iget v1, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    iget-object v2, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v2}, Lcom/univocity/parsers/common/input/CharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 307
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    iget v1, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    return-void
.end method

.method public valueParsed(Ljava/lang/String;)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/univocity/parsers/common/ParserOutput;->parsedValues:[Ljava/lang/String;

    iget v1, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/ParserOutput;->column:I

    aput-object p1, v0, v1

    .line 317
    iget-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->appenders:[Lcom/univocity/parsers/common/input/CharAppender;

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    return-void
.end method
