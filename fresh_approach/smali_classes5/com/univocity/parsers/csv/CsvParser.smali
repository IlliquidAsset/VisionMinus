.class public final Lcom/univocity/parsers/csv/CsvParser;
.super Lcom/univocity/parsers/common/AbstractParser;
.source "CsvParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/AbstractParser<",
        "Lcom/univocity/parsers/csv/CsvParserSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private delimiter:C

.field private final doNotEscapeUnquotedValues:Z

.field private final emptyValue:Ljava/lang/String;

.field private escapeEscape:C

.field private final ignoreLeadingWhitespace:Z

.field private final ignoreTrailingWhitespace:Z

.field private final keepEscape:Z

.field private final keepQuotes:Z

.field private final maxColumnLength:I

.field private newLine:C

.field private final normalizeLineEndingsInQuotes:Z

.field private final nullValue:Ljava/lang/String;

.field private parseUnescapedQuotes:Z

.field private parseUnescapedQuotesUntilDelimiter:Z

.field private prev:C

.field private quote:C

.field private quoteEscape:C

.field private quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

.field private final trimQuotedLeading:Z

.field private final trimQuotedTrailing:Z

.field private unescaped:Z

.field private final whitespaceAppender:Lcom/univocity/parsers/common/input/DefaultCharAppender;


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/csv/CsvParserSettings;)V
    .locals 5

    .line 67
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;-><init>(Lcom/univocity/parsers/common/CommonParserSettings;)V

    .line 68
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getIgnoreTrailingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ignoreTrailingWhitespace:Z

    .line 69
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getIgnoreLeadingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ignoreLeadingWhitespace:Z

    .line 70
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->isParseUnescapedQuotes()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->parseUnescapedQuotes:Z

    .line 71
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->isParseUnescapedQuotesUntilDelimiter()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->parseUnescapedQuotesUntilDelimiter:Z

    .line 72
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->isEscapeUnquotedValues()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->doNotEscapeUnquotedValues:Z

    .line 73
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->isKeepEscapeSequences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepEscape:Z

    .line 74
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getKeepQuotes()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepQuotes:Z

    .line 75
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->isNormalizeLineEndingsWithinQuotes()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->normalizeLineEndingsInQuotes:Z

    .line 76
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getNullValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->nullValue:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getEmptyValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->emptyValue:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getMaxCharsPerColumn()I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/csv/CsvParser;->maxColumnLength:I

    .line 79
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getIgnoreTrailingWhitespacesInQuotes()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->trimQuotedTrailing:Z

    .line 80
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getIgnoreLeadingWhitespacesInQuotes()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->trimQuotedLeading:Z

    .line 82
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/csv/CsvParser;->updateFormat(Lcom/univocity/parsers/csv/CsvFormat;)V

    .line 84
    new-instance v0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    const/16 v2, 0xa

    iget v3, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceRangeStart:I

    const-string v4, ""

    invoke-direct {v0, v2, v4, v3}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceAppender:Lcom/univocity/parsers/common/input/DefaultCharAppender;

    .line 86
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->getUnescapedQuoteHandling()Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    if-nez p1, :cond_2

    .line 88
    iget-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParser;->parseUnescapedQuotes:Z

    if-eqz p1, :cond_1

    .line 89
    iget-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParser;->parseUnescapedQuotesUntilDelimiter:Z

    if-eqz p1, :cond_0

    .line 90
    sget-object p1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_DELIMITER:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    goto :goto_3

    .line 92
    :cond_0
    sget-object p1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_CLOSING_QUOTE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    goto :goto_3

    .line 95
    :cond_1
    sget-object p1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->RAISE_ERROR:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    goto :goto_3

    .line 98
    :cond_2
    sget-object v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_DELIMITER:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    sget-object v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->SKIP_VALUE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParser;->parseUnescapedQuotesUntilDelimiter:Z

    .line 99
    iget-object p1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    sget-object v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->RAISE_ERROR:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    if-eq p1, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/univocity/parsers/csv/CsvParser;->parseUnescapedQuotes:Z

    :goto_3
    return-void
.end method

.method static synthetic access$000(Lcom/univocity/parsers/csv/CsvParser;)Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    return-object p0
.end method

.method static synthetic access$102(Lcom/univocity/parsers/csv/CsvParser;C)C
    .locals 0

    .line 35
    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    return p1
.end method

.method static synthetic access$200(Lcom/univocity/parsers/csv/CsvParser;)Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    return-object p0
.end method

.method static synthetic access$302(Lcom/univocity/parsers/csv/CsvParser;C)C
    .locals 0

    .line 35
    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    return p1
.end method

.method static synthetic access$402(Lcom/univocity/parsers/csv/CsvParser;C)C
    .locals 0

    .line 35
    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    return p1
.end method

.method private handleUnescapedQuote()Z
    .locals 3

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->unescaped:Z

    .line 210
    sget-object v1, Lcom/univocity/parsers/csv/CsvParser$2;->$SwitchMap$com$univocity$parsers$csv$UnescapedQuoteHandling:[I

    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    invoke-virtual {v2}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 219
    invoke-direct {p0, v0}, Lcom/univocity/parsers/csv/CsvParser;->handleValueSkipping(Z)V

    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v1, v1, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v1, v2}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 214
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v1, v1, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    invoke-interface {v1, v2}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 215
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iput-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    .line 216
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->parseQuotedValue()V

    return v0
.end method

.method private handleUnescapedQuoteInValue()V
    .locals 2

    .line 195
    sget-object v0, Lcom/univocity/parsers/csv/CsvParser$2;->$SwitchMap$com$univocity$parsers$csv$UnescapedQuoteHandling:[I

    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    invoke-virtual {v1}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, v0}, Lcom/univocity/parsers/csv/CsvParser;->handleValueSkipping(Z)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 199
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    .line 200
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->parseValueProcessingEscape()V

    :goto_0
    return-void
.end method

.method private handleValueSkipping(Z)V
    .locals 4

    .line 184
    sget-object v0, Lcom/univocity/parsers/csv/CsvParser$2;->$SwitchMap$com$univocity$parsers$csv$UnescapedQuoteHandling:[I

    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    invoke-virtual {v1}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    new-instance v0, Lcom/univocity/parsers/common/TextParsingException;

    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unescaped quote character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' inside "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "quoted"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value of CSV field. To allow unescaped quotes, set \'parseUnescapedQuotes\' to \'true\' in the CSV parser settings. Cannot parse CSV input."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/univocity/parsers/common/TextParsingException;-><init>(Lcom/univocity/parsers/common/ParsingContext;Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->skipValue()V

    :goto_1
    return-void
.end method

.method private parseQuotedValue()V
    .locals 8

    .line 265
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->parseUnescapedQuotesUntilDelimiter:Z

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    sget-object v1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->SKIP_VALUE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    if-ne v0, v1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->skipValue()V

    return-void

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepQuotes:Z

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->prepend(C)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 274
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-boolean v1, p0, Lcom/univocity/parsers/csv/CsvParser;->ignoreTrailingWhitespace:Z

    iput-boolean v1, v0, Lcom/univocity/parsers/common/ParserOutput;->trim:Z

    .line 275
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/univocity/parsers/common/input/CharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    goto/16 :goto_4

    .line 277
    :cond_2
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepQuotes:Z

    if-eqz v0, :cond_3

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    if-nez v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 282
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->trimQuotedLeading:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_4

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharAppender;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-gt v0, v1, :cond_4

    goto :goto_0

    .line 287
    :cond_4
    :goto_1
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-ne v0, v2, :cond_6

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceRangeStart:I

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-lt v0, v2, :cond_7

    :cond_5
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    if-eq v0, v2, :cond_7

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-ne v0, v2, :cond_6

    goto :goto_2

    .line 291
    :cond_6
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-eq v0, v2, :cond_16

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    if-eq v0, v2, :cond_16

    .line 292
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-ne v0, v3, :cond_14

    .line 293
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->handleUnescapedQuote()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 294
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    sget-object v2, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->SKIP_VALUE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    if-ne v0, v2, :cond_13

    .line 320
    :cond_7
    :goto_2
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    if-eq v0, v2, :cond_10

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-eq v0, v2, :cond_10

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-gt v0, v1, :cond_10

    iget v0, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceRangeStart:I

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-ge v0, v2, :cond_10

    .line 321
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceAppender:Lcom/univocity/parsers/common/input/DefaultCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->reset()V

    .line 324
    :cond_8
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceAppender:Lcom/univocity/parsers/common/input/DefaultCharAppender;

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    invoke-virtual {v0, v2}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(C)V

    .line 325
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 327
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-ne v0, v2, :cond_a

    .line 328
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepQuotes:Z

    if-eqz v0, :cond_9

    .line 329
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    :cond_9
    return-void

    .line 333
    :cond_a
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-gt v0, v1, :cond_b

    iget v0, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceRangeStart:I

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-lt v0, v2, :cond_8

    .line 336
    :cond_b
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    if-eq v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->parseUnescapedQuotes:Z

    if-eqz v0, :cond_f

    .line 337
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    instance-of v0, v0, Lcom/univocity/parsers/common/input/DefaultCharAppender;

    if-eqz v0, :cond_c

    .line 339
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 340
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    check-cast v0, Lcom/univocity/parsers/common/input/DefaultCharAppender;

    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceAppender:Lcom/univocity/parsers/common/input/DefaultCharAppender;

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/input/DefaultCharAppender;->append(Lcom/univocity/parsers/common/input/DefaultCharAppender;)V

    .line 343
    :cond_c
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->parseUnescapedQuotesUntilDelimiter:Z

    if-nez v0, :cond_d

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-eq v0, v1, :cond_e

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    if-eq v0, v1, :cond_e

    .line 344
    :cond_d
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 349
    :cond_e
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    .line 350
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->parseQuotedValue()V

    goto :goto_3

    .line 351
    :cond_f
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepQuotes:Z

    if-eqz v0, :cond_11

    .line 352
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_3

    .line 354
    :cond_10
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepQuotes:Z

    if-eqz v0, :cond_11

    .line 355
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 358
    :cond_11
    :goto_3
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    if-eq v0, v1, :cond_13

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-ne v0, v1, :cond_12

    goto :goto_4

    .line 359
    :cond_12
    new-instance v0, Lcom/univocity/parsers/common/TextParsingException;

    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' following quoted value of CSV field. Expecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'. Cannot parse CSV input."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/common/TextParsingException;-><init>(Lcom/univocity/parsers/common/ParsingContext;Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_4
    return-void

    :cond_14
    if-ne v0, v2, :cond_15

    if-eqz v2, :cond_15

    .line 304
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    invoke-interface {v0, v2}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 306
    :cond_15
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v2, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-object v4, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v5, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    iget-char v6, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    iget-char v7, p0, Lcom/univocity/parsers/csv/CsvParser;->escapeEscape:C

    invoke-interface/range {v2 .. v7}, Lcom/univocity/parsers/common/input/CharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CCC)C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 307
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    .line 308
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    goto/16 :goto_1

    .line 310
    :cond_16
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->processQuoteEscape()V

    .line 311
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    .line 312
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 313
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->unescaped:Z

    if-eqz v0, :cond_4

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    if-eq v0, v2, :cond_17

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-ne v0, v2, :cond_4

    :cond_17
    return-void
.end method

.method private parseValueProcessingEscape()V
    .locals 2

    .line 249
    :goto_0
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-eq v0, v1, :cond_2

    .line 250
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    if-eq v0, v1, :cond_1

    .line 251
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-ne v0, v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->handleUnescapedQuoteInValue()V

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_1

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->processQuoteEscape()V

    .line 259
    :goto_1
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    .line 260
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processQuoteEscape()V
    .locals 3

    .line 225
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->escapeEscape:C

    if-ne v0, v1, :cond_1

    if-eqz v1, :cond_1

    .line 226
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepEscape:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->escapeEscape:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 230
    iput-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    goto :goto_0

    .line 231
    :cond_1
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    if-ne v0, v1, :cond_4

    .line 232
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-ne v0, v1, :cond_3

    .line 233
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepEscape:Z

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 237
    iput-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_0

    .line 241
    :cond_4
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-ne v0, v1, :cond_5

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    if-ne v0, v1, :cond_5

    .line 242
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_0

    .line 243
    :cond_5
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-ne v0, v1, :cond_6

    .line 244
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->handleUnescapedQuoteInValue()V

    :cond_6
    :goto_0
    return-void
.end method

.method private skipValue()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharAppender;->reset()V

    .line 180
    invoke-static {}, Lcom/univocity/parsers/common/input/NoopCharAppender;->getInstance()Lcom/univocity/parsers/common/input/CharAppender;

    move-result-object v0

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/univocity/parsers/common/input/CharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    return-void
.end method


# virtual methods
.method protected final consumeValueOnEOF()Z
    .locals 3

    .line 416
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 417
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    if-ne v0, v1, :cond_1

    .line 418
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->keepQuotes:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    :cond_0
    return v2

    .line 423
    :cond_1
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->unescaped:Z

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 428
    :cond_2
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    if-eqz v0, :cond_3

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final getDetectedFormat()Lcom/univocity/parsers/csv/CsvFormat;
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    check-cast v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->isDelimiterDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    check-cast v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvFormat;->clone()Lcom/univocity/parsers/csv/CsvFormat;

    move-result-object v0

    .line 400
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/csv/CsvFormat;->setDelimiter(C)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 402
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    check-cast v1, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {v1}, Lcom/univocity/parsers/csv/CsvParserSettings;->isQuoteDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    check-cast v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvFormat;->clone()Lcom/univocity/parsers/csv/CsvFormat;

    move-result-object v0

    .line 404
    :cond_1
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/csv/CsvFormat;->setQuote(C)V

    .line 405
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/csv/CsvFormat;->setQuoteEscape(C)V

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    check-cast v1, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {v1}, Lcom/univocity/parsers/csv/CsvParserSettings;->isLineSeparatorDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    check-cast v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvFormat;->clone()Lcom/univocity/parsers/csv/CsvFormat;

    move-result-object v0

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->getLineSeparator()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/csv/CsvFormat;->setLineSeparator([C)V

    :cond_4
    return-object v0
.end method

.method protected final getInputAnalysisProcess()Lcom/univocity/parsers/common/input/InputAnalysisProcess;
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    check-cast v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->isDelimiterDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    check-cast v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->isQuoteDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_1
    :goto_0
    new-instance v0, Lcom/univocity/parsers/csv/CsvParser$1;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvParser;->settings:Lcom/univocity/parsers/common/CommonParserSettings;

    check-cast v2, Lcom/univocity/parsers/csv/CsvParserSettings;

    iget v3, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceRangeStart:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/univocity/parsers/csv/CsvParser$1;-><init>(Lcom/univocity/parsers/csv/CsvParser;ILcom/univocity/parsers/csv/CsvParserSettings;I)V

    return-object v0
.end method

.method protected final parseRecord()V
    .locals 13

    .line 106
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ignoreLeadingWhitespace:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceRangeStart:I

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-ge v0, v2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v2, v3, v4}, Lcom/univocity/parsers/common/input/CharInputReader;->skipWhitespace(CCC)C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 110
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-eq v0, v2, :cond_a

    .line 111
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ignoreLeadingWhitespace:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/univocity/parsers/csv/CsvParser;->whitespaceRangeStart:I

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    if-ge v0, v2, :cond_1

    .line 112
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    invoke-interface {v0, v2, v3, v4}, Lcom/univocity/parsers/common/input/CharInputReader;->skipWhitespace(CCC)C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 115
    :cond_1
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    if-eq v0, v2, :cond_9

    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-ne v0, v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->unescaped:Z

    .line 119
    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->prev:C

    .line 120
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    if-ne v0, v2, :cond_5

    .line 121
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParser;->normalizeLineEndingsInQuotes:Z

    invoke-interface {v0, v2}, Lcom/univocity/parsers/common/input/CharInputReader;->enableNormalizeLineEndings(Z)V

    .line 122
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharAppender;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 123
    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v3, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    iget-char v5, p0, Lcom/univocity/parsers/csv/CsvParser;->escapeEscape:C

    iget v6, p0, Lcom/univocity/parsers/csv/CsvParser;->maxColumnLength:I

    iget-char v7, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    iget-char v8, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    iget-boolean v9, p0, Lcom/univocity/parsers/csv/CsvParser;->keepQuotes:Z

    iget-boolean v10, p0, Lcom/univocity/parsers/csv/CsvParser;->keepEscape:Z

    iget-boolean v11, p0, Lcom/univocity/parsers/csv/CsvParser;->trimQuotedLeading:Z

    iget-boolean v12, p0, Lcom/univocity/parsers/csv/CsvParser;->trimQuotedTrailing:Z

    invoke-interface/range {v2 .. v12}, Lcom/univocity/parsers/common/input/CharInputReader;->getQuotedString(CCCICCZZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 125
    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    const-string v3, ""

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->emptyValue:Ljava/lang/String;

    :cond_3
    invoke-virtual {v2, v0}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed(Ljava/lang/String;)V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 128
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C
    :try_end_0
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v2, :cond_0

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 131
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-ne v0, v2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->emptyParsed()V
    :try_end_1
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 135
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->emptyParsed()V
    :try_end_2
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParser;->trimQuotedTrailing:Z

    iput-boolean v2, v0, Lcom/univocity/parsers/common/ParserOutput;->trim:Z

    .line 146
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->parseQuotedValue()V

    .line 147
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/univocity/parsers/common/input/CharInputReader;->enableNormalizeLineEndings(Z)V

    .line 148
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed()V

    goto :goto_2

    .line 149
    :cond_5
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParser;->doNotEscapeUnquotedValues:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 151
    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v2, v2, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v2}, Lcom/univocity/parsers/common/input/CharAppender;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 152
    iget-object v3, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v5, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    iget-boolean v6, p0, Lcom/univocity/parsers/csv/CsvParser;->ignoreTrailingWhitespace:Z

    iget-object v7, p0, Lcom/univocity/parsers/csv/CsvParser;->nullValue:Ljava/lang/String;

    iget v8, p0, Lcom/univocity/parsers/csv/CsvParser;->maxColumnLength:I

    invoke-interface/range {v3 .. v8}, Lcom/univocity/parsers/common/input/CharInputReader;->getString(CCZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    .line 155
    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v2, v0}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->getChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    goto :goto_2

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ignoreTrailingWhitespace:Z

    iput-boolean v2, v0, Lcom/univocity/parsers/common/ParserOutput;->trim:Z

    .line 159
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-object v3, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v4, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    iget-char v5, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/univocity/parsers/common/input/CharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 160
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed()V

    goto :goto_2

    .line 163
    :cond_8
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParser;->ignoreTrailingWhitespace:Z

    iput-boolean v2, v0, Lcom/univocity/parsers/common/ParserOutput;->trim:Z

    .line 164
    invoke-direct {p0}, Lcom/univocity/parsers/csv/CsvParser;->parseValueProcessingEscape()V

    .line 165
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed()V

    goto :goto_2

    .line 116
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->emptyParsed()V

    .line 168
    :goto_2
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-eq v0, v2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    .line 170
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    if-ne v0, v2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->emptyParsed()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final updateFormat(Lcom/univocity/parsers/csv/CsvFormat;)V
    .locals 1

    .line 437
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvFormat;->getDelimiter()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->delimiter:C

    .line 438
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvFormat;->getQuote()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->quote:C

    .line 439
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvFormat;->getQuoteEscape()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->quoteEscape:C

    .line 440
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvFormat;->getCharToEscapeQuoteEscaping()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvParser;->escapeEscape:C

    .line 441
    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvFormat;->getNormalizedNewline()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvParser;->newLine:C

    return-void
.end method
