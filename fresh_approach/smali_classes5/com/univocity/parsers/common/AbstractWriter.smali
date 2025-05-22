.class public abstract Lcom/univocity/parsers/common/AbstractWriter;
.super Ljava/lang/Object;
.source "AbstractWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/univocity/parsers/common/CommonWriterSettings<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

.field private final columnReorderingEnabled:Z

.field private final comment:C

.field private dummyHeaderRow:[Ljava/lang/String;

.field protected final emptyValue:Ljava/lang/String;

.field private enableNewlineAfterRecord:Z

.field private final errorContentLength:I

.field protected expandRows:Z

.field private headerIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected headers:[Ljava/lang/String;

.field private indexesToWrite:[I

.field private final internalSettings:Lcom/univocity/parsers/common/CommonSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/CommonSettings<",
            "Lcom/univocity/parsers/common/DummyFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final isHeaderWritingEnabled:Z

.field private largestRowLength:I

.field private final lineSeparator:[C

.field protected final nullValue:Ljava/lang/String;

.field private outputRow:[Ljava/lang/Object;

.field private final partialLine:[Ljava/lang/Object;

.field private partialLineIndex:I

.field protected recordCount:J

.field private final rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

.field private final skipEmptyLines:Z

.field protected usingNullOrEmptyValue:Z

.field private usingSwitch:Z

.field protected final whitespaceRangeStart:I

.field private writer:Ljava/io/Writer;

.field private final writerProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

.field protected writingHeaders:Z


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TS;)V"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/File;)Ljava/io/Writer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "TS;)V"
        }
    .end annotation

    .line 121
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/File;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "TS;)V"
        }
    .end annotation

    .line 132
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TS;)V"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "TS;)V"
        }
    .end annotation

    .line 153
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/nio/charset/Charset;",
            "TS;)V"
        }
    .end annotation

    .line 164
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TS;)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->largestRowLength:I

    .line 75
    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writingHeaders:Z

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->enableNewlineAfterRecord:Z

    .line 85
    new-instance v0, Lcom/univocity/parsers/common/AbstractWriter$1;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/AbstractWriter$1;-><init>(Lcom/univocity/parsers/common/AbstractWriter;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    .line 174
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->autoConfigure()V

    .line 175
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getMaxColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/CommonSettings;->setMaxColumns(I)V

    .line 176
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getErrorContentLength()I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->errorContentLength:I

    .line 177
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getNullValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->nullValue:Ljava/lang/String;

    .line 178
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getEmptyValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->emptyValue:Ljava/lang/String;

    .line 180
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/univocity/parsers/common/Format;->getLineSeparator()[C

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->lineSeparator:[C

    .line 181
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/univocity/parsers/common/Format;->getComment()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->comment:C

    .line 182
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getSkipEmptyLines()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->skipEmptyLines:Z

    .line 183
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getRowWriterProcessor()Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writerProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    .line 184
    instance-of v0, v0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;

    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->usingSwitch:Z

    .line 185
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getExpandIncompleteRows()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->expandRows:Z

    .line 186
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->isColumnReorderingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->columnReorderingEnabled:Z

    .line 187
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getWhitespaceRangeStart()I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->whitespaceRangeStart:I

    .line 188
    new-instance v0, Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getMaxCharsPerColumn()I

    move-result v1

    iget v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->whitespaceRangeStart:I

    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/univocity/parsers/common/input/WriterCharAppender;-><init>(ILjava/lang/String;ILcom/univocity/parsers/common/Format;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    .line 189
    new-instance v0, Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getMaxCharsPerColumn()I

    move-result v1

    iget v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->whitespaceRangeStart:I

    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/univocity/parsers/common/input/WriterCharAppender;-><init>(ILjava/lang/String;ILcom/univocity/parsers/common/Format;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    .line 192
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;

    .line 195
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getHeaders()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    .line 197
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->updateIndexesToWrite(Lcom/univocity/parsers/common/CommonSettings;)V

    .line 199
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getMaxColumns()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    .line 200
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->isHeaderWritingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->isHeaderWritingEnabled:Z

    .line 202
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->writerProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    instance-of v0, p1, Lcom/univocity/parsers/common/DefaultConversionProcessor;

    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Lcom/univocity/parsers/common/DefaultConversionProcessor;

    const/4 v0, 0x0

    .line 204
    iput-object v0, p1, Lcom/univocity/parsers/common/DefaultConversionProcessor;->context:Lcom/univocity/parsers/common/Context;

    .line 205
    invoke-virtual {p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->getProcessorErrorHandler()Lcom/univocity/parsers/common/ProcessorErrorHandler;

    move-result-object v0

    iput-object v0, p1, Lcom/univocity/parsers/common/DefaultConversionProcessor;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    .line 208
    :cond_0
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->initialize(Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method private final addValue([Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 0

    .line 1081
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;->getFieldIndex([Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 1083
    invoke-virtual {p0, p1, p4}, Lcom/univocity/parsers/common/AbstractWriter;->addValue(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private adjustRowLength([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1423
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1424
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->fillOutputRow([Ljava/lang/Object;)V

    .line 1425
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    goto :goto_2

    .line 1426
    :cond_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->expandRows:Z

    if-eqz v0, :cond_4

    .line 1427
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->usingSwitch:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 1428
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/univocity/parsers/common/AbstractWriter;->expand([Ljava/lang/Object;I[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    .line 1429
    iput-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    goto :goto_2

    .line 1431
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    array-length v2, v0

    :goto_1
    invoke-virtual {p0, p1, v2, v1}, Lcom/univocity/parsers/common/AbstractWriter;->expand([Ljava/lang/Object;I[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    :cond_4
    :goto_2
    return-object p1
.end method

.method private fillOutputRow([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 790
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->columnReorderingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 791
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 792
    aget v2, v0, v1

    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 793
    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    aget v0, v0, v1

    aget-object v0, p1, v0

    aput-object v0, v2, v1

    goto :goto_1

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    :cond_1
    array-length v0, p1

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    array-length v2, v2

    if-le v0, v2, :cond_2

    .line 800
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    goto :goto_4

    .line 801
    :cond_2
    array-length v0, p1

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 802
    :goto_2
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 803
    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    aget v3, v0, v1

    aget v0, v0, v1

    aget-object v0, p1, v0

    aput-object v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 806
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    array-length v2, v0

    if-ge v1, v2, :cond_4

    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 807
    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    aget v0, v0, v1

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method private fillPartialLineToMatchHeaders()V
    .locals 3

    .line 1036
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1037
    :goto_0
    iget v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getContent(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 2287
    iget v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->errorContentLength:I

    invoke-static {v0, p1}, Lcom/univocity/parsers/common/AbstractException;->restrictContent(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getContent([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 2283
    iget v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->errorContentLength:I

    invoke-static {v0, p1}, Lcom/univocity/parsers/common/AbstractException;->restrictContent(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getFieldIndex([Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 5

    .line 1097
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headerIndexes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1098
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headerIndexes:Ljava/util/Map;

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headerIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1104
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->headerIndexes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1112
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/univocity/parsers/common/ArgumentUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1113
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 1115
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Header \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' could not be found. Defined headers are: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1

    .line 1118
    :cond_3
    :goto_0
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_1

    .line 1110
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot calculate position of header \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' as no headers were defined."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1

    .line 1120
    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getRowProcessorHeaders()[Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method private internalWriteRow()V
    .locals 4

    .line 820
    :try_start_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->skipEmptyLines:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 823
    :cond_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->enableNewlineAfterRecord:Z

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->appendNewLine()V

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->writeCharsAndReset(Ljava/io/Writer;)V

    .line 827
    iget-wide v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 829
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error writing row."

    invoke-direct {p0, v2, v1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object v0

    throw v0
.end method

.method private internalWriteRowToString()Ljava/lang/String;
    .locals 5

    .line 1456
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->skipEmptyLines:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v0

    .line 1460
    iget-wide v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    return-object v0
.end method

.method private setHeadersFromMap(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;Z)V"
        }
    .end annotation

    .line 1570
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 1572
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1573
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p2

    move p2, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected static skipLeadingWhitespace(ILjava/lang/String;)I
    .locals 3

    .line 843
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 847
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 848
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-gt v0, v2, :cond_2

    if-lt p0, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    .line 853
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private submitRow([Ljava/lang/Object;)V
    .locals 2

    .line 325
    iget v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->largestRowLength:I

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 326
    array-length v0, p1

    iput v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->largestRowLength:I

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRow([Ljava/lang/Object;)V

    return-void
.end method

.method private throwExceptionAndClose(Ljava/lang/String;)Lcom/univocity/parsers/common/TextWritingException;
    .locals 2

    const/4 v0, 0x0

    .line 895
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    return-object p1
.end method

.method private throwExceptionAndClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;
    .locals 6

    .line 917
    :try_start_0
    instance-of v0, p3, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " No writer provided in the constructor of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". You can only use operations that write to Strings."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 920
    new-instance p1, Lcom/univocity/parsers/common/TextWritingException;

    iget-wide v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->getContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 922
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method private throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;
    .locals 1

    const/4 v0, 0x0

    .line 905
    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    return-object p1
.end method

.method private throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;
    .locals 7

    .line 935
    :try_start_0
    new-instance v6, Lcom/univocity/parsers/common/TextWritingException;

    iget-wide v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->getContent([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v6

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 938
    :try_start_1
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 941
    :catchall_1
    throw p1
.end method

.method private updateIndexesToWrite(Lcom/univocity/parsers/common/CommonSettings;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/CommonSettings<",
            "*>;)V"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonSettings;->getFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 228
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 229
    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/fields/FieldSelector;->getFieldIndexes([Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    .line 230
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->columnReorderingEnabled:Z

    if-eqz v0, :cond_0

    .line 231
    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    goto/16 :goto_2

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    goto :goto_2

    .line 235
    :cond_1
    instance-of v1, v0, Lcom/univocity/parsers/common/fields/FieldNameSelector;

    if-nez v1, :cond_8

    instance-of v1, v0, Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;

    if-nez v1, :cond_8

    .line 236
    iget v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->largestRowLength:I

    .line 237
    instance-of v2, v0, Lcom/univocity/parsers/common/fields/FieldIndexSelector;

    if-eqz v2, :cond_5

    const/4 p1, 0x0

    .line 239
    move-object v2, v0

    check-cast v2, Lcom/univocity/parsers/common/fields/FieldIndexSelector;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/fields/FieldIndexSelector;->get()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 240
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_2

    .line 241
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    move v1, p1

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 248
    :cond_4
    iget p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->largestRowLength:I

    if-ge v1, p1, :cond_6

    move v1, p1

    goto :goto_1

    .line 252
    :cond_5
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonSettings;->getMaxColumns()I

    move-result v1

    .line 254
    :cond_6
    :goto_1
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/fields/FieldSelector;->getFieldIndexes([Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    .line 255
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->columnReorderingEnabled:Z

    if-eqz v0, :cond_7

    .line 256
    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    goto :goto_2

    .line 258
    :cond_7
    new-array p1, v1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    goto :goto_2

    .line 261
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot select fields by name with no headers defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/4 p1, 0x0

    .line 264
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    .line 265
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    :goto_2
    return-void
.end method

.method private wrapObjectArray(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1874
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1875
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1876
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1877
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1879
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private wrapStringArray(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1886
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1887
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1888
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1889
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1891
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;TI;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1734
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Iterator;

    .line 1735
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1736
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 1738
    iget-object v4, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    .line 1740
    invoke-direct {p0, p1, v3}, Lcom/univocity/parsers/common/AbstractWriter;->setHeadersFromMap(Ljava/util/Map;Z)V

    goto :goto_0

    .line 1742
    :cond_0
    invoke-direct {p0, p2, v3}, Lcom/univocity/parsers/common/AbstractWriter;->setHeadersFromMap(Ljava/util/Map;Z)V

    .line 1744
    :goto_0
    iget-boolean v4, p0, Lcom/univocity/parsers/common/AbstractWriter;->isHeaderWritingEnabled:Z

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 1745
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->writeHeadersToString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1750
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1751
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v8, v7

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    aput-object v8, v0, v5

    .line 1752
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v5

    .line 1753
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    const/4 v6, 0x1

    :goto_3
    if-ge p2, v5, :cond_7

    .line 1761
    aget-object v8, v0, p2

    if-eqz v8, :cond_5

    .line 1762
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v9, 0x1

    :goto_5
    and-int/2addr v6, v9

    if-eqz v9, :cond_6

    .line 1765
    aget-object v8, v1, p2

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1767
    :cond_6
    aget-object v9, v1, p2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    if-nez v6, :cond_b

    if-nez p3, :cond_9

    if-eqz p4, :cond_8

    .line 1773
    invoke-virtual {p0, p1, v2}, Lcom/univocity/parsers/common/AbstractWriter;->processRecord(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_7

    .line 1775
    :cond_8
    invoke-virtual {p0, p1, v2}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_7

    :cond_9
    if-eqz p4, :cond_a

    .line 1779
    invoke-virtual {p0, p1, v2}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordToString(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1781
    :cond_a
    invoke-virtual {p0, p1, v2}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    :goto_7
    if-eqz v6, :cond_3

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Error processing input rows from map"

    .line 1787
    invoke-direct {p0, p2, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method private writeValuesFromMap(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 1528
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1529
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    .line 1530
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->usingSwitch:Z

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writerProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    check-cast v0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;

    invoke-virtual {v0, p1, p2}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->getHeaders(Ljava/util/Map;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 1539
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1540
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v0, v2, v1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->addValue([Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    goto :goto_0

    .line 1543
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1544
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1546
    iget-object v3, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->addValue([Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 1551
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->setHeadersFromMap(Ljava/util/Map;Z)V

    .line 1552
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->writeValuesFromMap(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    .line 1554
    :cond_4
    invoke-direct {p0, p2, v1}, Lcom/univocity/parsers/common/AbstractWriter;->setHeadersFromMap(Ljava/util/Map;Z)V

    const/4 p1, 0x0

    .line 1555
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->writeValuesFromMap(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string p2, "Error processing data from input map"

    .line 1559
    invoke-direct {p0, p2, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final addStringValues(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 994
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 995
    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v3, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    aput-object v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 998
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error adding values to in-memory row"

    invoke-direct {p0, v1, p1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final addValue(ILjava/lang/Object;)V
    .locals 3

    .line 1060
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    .line 1063
    aput-object p2, v0, p1

    .line 1064
    iget p2, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    if-gt p2, p1, :cond_0

    add-int/2addr p1, v2

    .line 1065
    iput p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    :cond_0
    return-void

    .line 1061
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot write \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' to index \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'. Maximum number of columns ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") exceeded."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final addValue(Ljava/lang/Object;)V
    .locals 3

    .line 1029
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Error adding value to in-memory row"

    .line 1031
    invoke-direct {p0, p1, v1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final addValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/univocity/parsers/common/AbstractWriter;->getFieldIndex([Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->addValue(ILjava/lang/Object;)V

    return-void
.end method

.method public final addValues(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1012
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1013
    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v3, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    aput-object v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1016
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error adding values to in-memory row"

    invoke-direct {p0, v1, p1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final varargs addValues([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 979
    iget v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Error adding values to in-memory row"

    .line 981
    invoke-direct {p0, v1, p1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method protected final appendToRow(C)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    return-void
.end method

.method protected final appendValueToRow()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(Lcom/univocity/parsers/common/input/DefaultCharAppender;)V

    return-void
.end method

.method public final close()V
    .locals 5

    const/4 v0, 0x0

    .line 874
    :try_start_0
    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headerIndexes:Ljava/util/Map;

    .line 875
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 877
    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    :cond_0
    iget v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    if-nez v0, :cond_1

    return-void

    .line 883
    :cond_1
    new-instance v0, Lcom/univocity/parsers/common/TextWritingException;

    iget-wide v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    iget-object v3, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v4, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/univocity/parsers/common/AbstractWriter;->getContent([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Not all values associated with the last record have been written to the output. \n\tHint: use \'writeValuesToRow()\' or \'writeValuesToString()\' to flush the partially written values to a row."

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 880
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error closing the output."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final commentRow(Ljava/lang/String;)V
    .locals 2

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->comment:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow(Ljava/lang/String;)V

    return-void
.end method

.method public final commentRowToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->comment:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final discardValues()V
    .locals 4

    .line 1127
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1128
    iput v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    return-void
.end method

.method protected enableNewlineAfterRecord(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->enableNewlineAfterRecord:Z

    return-void
.end method

.method protected expand([Ljava/lang/Object;I[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2

    .line 719
    array-length v0, p1

    if-ge v0, p2, :cond_0

    .line 720
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 721
    array-length v0, p1

    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 722
    array-length p2, p3

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_2

    .line 725
    array-length p2, p1

    iget p3, p0, Lcom/univocity/parsers/common/AbstractWriter;->largestRowLength:I

    if-ge p2, p3, :cond_2

    .line 726
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final flush()V
    .locals 3

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 864
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->rowAppender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error flushing output."

    invoke-direct {p0, v2, v1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object v0

    throw v0
.end method

.method public final getRecordCount()J
    .locals 2

    .line 1509
    iget-wide v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    return-wide v0
.end method

.method protected getStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->usingNullOrEmptyValue:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 959
    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->usingNullOrEmptyValue:Z

    .line 960
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->nullValue:Ljava/lang/String;

    return-object p1

    .line 962
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 963
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->usingNullOrEmptyValue:Z

    .line 965
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->emptyValue:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method protected abstract initialize(Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public final processObjectRecords(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2203
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->wrapObjectArray(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-void
.end method

.method public final processObjectRecordsAndClose(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2234
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->wrapObjectArray(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordsAndClose(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final processObjectRecordsAndClose(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2218
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->processObjectRecords(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final processObjectRecordsToString(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2166
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processObjectRecordsToString(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final processObjectRecordsToString(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2186
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->wrapObjectArray(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final processRecord(Ljava/lang/Object;)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writerProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    if-nez v0, :cond_1

    .line 495
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 496
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process record \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' without a writer processor. Please define a writer processor instance in the settings or use the \'writeRow\' methods."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;)Lcom/univocity/parsers/common/TextWritingException;

    .line 506
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->usingSwitch:Z

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writerProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    check-cast v0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->getHeaders(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writerProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->dummyHeaderRow:[Ljava/lang/String;

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    invoke-interface {v0, p1, v1, v2}, Lcom/univocity/parsers/common/processor/RowWriterProcessor;->write(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writerProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->getRowProcessorHeaders()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    invoke-interface {v0, p1, v1, v2}, Lcom/univocity/parsers/common/processor/RowWriterProcessor;->write(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p1, :cond_4

    .line 521
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/Object;)V

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 516
    iget v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->errorContentLength:I

    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/DataProcessingException;->setErrorContentLength(I)V

    .line 517
    throw p1
.end method

.method public final processRecord(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2041
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecord(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final processRecord(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;*>;)V"
        }
    .end annotation

    .line 2073
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->writeValuesFromMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 2074
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->processValuesToRow()V

    return-void
.end method

.method public final varargs processRecord([Ljava/lang/Object;)V
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecord(Ljava/lang/Object;)V

    return-void
.end method

.method public final processRecordToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1239
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writerProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    if-eqz v0, :cond_1

    .line 1244
    :try_start_0
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->getRowProcessorHeaders()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractWriter;->indexesToWrite:[I

    invoke-interface {v0, p1, v1, v2}, Lcom/univocity/parsers/common/processor/RowWriterProcessor;->write(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1246
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not process record \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1

    .line 1240
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot process record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' without a writer processor. Please define a writer processor instance in the settings or use the \'writeRow\' methods."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final processRecordToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2029
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordToString(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final processRecordToString(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2058
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->writeValuesFromMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 2059
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->processValuesToString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs processRecordToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1225
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final processRecords(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 454
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 455
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->processRecord(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final processRecords(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;TI;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2109
    invoke-direct {p0, v0, p1, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-void
.end method

.method public final processRecords(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;TI;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2148
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-void
.end method

.method public final processRecords([Ljava/lang/Object;)V
    .locals 3

    .line 467
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 468
    invoke-virtual {p0, v2}, Lcom/univocity/parsers/common/AbstractWriter;->processRecord(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final processRecordsAndClose(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 426
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecords(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final processRecordsAndClose(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;TI;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2279
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordsAndClose(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final processRecordsAndClose(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;TI;>;)V"
        }
    .end annotation

    .line 2256
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->processRecords(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2258
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final processRecordsAndClose([Ljava/lang/Object;)V
    .locals 0

    .line 440
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecords([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final processRecordsToString(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1186
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1187
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1188
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    const-string v0, "Unable process input records"

    .line 1192
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final processRecordsToString(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;TI;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2093
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordsToString(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final processRecordsToString(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;TI;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 2130
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final processRecordsToString([Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1206
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1207
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1208
    invoke-virtual {p0, v3}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "Unable process input records"

    .line 1212
    invoke-direct {p0, v1, p1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method protected abstract processRow([Ljava/lang/Object;)V
.end method

.method public final processValuesToRow()V
    .locals 2

    .line 1483
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->fillPartialLineToMatchHeaders()V

    .line 1484
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->processRecord([Ljava/lang/Object;)V

    .line 1485
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->discardValues()V

    return-void
.end method

.method public final processValuesToString()Ljava/lang/String;
    .locals 2

    .line 1497
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->fillPartialLineToMatchHeaders()V

    .line 1498
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->discardValues()V

    return-object v0
.end method

.method public varargs updateFieldExclusion([Ljava/lang/Integer;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->excludeIndexes([Ljava/lang/Integer;)Lcom/univocity/parsers/common/fields/FieldSet;

    .line 316
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->updateIndexesToWrite(Lcom/univocity/parsers/common/CommonSettings;)V

    return-void
.end method

.method public varargs updateFieldExclusion([Ljava/lang/String;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->excludeFields([Ljava/lang/String;)Lcom/univocity/parsers/common/fields/FieldSet;

    .line 305
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->updateIndexesToWrite(Lcom/univocity/parsers/common/CommonSettings;)V

    return-void

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot de-select fields by name. Headers not defined."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs updateFieldSelection([Ljava/lang/Integer;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->selectIndexes([Ljava/lang/Integer;)Lcom/univocity/parsers/common/fields/FieldSet;

    .line 291
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->updateIndexesToWrite(Lcom/univocity/parsers/common/CommonSettings;)V

    return-void
.end method

.method public varargs updateFieldSelection([Ljava/lang/String;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->selectFields([Ljava/lang/String;)Lcom/univocity/parsers/common/fields/FieldSet;

    .line 280
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->internalSettings:Lcom/univocity/parsers/common/CommonSettings;

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->updateIndexesToWrite(Lcom/univocity/parsers/common/CommonSettings;)V

    return-void

    .line 277
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot select fields by name. Headers not defined."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeEmptyRow()V
    .locals 3

    .line 761
    :try_start_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->enableNewlineAfterRecord:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->lineSeparator:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 765
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->lineSeparator:[C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error writing empty row."

    invoke-direct {p0, v2, v1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object v0

    throw v0
.end method

.method public final writeHeaders()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeHeaders([Ljava/lang/String;)V

    return-void
.end method

.method public final writeHeaders(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 385
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 386
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeHeaders([Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "No headers defined."

    .line 388
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final varargs writeHeaders([Ljava/lang/String;)V
    .locals 6

    .line 399
    iget-wide v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    if-eqz p1, :cond_1

    .line 402
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writingHeaders:Z

    .line 404
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->columnReorderingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->fillOutputRow([Ljava/lang/Object;)V

    .line 406
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->outputRow:[Ljava/lang/Object;

    array-length v0, p1

    const-class v1, [Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 408
    :cond_0
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->submitRow([Ljava/lang/Object;)V

    .line 410
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    .line 411
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->internalWriteRow()V

    const/4 p1, 0x0

    .line 412
    iput-boolean p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->writingHeaders:Z

    return-void

    :cond_1
    const-string v0, "No headers defined."

    .line 414
    invoke-direct {p0, v0, p1, v2}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1

    :cond_2
    const-string v0, "Cannot write headers after records have been written."

    .line 400
    invoke-direct {p0, v0, p1, v2}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeHeadersToString()Ljava/lang/String;
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeHeadersToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeHeadersToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1149
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1150
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeHeadersToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No headers defined"

    .line 1152
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final varargs writeHeadersToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1165
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1166
    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writingHeaders:Z

    .line 1167
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->submitRow([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1168
    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writingHeaders:Z

    .line 1169
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    .line 1170
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->internalWriteRowToString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No headers defined."

    .line 1172
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeObjectRows(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1870
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->wrapObjectArray(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-void
.end method

.method public final writeObjectRowsAndClose(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1956
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeObjectRowsAndClose(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final writeObjectRowsAndClose(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1914
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->writeObjectRows(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final writeObjectRowsToString(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->wrapObjectArray(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final writeRow(Ljava/lang/String;)V
    .locals 2

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 745
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->enableNewlineAfterRecord:Z

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->lineSeparator:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Error writing row."

    .line 749
    invoke-direct {p0, v1, p1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeRow(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/Object;)V

    return-void
.end method

.method public final writeRow(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1598
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final writeRow(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;*>;)V"
        }
    .end annotation

    .line 1628
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->writeValuesFromMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 1629
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->writeValuesToRow()V

    return-void
.end method

.method public final varargs writeRow([Ljava/lang/Object;)V
    .locals 5

    .line 697
    :try_start_0
    iget-wide v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->recordCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->isHeaderWritingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->headers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->writeHeaders()V

    :cond_0
    if-eqz p1, :cond_2

    .line 700
    array-length v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->expandRows:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 709
    :cond_1
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->adjustRowLength([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 710
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->submitRow([Ljava/lang/Object;)V

    .line 712
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->internalWriteRow()V

    return-void

    .line 701
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->skipEmptyLines:Z

    if-eqz v0, :cond_3

    return-void

    .line 704
    :cond_3
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->writeEmptyRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Error writing row."

    .line 714
    invoke-direct {p0, v1, p1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeRow([Ljava/lang/String;)V
    .locals 0

    .line 681
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/Object;)V

    return-void
.end method

.method public final writeRowToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1375
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "Error writing input row "

    .line 1377
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeRowToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1587
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final writeRowToString(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1614
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->writeValuesFromMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 1615
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->writeValuesToString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs writeRowToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1407
    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->expandRows:Z

    if-nez v0, :cond_1

    .line 1408
    :cond_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->skipEmptyLines:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1412
    :cond_1
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->adjustRowLength([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 1413
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->submitRow([Ljava/lang/Object;)V

    .line 1415
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->internalWriteRowToString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    const-string v1, "Error writing row."

    .line 1417
    invoke-direct {p0, v1, p1, v0}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeRowToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1392
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final writeRows(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "TC;>;)V"
        }
    .end annotation

    .line 611
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 612
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeRows(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 651
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 652
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeRows(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;TI;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1668
    invoke-direct {p0, v0, p1, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-void
.end method

.method public final writeRows(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;TI;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1711
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-void
.end method

.method public final writeRows([[Ljava/lang/Object;)V
    .locals 3

    .line 597
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 598
    invoke-virtual {p0, v2}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeRowsAndClose(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "TC;>;)V"
        }
    .end annotation

    .line 541
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final writeRowsAndClose(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 555
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final writeRowsAndClose(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;TI;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2015
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowsAndClose(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final writeRowsAndClose(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;TI;>;)V"
        }
    .end annotation

    .line 1993
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final writeRowsAndClose([[Ljava/lang/Object;)V
    .locals 0

    .line 583
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows([[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final writeRowsToString(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "TC;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1288
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1289
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1290
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    const-string v0, "Error writing input rows"

    .line 1294
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeRowsToString(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1332
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1333
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1334
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    const-string v0, "Error writing input rows"

    .line 1338
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeRowsToString(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;TI;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1650
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowsToString(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final writeRowsToString(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "I::",
            "Ljava/lang/Iterable<",
            "*>;>(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;TI;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1691
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final writeRowsToString([[Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1264
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1265
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1266
    invoke-virtual {p0, v3}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1268
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    const-string v0, "Error writing input rows"

    .line 1273
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeStringRows(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "TC;>;)V"
        }
    .end annotation

    .line 638
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 639
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeStringRows(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 624
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 625
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeStringRows(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1829
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->wrapStringArray(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-void
.end method

.method public final writeStringRowsAndClose(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 569
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeStringRows(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final writeStringRowsAndClose(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1973
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeStringRowsAndClose(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final writeStringRowsAndClose(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1936
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;->writeStringRows(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    throw p1
.end method

.method public final writeStringRowsToString(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "TC;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1309
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1310
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1311
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1313
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    const-string v0, "Error writing input rows"

    .line 1318
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeStringRowsToString(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1352
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1353
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1354
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    const-string v0, "Error writing input rows"

    .line 1358
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/AbstractWriter;->throwExceptionAndClose(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextWritingException;

    move-result-object p1

    throw p1
.end method

.method public final writeStringRowsToString(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "TK;[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1810
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/AbstractWriter;->wrapStringArray(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRows(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final writeValuesToRow()V
    .locals 2

    .line 1047
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->fillPartialLineToMatchHeaders()V

    .line 1048
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/Object;)V

    .line 1049
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->discardValues()V

    return-void
.end method

.method public final writeValuesToString()Ljava/lang/String;
    .locals 2

    .line 1470
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractWriter;->fillPartialLineToMatchHeaders()V

    .line 1471
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLine:[Ljava/lang/Object;

    iget v1, p0, Lcom/univocity/parsers/common/AbstractWriter;->partialLineIndex:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractWriter;->writeRowToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter;->discardValues()V

    return-object v0
.end method
