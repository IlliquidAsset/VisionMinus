.class public Lcom/univocity/parsers/csv/CsvWriter;
.super Lcom/univocity/parsers/common/AbstractWriter;
.source "CsvWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/AbstractWriter<",
        "Lcom/univocity/parsers/csv/CsvWriterSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private dontProcessNormalizedNewLines:Z

.field private escapeChar:C

.field private escapeEscape:C

.field private escapeUnquoted:Z

.field private ignoreLeading:Z

.field private ignoreTrailing:Z

.field private inputNotEscaped:Z

.field private maxTrigger:C

.field private newLine:C

.field private quotationTriggers:[Z

.field private quoteAllFields:Z

.field private quoteChar:C

.field private quotedColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private quotedFieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

.field private separator:C


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/csv/CsvWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/csv/CsvWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/File;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/OutputStream;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/AbstractWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method private append(ZLjava/lang/String;)Z
    .locals 7

    if-nez p2, :cond_1

    .line 261
    iget-object p2, p0, Lcom/univocity/parsers/csv/CsvWriter;->nullValue:Ljava/lang/String;

    if-nez p2, :cond_0

    return p1

    .line 264
    :cond_0
    iget-object p2, p0, Lcom/univocity/parsers/csv/CsvWriter;->nullValue:Ljava/lang/String;

    .line 268
    :cond_1
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->ignoreLeading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 269
    iget v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->whitespaceRangeStart:I

    invoke-static {v0, p2}, Lcom/univocity/parsers/csv/CsvWriter;->skipLeadingWhitespace(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 272
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    .line 273
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    if-ne v4, v5, :cond_3

    const/4 p1, 0x1

    :cond_3
    if-eqz p1, :cond_6

    .line 278
    iget-boolean p1, p0, Lcom/univocity/parsers/csv/CsvWriter;->usingNullOrEmptyValue:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    if-lt v2, p1, :cond_5

    .line 279
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    if-ne p1, v4, :cond_4

    sub-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    if-ne p1, v2, :cond_4

    .line 280
    iget-object p1, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {p1, p2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(Ljava/lang/String;)V

    return v1

    .line 283
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/univocity/parsers/csv/CsvWriter;->appendQuoted(ILjava/lang/String;)V

    return v3

    .line 287
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/univocity/parsers/csv/CsvWriter;->appendQuoted(ILjava/lang/String;)V

    return v3

    :cond_6
    move v1, v0

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x20

    if-ge v0, v2, :cond_11

    .line 295
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 296
    iget-char v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    if-eq v4, v6, :cond_7

    iget-char v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->separator:C

    if-eq v4, v6, :cond_7

    iget-char v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->newLine:C

    if-eq v4, v6, :cond_7

    iget-char v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeChar:C

    if-eq v4, v6, :cond_7

    iget-char v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->maxTrigger:C

    if-ge v4, v6, :cond_b

    iget-object v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotationTriggers:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_b

    .line 297
    :cond_7
    iget-object v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v6, p2, v1, v0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(Ljava/lang/String;II)V

    add-int/lit8 v1, v0, 0x1

    .line 300
    iget-char v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    if-eq v4, v6, :cond_d

    iget-char v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeChar:C

    if-ne v4, v6, :cond_8

    goto :goto_4

    :cond_8
    if-ne v4, v6, :cond_9

    .line 313
    iget-boolean v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->inputNotEscaped:Z

    if-eqz v5, :cond_9

    iget-char v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeEscape:C

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeUnquoted:Z

    if-eqz v5, :cond_9

    .line 314
    iget-object v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-char v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeEscape:C

    invoke-virtual {v5, v6}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    goto :goto_2

    .line 315
    :cond_9
    iget-char v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->separator:C

    if-eq v4, v5, :cond_c

    iget-char v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->newLine:C

    if-eq v4, v5, :cond_c

    iget-char v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->maxTrigger:C

    if-ge v4, v5, :cond_a

    iget-object v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotationTriggers:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_a

    goto :goto_3

    .line 319
    :cond_a
    :goto_2
    iget-object v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v5, v4}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 316
    :cond_c
    :goto_3
    invoke-direct {p0, v0, p2}, Lcom/univocity/parsers/csv/CsvWriter;->appendQuoted(ILjava/lang/String;)V

    return v3

    .line 301
    :cond_d
    :goto_4
    invoke-direct {p0, v0, p2}, Lcom/univocity/parsers/csv/CsvWriter;->quoteElement(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 302
    invoke-direct {p0, v0, p2}, Lcom/univocity/parsers/csv/CsvWriter;->appendQuoted(ILjava/lang/String;)V

    return v3

    .line 304
    :cond_e
    iget-boolean v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeUnquoted:Z

    if-eqz v1, :cond_f

    .line 305
    invoke-direct {p0, v0, p2}, Lcom/univocity/parsers/csv/CsvWriter;->appendQuoted(ILjava/lang/String;)V

    goto :goto_5

    .line 307
    :cond_f
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v1, p2, v0, v2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(Ljava/lang/String;II)V

    .line 308
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->ignoreTrailing:Z

    if-eqz v0, :cond_10

    sub-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v5, :cond_10

    iget v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->whitespaceRangeStart:I

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ge v0, p2, :cond_10

    .line 309
    iget-object p2, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {p2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->updateWhitespace()V

    :cond_10
    :goto_5
    return p1

    .line 323
    :cond_11
    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v2, p2, v1, v0}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(Ljava/lang/String;II)V

    if-gt v4, v5, :cond_12

    .line 324
    iget-boolean p2, p0, Lcom/univocity/parsers/csv/CsvWriter;->ignoreTrailing:Z

    if-eqz p2, :cond_12

    iget p2, p0, Lcom/univocity/parsers/csv/CsvWriter;->whitespaceRangeStart:I

    if-ge p2, v4, :cond_12

    .line 325
    iget-object p2, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {p2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->updateWhitespace()V

    :cond_12
    return p1
.end method

.method private appendQuoted(ILjava/lang/String;)V
    .locals 5

    .line 331
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge p1, v0, :cond_4

    .line 335
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 336
    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    if-eq v2, v3, :cond_0

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->newLine:C

    if-eq v2, v3, :cond_0

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeChar:C

    if-ne v2, v3, :cond_3

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v3, p2, v1, p1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(Ljava/lang/String;II)V

    add-int/lit8 v1, p1, 0x1

    .line 339
    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    if-ne v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->inputNotEscaped:Z

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeChar:C

    invoke-virtual {v3, v4}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    goto :goto_1

    .line 341
    :cond_1
    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeChar:C

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->inputNotEscaped:Z

    if-eqz v3, :cond_2

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeEscape:C

    if-eqz v3, :cond_2

    .line 342
    iget-object v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeEscape:C

    invoke-virtual {v3, v4}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    .line 344
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v3, v2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(C)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v0, p2, v1, p1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->append(Ljava/lang/String;II)V

    const/16 p1, 0x20

    if-gt v2, p1, :cond_5

    .line 348
    iget-boolean p1, p0, Lcom/univocity/parsers/csv/CsvWriter;->ignoreTrailing:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/univocity/parsers/csv/CsvWriter;->whitespaceRangeStart:I

    if-ge p1, v2, :cond_5

    .line 349
    iget-object p1, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/input/WriterCharAppender;->updateWhitespace()V

    :cond_5
    return-void
.end method

.method private quoteElement(ILjava/lang/String;)Z
    .locals 4

    .line 239
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 240
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->maxTrigger:C

    const/4 v2, 0x1

    if-nez v1, :cond_2

    :goto_0
    if-ge p1, v0, :cond_5

    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 243
    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->separator:C

    if-eq v1, v3, :cond_1

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->newLine:C

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    :cond_2
    :goto_2
    if-ge p1, v0, :cond_5

    .line 249
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 250
    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->separator:C

    if-eq v1, v3, :cond_4

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->newLine:C

    if-eq v1, v3, :cond_4

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->maxTrigger:C

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotationTriggers:[Z

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected bridge synthetic initialize(Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/univocity/parsers/csv/CsvWriterSettings;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/csv/CsvWriter;->initialize(Lcom/univocity/parsers/csv/CsvWriterSettings;)V

    return-void
.end method

.method protected final initialize(Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 5

    .line 142
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/csv/CsvFormat;

    .line 143
    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvFormat;->getDelimiter()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->separator:C

    .line 144
    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvFormat;->getQuote()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    .line 145
    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvFormat;->getQuoteEscape()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeChar:C

    .line 146
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-virtual {v1}, Lcom/univocity/parsers/csv/CsvFormat;->getCharToEscapeQuoteEscaping()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeEscape:C

    .line 147
    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvFormat;->getNormalizedNewline()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->newLine:C

    .line 149
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getQuoteAllFields()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteAllFields:Z

    .line 150
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getIgnoreLeadingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->ignoreLeading:Z

    .line 151
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getIgnoreTrailingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->ignoreTrailing:Z

    .line 152
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->isEscapeUnquotedValues()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->escapeUnquoted:Z

    .line 153
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->isInputEscaped()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->inputNotEscaped:Z

    .line 154
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->isNormalizeLineEndingsWithinQuotes()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->dontProcessNormalizedNewLines:Z

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotationTriggers:[Z

    .line 157
    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotedColumns:Ljava/util/Set;

    const/4 v0, 0x0

    .line 158
    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->maxTrigger:C

    .line 160
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotedColumns:Ljava/util/Set;

    .line 161
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getQuotedFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;

    move-result-object v2

    iput-object v2, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotedFieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    .line 163
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getQuotationTriggers()[C

    move-result-object v2

    array-length v2, v2

    .line 164
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->isQuoteEscapingEnabled()Z

    move-result v3

    .line 165
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getQuotationTriggers()[C

    move-result-object p1

    add-int v4, v2, v3

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    if-ne v3, v1, :cond_0

    .line 167
    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    aput-char v3, p1, v2

    :cond_0
    const/4 v2, 0x0

    .line 170
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 171
    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->maxTrigger:C

    aget-char v4, p1, v2

    if-ge v3, v4, :cond_1

    .line 172
    aget-char v3, p1, v2

    iput-char v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->maxTrigger:C

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvWriter;->maxTrigger:C

    if-eqz v2, :cond_3

    add-int/2addr v2, v1

    int-to-char v2, v2

    .line 176
    iput-char v2, p0, Lcom/univocity/parsers/csv/CsvWriter;->maxTrigger:C

    .line 177
    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotationTriggers:[Z

    .line 178
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 179
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 180
    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotationTriggers:[Z

    aget-char v3, p1, v0

    aput-boolean v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected processRow([Ljava/lang/Object;)V
    .locals 7

    .line 187
    iget-wide v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->recordCount:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotedFieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->headers:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/fields/FieldSelector;->getFieldIndexes([Ljava/lang/String;)[I

    move-result-object v0

    .line 189
    array-length v1, v0

    if-lez v1, :cond_0

    .line 190
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotedColumns:Ljava/util/Set;

    .line 191
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 192
    iget-object v5, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotedColumns:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_b

    if-eqz v0, :cond_1

    .line 198
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->separator:C

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/csv/CsvWriter;->appendToRow(C)V

    .line 201
    :cond_1
    iget-boolean v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->dontProcessNormalizedNewLines:Z

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v1, v2}, Lcom/univocity/parsers/common/input/WriterCharAppender;->enableDenormalizedLineEndings(Z)V

    .line 205
    :cond_2
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/csv/CsvWriter;->getStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v3}, Lcom/univocity/parsers/common/input/WriterCharAppender;->length()I

    move-result v3

    .line 207
    iget-boolean v4, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteAllFields:Z

    const/4 v5, 0x1

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/univocity/parsers/csv/CsvWriter;->quotedColumns:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-direct {p0, v4, v1}, Lcom/univocity/parsers/csv/CsvWriter;->append(ZLjava/lang/String;)Z

    move-result v4

    .line 210
    iget-object v6, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v6}, Lcom/univocity/parsers/common/input/WriterCharAppender;->length()I

    move-result v6

    if-ne v6, v3, :cond_8

    iget-boolean v3, p0, Lcom/univocity/parsers/csv/CsvWriter;->usingNullOrEmptyValue:Z

    if-nez v3, :cond_8

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->nullValue:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/univocity/parsers/csv/CsvWriter;->append(ZLjava/lang/String;)Z

    goto :goto_4

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->emptyValue:Ljava/lang/String;

    invoke-direct {p0, v5, v1}, Lcom/univocity/parsers/csv/CsvWriter;->append(ZLjava/lang/String;)Z

    goto :goto_4

    :cond_6
    if-nez v1, :cond_7

    .line 218
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->nullValue:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/univocity/parsers/csv/CsvWriter;->append(ZLjava/lang/String;)Z

    goto :goto_4

    .line 220
    :cond_7
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->emptyValue:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/univocity/parsers/csv/CsvWriter;->append(ZLjava/lang/String;)Z

    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    .line 225
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/csv/CsvWriter;->appendToRow(C)V

    .line 226
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvWriter;->appendValueToRow()V

    .line 227
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->quoteChar:C

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/csv/CsvWriter;->appendToRow(C)V

    .line 228
    iget-boolean v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->dontProcessNormalizedNewLines:Z

    if-eqz v1, :cond_a

    .line 229
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvWriter;->appender:Lcom/univocity/parsers/common/input/WriterCharAppender;

    invoke-virtual {v1, v5}, Lcom/univocity/parsers/common/input/WriterCharAppender;->enableDenormalizedLineEndings(Z)V

    goto :goto_5

    .line 232
    :cond_9
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvWriter;->appendValueToRow()V

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method
