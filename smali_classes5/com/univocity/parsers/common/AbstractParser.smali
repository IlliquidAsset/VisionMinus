.class public abstract Lcom/univocity/parsers/common/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/univocity/parsers/common/CommonParserSettings<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected ch:C

.field private final collectComments:Z

.field private final comment:C

.field protected final comments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Lcom/univocity/parsers/common/ParsingContext;

.field private final errorContentLength:I

.field private final errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

.field private final extractHeaders:Z

.field private extractingHeaders:Z

.field protected input:Lcom/univocity/parsers/common/input/CharInputReader;

.field protected lastComment:Ljava/lang/String;

.field private final lineReader:Lcom/univocity/parsers/common/LineReader;

.field protected final output:Lcom/univocity/parsers/common/ParserOutput;

.field protected processor:Lcom/univocity/parsers/common/processor/core/Processor;

.field private final recordsToRead:J

.field private final rowsToSkip:J

.field protected final settings:Lcom/univocity/parsers/common/CommonParserSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final whitespaceRangeStart:I


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/CommonParserSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/univocity/parsers/common/LineReader;

    invoke-direct {v0}, Lcom/univocity/parsers/common/LineReader;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->lineReader:Lcom/univocity/parsers/common/LineReader;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractParser;->extractingHeaders:Z

    .line 76
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->autoConfigure()V

    .line 77
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    .line 78
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->getErrorContentLength()I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/common/AbstractParser;->errorContentLength:I

    .line 79
    new-instance v0, Lcom/univocity/parsers/common/ParserOutput;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/common/ParserOutput;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/CommonParserSettings;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    .line 80
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->getProcessor()Lcom/univocity/parsers/common/processor/core/Processor;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    .line 81
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->getNumberOfRecordsToRead()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/univocity/parsers/common/AbstractParser;->recordsToRead:J

    .line 82
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/univocity/parsers/common/Format;->getComment()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/common/AbstractParser;->comment:C

    .line 83
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->getProcessorErrorHandler()Lcom/univocity/parsers/common/ProcessorErrorHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    .line 84
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->getNumberOfRowsToSkip()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/univocity/parsers/common/AbstractParser;->rowsToSkip:J

    .line 85
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->isCommentCollectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractParser;->collectComments:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->comments:Ljava/util/Map;

    .line 87
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->isHeaderExtractionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/common/AbstractParser;->extractHeaders:Z

    .line 88
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonParserSettings;->getWhitespaceRangeStart()I

    move-result p1

    iput p1, p0, Lcom/univocity/parsers/common/AbstractParser;->whitespaceRangeStart:I

    return-void
.end method

.method private beginParseAll(ZLjava/io/Reader;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/io/Reader;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_2

    if-nez p1, :cond_1

    .line 449
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    if-eqz p1, :cond_0

    .line 451
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 452
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 450
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Input not defined. Please call method \'beginParsing()\' with a valid input."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Input reader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    if-gtz p3, :cond_3

    const/16 p3, 0x2710

    :cond_3
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p2, :cond_4

    .line 459
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    :cond_4
    return-object p1
.end method

.method private static displayLineSeparators(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "\\r"

    const-string v1, "\\n"

    if-eqz p1, :cond_2

    const-string p1, "\r\n"

    .line 376
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\\r\\n"

    const-string v0, "[\\\\r\\\\n]\r\n\t"

    .line 377
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "\n"

    .line 378
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[\\\\n]\n\t"

    .line 379
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p1, "[\\\\r]\r\t"

    .line 381
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p1, "\\\\n"

    .line 384
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\\\r"

    .line 385
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getParsedContent(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsed content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/univocity/parsers/common/AbstractParser;->errorContentLength:I

    invoke-static {v1, p1}, Lcom/univocity/parsers/common/AbstractException;->restrictContent(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleEOF()[Ljava/lang/String;
    .locals 3

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->consumeValueOnEOF()Z

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget v1, v1, Lcom/univocity/parsers/common/ParserOutput;->column:I

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharAppender;->length()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->currentParsedContentLength()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_4

    .line 201
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed()V

    .line 202
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->rowParsed()[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 194
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v1, v1, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharAppender;->length()I

    move-result v1

    if-gtz v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->emptyParsed()V

    goto :goto_3

    .line 195
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed()V

    .line 199
    :goto_3
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->rowParsed()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v0, :cond_6

    .line 207
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    sget-object v2, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    if-eq v1, v2, :cond_6

    .line 208
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/AbstractParser;->rowProcessed([Ljava/lang/String;)V

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    .line 205
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/AbstractParser;->handleException(Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextParsingException;

    move-result-object v0

    throw v0
.end method

.method private handleException(Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextParsingException;
    .locals 8

    .line 291
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->stop()V

    .line 294
    :cond_0
    instance-of v0, p1, Lcom/univocity/parsers/common/DataProcessingException;

    if-nez v0, :cond_d

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v1, v1, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharAppender;->getChars()[C

    move-result-object v1

    const-string v2, "\n"

    if-eqz v1, :cond_7

    .line 304
    iget-object v3, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v3, v3, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v3}, Lcom/univocity/parsers/common/input/CharAppender;->length()I

    move-result v3

    .line 305
    array-length v4, v1

    if-le v3, v4, :cond_1

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Length of parsed input ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") exceeds the maximum number of characters defined in"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " your parser settings ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v3}, Lcom/univocity/parsers/common/CommonParserSettings;->getMaxCharsPerColumn()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "). "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    array-length v3, v1

    .line 311
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    .line 312
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    const-string v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    .line 313
    invoke-static {v4, v5}, Lcom/univocity/parsers/common/AbstractParser;->displayLineSeparators(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 314
    iget-object v5, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v5}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v5

    invoke-virtual {v5}, Lcom/univocity/parsers/common/Format;->getLineSeparatorString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/univocity/parsers/common/AbstractParser;->displayLineSeparators(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nIdentified line separator characters in the parsed content. This may be the cause of the error. The line separator in your parser settings is set to \'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'. "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/univocity/parsers/common/AbstractParser;->getParsedContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const v4, 0x3fffffff    # 1.9999999f

    if-le v3, v4, :cond_4

    const v3, 0x3ffffffe    # 1.9999998f

    .line 322
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v6, v3, :cond_6

    .line 324
    aget-char v7, v1, v6

    if-nez v7, :cond_5

    const/16 v7, 0x5c

    .line 325
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x30

    .line 326
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 329
    :cond_5
    aget-char v7, v1, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 332
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-lez v5, :cond_7

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nIdentified "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " null characters (\'\u0000\') on parsed content. This may "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "indicate the data is corrupt or its encoding is invalid. Parsed content:\n\t"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/AbstractParser;->getParsedContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_7
    instance-of v1, p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz v1, :cond_a

    .line 343
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 344
    iget-object v3, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v3}, Lcom/univocity/parsers/common/CommonParserSettings;->getMaxCharsPerColumn()I

    move-result v3

    if-ne v1, v3, :cond_8

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nHint: Number of characters processed may have exceeded limit of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " characters per column. Use settings.setMaxCharsPerColumn(int) to define the maximum number of characters a column can have"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_8
    iget-object v3, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v3}, Lcom/univocity/parsers/common/CommonParserSettings;->getMaxColumns()I

    move-result v3

    if-ne v1, v3, :cond_9

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nHint: Number of columns processed may have exceeded limit of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " columns. Use settings.setMaxColumns(int) to define the maximum number of columns your input can have"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nEnsure your configuration is correct, with delimiters, quotes and escape sequences that match the input format you are trying to parse"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :catchall_0
    :cond_a
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Parser Configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/CommonParserSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 365
    :goto_2
    iget v1, p0, Lcom/univocity/parsers/common/AbstractParser;->errorContentLength:I

    if-nez v1, :cond_c

    .line 366
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v1, v1, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharAppender;->reset()V

    .line 369
    :cond_c
    new-instance v1, Lcom/univocity/parsers/common/TextParsingException;

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-direct {v1, v2, v0, p1}, Lcom/univocity/parsers/common/TextParsingException;-><init>(Lcom/univocity/parsers/common/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    iget p1, p0, Lcom/univocity/parsers/common/AbstractParser;->errorContentLength:I

    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/TextParsingException;->setErrorContentLength(I)V

    return-object v1

    .line 295
    :cond_d
    check-cast p1, Lcom/univocity/parsers/common/DataProcessingException;

    .line 296
    iget v0, p0, Lcom/univocity/parsers/common/AbstractParser;->errorContentLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/DataProcessingException;->restrictContent(Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/DataProcessingException;->setContext(Lcom/univocity/parsers/common/Context;)V

    .line 298
    throw p1
.end method

.method private final internalParseAll(ZLjava/io/Reader;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/io/Reader;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 531
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractParser;->beginParseAll(ZLjava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    .line 534
    :goto_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->parseNext()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 535
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private internalParseAllRecords(ZLjava/io/Reader;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/io/Reader;",
            "I)",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1131
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractParser;->beginParseAll(ZLjava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    .line 1132
    iget-object p2, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {p2}, Lcom/univocity/parsers/common/ParsingContext;->isStopped()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1136
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->parseNextRecord()Lcom/univocity/parsers/common/record/Record;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1137
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private rowProcessed([Ljava/lang/String;)V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    invoke-static {p1, v0, v1, v2}, Lcom/univocity/parsers/common/Internal;->process([Ljava/lang/String;Lcom/univocity/parsers/common/processor/core/Processor;Lcom/univocity/parsers/common/Context;Lcom/univocity/parsers/common/ProcessorErrorHandler;)V

    return-void
.end method

.method private stopParsing(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 400
    :goto_0
    instance-of v0, p1, Lcom/univocity/parsers/common/DataProcessingException;

    if-nez v0, :cond_2

    .line 404
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 406
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 407
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 405
    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 401
    :cond_2
    check-cast p1, Lcom/univocity/parsers/common/DataProcessingException;

    .line 402
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/DataProcessingException;->setContext(Lcom/univocity/parsers/common/Context;)V

    .line 403
    throw p1

    .line 412
    :cond_3
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V

    return-void
.end method


# virtual methods
.method public final beginParsing(Ljava/io/File;)V
    .locals 0

    .line 751
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    return-void
.end method

.method public final beginParsing(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 763
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    return-void
.end method

.method public final beginParsing(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 775
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    return-void
.end method

.method public final beginParsing(Ljava/io/InputStream;)V
    .locals 0

    .line 786
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    return-void
.end method

.method public final beginParsing(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 798
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    return-void
.end method

.method public final beginParsing(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 810
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    return-void
.end method

.method public final beginParsing(Ljava/io/Reader;)V
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->reset()V

    .line 223
    instance-of v0, p1, Lcom/univocity/parsers/common/LineReader;

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lcom/univocity/parsers/common/input/DefaultCharInputReader;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/univocity/parsers/common/Format;->getLineSeparator()[C

    move-result-object v1

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v2

    invoke-virtual {v2}, Lcom/univocity/parsers/common/Format;->getNormalizedNewline()C

    move-result v2

    iget-object v3, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v3}, Lcom/univocity/parsers/common/CommonParserSettings;->getInputBufferSize()I

    move-result v3

    iget v4, p0, Lcom/univocity/parsers/common/AbstractParser;->whitespaceRangeStart:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/univocity/parsers/common/input/DefaultCharInputReader;-><init>([CCII)V

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    iget v1, p0, Lcom/univocity/parsers/common/AbstractParser;->whitespaceRangeStart:I

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/CommonParserSettings;->newCharInputReader(I)Lcom/univocity/parsers/common/input/CharInputReader;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharInputReader;->enableNormalizeLineEndings(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->createParsingContext()Lcom/univocity/parsers/common/ParsingContext;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    .line 232
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    instance-of v1, v0, Lcom/univocity/parsers/common/DefaultConversionProcessor;

    if-eqz v1, :cond_1

    .line 233
    check-cast v0, Lcom/univocity/parsers/common/DefaultConversionProcessor;

    .line 234
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    iput-object v1, v0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    .line 235
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    iput-object v1, v0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->context:Lcom/univocity/parsers/common/Context;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    instance-of v1, v0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;

    if-eqz v1, :cond_2

    .line 239
    check-cast v0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->getInputAnalysisProcess()Lcom/univocity/parsers/common/input/InputAnalysisProcess;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->addInputAnalysisProcess(Lcom/univocity/parsers/common/input/InputAnalysisProcess;)V

    .line 243
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/input/CharInputReader;->start(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-wide v0, p0, Lcom/univocity/parsers/common/AbstractParser;->rowsToSkip:J

    invoke-interface {p1, v0, v1}, Lcom/univocity/parsers/common/input/CharInputReader;->skipLines(J)V

    .line 249
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->initialize()V

    .line 251
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {p1, v0}, Lcom/univocity/parsers/common/processor/core/Processor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void

    :catchall_0
    move-exception p1

    .line 245
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->handleException(Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextParsingException;

    move-result-object p1

    throw p1
.end method

.method protected consumeValueOnEOF()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createParsingContext()Lcom/univocity/parsers/common/ParsingContext;
    .locals 2

    .line 269
    new-instance v0, Lcom/univocity/parsers/common/DefaultParsingContext;

    iget v1, p0, Lcom/univocity/parsers/common/AbstractParser;->errorContentLength:I

    invoke-direct {v0, p0, v1}, Lcom/univocity/parsers/common/DefaultParsingContext;-><init>(Lcom/univocity/parsers/common/AbstractParser;I)V

    const/4 v1, 0x0

    .line 270
    iput-boolean v1, v0, Lcom/univocity/parsers/common/DefaultParsingContext;->stopped:Z

    return-object v0
.end method

.method extractHeadersIfRequired()V
    .locals 3

    .line 255
    :goto_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractParser;->extractHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->parsedHeaders:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractParser;->extractingHeaders:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    const/4 v1, 0x0

    .line 258
    :try_start_0
    sget-object v2, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    iput-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    const/4 v2, 0x1

    .line 259
    iput-boolean v2, p0, Lcom/univocity/parsers/common/AbstractParser;->extractingHeaders:Z

    .line 260
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->parseNext()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iput-boolean v1, p0, Lcom/univocity/parsers/common/AbstractParser;->extractingHeaders:Z

    .line 263
    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 262
    iput-boolean v1, p0, Lcom/univocity/parsers/common/AbstractParser;->extractingHeaders:Z

    .line 263
    iput-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    throw v2

    :cond_0
    return-void
.end method

.method final getComments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1174
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->comments:Ljava/util/Map;

    return-object v0
.end method

.method public final getContext()Lcom/univocity/parsers/common/ParsingContext;
    .locals 1

    .line 1204
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    return-object v0
.end method

.method protected getInputAnalysisProcess()Lcom/univocity/parsers/common/input/InputAnalysisProcess;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final getLastComment()Ljava/lang/String;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->lastComment:Ljava/lang/String;

    return-object v0
.end method

.method final getParsedHeaders()[Ljava/lang/String;
    .locals 1

    .line 1194
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->extractHeadersIfRequired()V

    .line 1195
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->parsedHeaders:[Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordMetadata()Lcom/univocity/parsers/common/record/RecordMetaData;
    .locals 2

    .line 1213
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    if-eqz v0, :cond_0

    .line 1216
    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->recordMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;

    move-result-object v0

    return-object v0

    .line 1214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record metadata not available. The parser has not been started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected inComment()Z
    .locals 2

    .line 541
    iget-char v0, p0, Lcom/univocity/parsers/common/AbstractParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/common/AbstractParser;->comment:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initialize()V
    .locals 0

    return-void
.end method

.method public final iterate(Ljava/io/File;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "[",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1256
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$2;

    invoke-direct {v0, p0, p0, p1}, Lcom/univocity/parsers/common/AbstractParser$2;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/File;)V

    return-object v0
.end method

.method public final iterate(Ljava/io/File;Ljava/lang/String;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "[",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1228
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->iterate(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public final iterate(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "[",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1240
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser$1;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final iterate(Ljava/io/InputStream;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "[",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1317
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/univocity/parsers/common/AbstractParser$5;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final iterate(Ljava/io/InputStream;Ljava/lang/String;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "[",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1289
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->iterate(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public final iterate(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "[",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1301
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$4;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser$4;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final iterate(Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "[",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1272
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/univocity/parsers/common/AbstractParser$3;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/Reader;)V

    return-object v0
.end method

.method public final iterateRecords(Ljava/io/File;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "Lcom/univocity/parsers/common/record/Record;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1362
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$7;

    invoke-direct {v0, p0, p0, p1}, Lcom/univocity/parsers/common/AbstractParser$7;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/File;)V

    return-object v0
.end method

.method public final iterateRecords(Ljava/io/File;Ljava/lang/String;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "Lcom/univocity/parsers/common/record/Record;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1334
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->iterateRecords(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public final iterateRecords(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "Lcom/univocity/parsers/common/record/Record;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1346
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$6;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser$6;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final iterateRecords(Ljava/io/InputStream;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "Lcom/univocity/parsers/common/record/Record;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1423
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$10;

    invoke-direct {v0, p0, p0, p1}, Lcom/univocity/parsers/common/AbstractParser$10;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final iterateRecords(Ljava/io/InputStream;Ljava/lang/String;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "Lcom/univocity/parsers/common/record/Record;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1395
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->iterateRecords(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public final iterateRecords(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "Lcom/univocity/parsers/common/record/Record;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1407
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$9;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser$9;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final iterateRecords(Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "Lcom/univocity/parsers/common/record/Record;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 1378
    new-instance v0, Lcom/univocity/parsers/common/AbstractParser$8;

    invoke-direct {v0, p0, p0, p1}, Lcom/univocity/parsers/common/AbstractParser$8;-><init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/Reader;)V

    return-object v0
.end method

.method public final parse(Ljava/io/File;)V
    .locals 0

    .line 691
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parse(Ljava/io/Reader;)V

    return-void
.end method

.method public final parse(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 701
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parse(Ljava/io/Reader;)V

    return-void
.end method

.method public final parse(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 711
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parse(Ljava/io/Reader;)V

    return-void
.end method

.method public final parse(Ljava/io/InputStream;)V
    .locals 0

    .line 720
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parse(Ljava/io/Reader;)V

    return-void
.end method

.method public final parse(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 730
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parse(Ljava/io/Reader;)V

    return-void
.end method

.method public final parse(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 740
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parse(Ljava/io/Reader;)V

    return-void
.end method

.method public final parse(Ljava/io/Reader;)V
    .locals 7

    .line 114
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    .line 116
    :cond_0
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->isStopped()Z

    move-result p1

    if-nez p1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {p1}, Lcom/univocity/parsers/common/input/CharInputReader;->markRecordStart()V

    .line 118
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {p1}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/common/AbstractParser;->ch:C

    .line 119
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->inComment()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->processComment()V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->parseRecord()V

    .line 125
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/ParserOutput;->rowParsed()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    iget-wide v0, p0, Lcom/univocity/parsers/common/AbstractParser;->recordsToRead:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->currentRecord()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/univocity/parsers/common/AbstractParser;->recordsToRead:J

    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    .line 128
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->stop()V

    .line 129
    iget-wide v0, p0, Lcom/univocity/parsers/common/AbstractParser;->recordsToRead:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V

    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    sget-object v1, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    if-eq v0, v1, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->rowProcessed([Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V
    :try_end_0
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 149
    :try_start_1
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->handleException(Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextParsingException;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing(Ljava/lang/Throwable;)V

    throw v0

    .line 143
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractParser;->handleEOF()[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 145
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V

    throw p1
.end method

.method public parseAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 482
    invoke-direct {p0, v0, v1, v2}, Lcom/univocity/parsers/common/AbstractParser;->internalParseAll(ZLjava/io/Reader;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseAll(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 473
    invoke-direct {p0, v0, v1, p1}, Lcom/univocity/parsers/common/AbstractParser;->internalParseAll(ZLjava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 903
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/File;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 823
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 915
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/File;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 837
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 927
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 851
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/InputStream;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 938
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 864
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 950
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 878
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 962
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/InputStream;Ljava/nio/charset/Charset;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 892
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/Reader;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, p1, v0}, Lcom/univocity/parsers/common/AbstractParser;->parseAll(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAll(Ljava/io/Reader;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 527
    invoke-direct {p0, v0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->internalParseAll(ZLjava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAllRecords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 503
    invoke-direct {p0, v0, v1, v2}, Lcom/univocity/parsers/common/AbstractParser;->internalParseAllRecords(ZLjava/io/Reader;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseAllRecords(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 494
    invoke-direct {p0, v0, v1, p1}, Lcom/univocity/parsers/common/AbstractParser;->internalParseAllRecords(ZLjava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1055
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/File;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 975
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1067
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/File;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 989
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1079
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "I)",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1003
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/InputStream;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1090
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1016
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1102
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1030
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1114
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/InputStream;Ljava/nio/charset/Charset;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "I)",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    .line 1044
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/Reader;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1150
    invoke-virtual {p0, p1, v0}, Lcom/univocity/parsers/common/AbstractParser;->parseAllRecords(Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseAllRecords(Ljava/io/Reader;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "I)",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/record/Record;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1127
    invoke-direct {p0, v0, p1, p2}, Lcom/univocity/parsers/common/AbstractParser;->internalParseAllRecords(ZLjava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parseLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->lineReader:Lcom/univocity/parsers/common/LineReader;

    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/LineReader;->setLine(Ljava/lang/String;)V

    .line 641
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    check-cast p1, Lcom/univocity/parsers/common/input/DefaultCharInputReader;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/input/DefaultCharInputReader;->reloadBuffer()V

    goto :goto_1

    .line 642
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->lineReader:Lcom/univocity/parsers/common/LineReader;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    .line 647
    :cond_3
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->isStopped()Z

    move-result p1

    if-nez p1, :cond_6

    .line 648
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {p1}, Lcom/univocity/parsers/common/input/CharInputReader;->markRecordStart()V

    .line 649
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {p1}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/common/AbstractParser;->ch:C

    .line 650
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->inComment()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 651
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->processComment()V

    return-object v0

    .line 654
    :cond_4
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->parseRecord()V

    .line 655
    iget-object p1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/ParserOutput;->rowParsed()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 657
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    sget-object v2, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    if-eq v1, v2, :cond_5

    .line 658
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->rowProcessed([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-object p1

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    .line 673
    :try_start_1
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->handleException(Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextParsingException;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 675
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing(Ljava/lang/Throwable;)V

    return-object v0

    :catchall_1
    move-exception v0

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception p1

    .line 667
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    if-eqz v1, :cond_7

    .line 668
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing(Ljava/lang/Throwable;)V

    .line 670
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error parsing next record."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 665
    :catch_1
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractParser;->handleEOF()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public final parseNext()[Ljava/lang/String;
    .locals 9

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v1}, Lcom/univocity/parsers/common/ParsingContext;->isStopped()Z

    move-result v1

    if-nez v1, :cond_5

    .line 554
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->markRecordStart()V

    .line 555
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/common/AbstractParser;->ch:C

    .line 556
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->inComment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->processComment()V

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->parseRecord()V

    .line 561
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/ParserOutput;->rowParsed()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 563
    iget-wide v2, p0, Lcom/univocity/parsers/common/AbstractParser;->recordsToRead:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v2}, Lcom/univocity/parsers/common/ParsingContext;->currentRecord()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/univocity/parsers/common/AbstractParser;->recordsToRead:J

    cmp-long v8, v2, v6

    if-ltz v8, :cond_2

    .line 564
    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v2}, Lcom/univocity/parsers/common/ParsingContext;->stop()V

    .line 565
    iget-wide v2, p0, Lcom/univocity/parsers/common/AbstractParser;->recordsToRead:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V

    return-object v0

    .line 570
    :cond_2
    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    sget-object v3, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    if-eq v2, v3, :cond_3

    .line 571
    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/AbstractParser;->rowProcessed([Ljava/lang/String;)V

    :cond_3
    return-object v1

    .line 574
    :cond_4
    iget-boolean v1, p0, Lcom/univocity/parsers/common/AbstractParser;->extractingHeaders:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 578
    :cond_5
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V
    :try_end_0
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 595
    :try_start_1
    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/AbstractParser;->handleException(Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextParsingException;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 597
    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing(Ljava/lang/Throwable;)V

    return-object v0

    :catchall_1
    move-exception v0

    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception v0

    .line 585
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    if-eqz v1, :cond_7

    .line 588
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    if-eqz v1, :cond_6

    .line 589
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V

    .line 591
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error parsing next record."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 586
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot parse without invoking method beginParsing(Reader) first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :catch_1
    invoke-direct {p0}, Lcom/univocity/parsers/common/AbstractParser;->handleEOF()[Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->stopParsing()V

    return-object v0
.end method

.method public final parseNextRecord()Lcom/univocity/parsers/common/record/Record;
    .locals 2

    .line 1160
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractParser;->parseNext()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v1, v0}, Lcom/univocity/parsers/common/ParsingContext;->toRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final parseRecord(Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;
    .locals 1

    .line 621
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;->parseLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/ParsingContext;->toRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;

    move-result-object p1

    return-object p1
.end method

.method protected abstract parseRecord()V
.end method

.method protected processComment()V
    .locals 3

    .line 92
    iget-boolean v0, p0, Lcom/univocity/parsers/common/AbstractParser;->collectComments:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->lineCount()J

    move-result-wide v0

    .line 94
    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v2}, Lcom/univocity/parsers/common/input/CharInputReader;->readComment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 96
    iput-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->lastComment:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->comments:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->lastComment:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/univocity/parsers/common/input/CharInputReader;->skipLines(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected final reloadHeaders()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->initializeHeaders()V

    .line 608
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    instance-of v1, v0, Lcom/univocity/parsers/common/DefaultParsingContext;

    if-eqz v1, :cond_0

    .line 609
    check-cast v0, Lcom/univocity/parsers/common/DefaultParsingContext;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/DefaultParsingContext;->reset()V

    :cond_0
    return-void
.end method

.method public final stopParsing()V
    .locals 3

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 427
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/processor/core/Processor;->processEnded(Lcom/univocity/parsers/common/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 431
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharAppender;->reset()V

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->stop()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 431
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-eqz v1, :cond_4

    .line 432
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v1, v1, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharAppender;->reset()V

    .line 434
    :cond_4
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    if-eqz v1, :cond_5

    .line 435
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->stop()V

    :cond_5
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_2
    move-exception v0

    .line 427
    :try_start_3
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    if-eqz v1, :cond_6

    .line 428
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v1, v2}, Lcom/univocity/parsers/common/processor/core/Processor;->processEnded(Lcom/univocity/parsers/common/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 431
    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-eqz v1, :cond_7

    .line 432
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v1, v1, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharAppender;->reset()V

    .line 434
    :cond_7
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    if-eqz v1, :cond_8

    .line 435
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->stop()V

    :cond_8
    throw v0

    :catchall_3
    move-exception v0

    .line 431
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-eqz v1, :cond_9

    .line 432
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v1, v1, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharAppender;->reset()V

    .line 434
    :cond_9
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    if-eqz v1, :cond_a

    .line 435
    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->stop()V

    :cond_a
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 440
    :goto_0
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/AbstractParser;->handleException(Ljava/lang/Throwable;)Lcom/univocity/parsers/common/TextParsingException;

    move-result-object v0

    throw v0
.end method
