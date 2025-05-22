.class public Lcom/univocity/parsers/fixed/FixedWidthParser;
.super Lcom/univocity/parsers/common/AbstractParser;
.source "FixedWidthParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/AbstractParser<",
        "Lcom/univocity/parsers/fixed/FixedWidthParserSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

.field private alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

.field private final defaultPadding:C

.field private ignore:[Z

.field private final ignoreLeadingWhitespace:Z

.field private final ignoreTrailingWhitespace:Z

.field private initializeLookaheadInput:Z

.field private length:I

.field private lengths:[I

.field private final lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

.field private lookaheadInput:Lcom/univocity/parsers/common/input/LookaheadCharInputReader;

.field private lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

.field private final lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

.field private lookupFormat:Lcom/univocity/parsers/fixed/Lookup;

.field private maxLookupLength:I

.field private final newLine:C

.field private padding:C

.field private paddings:[C

.field private final recordEndsOnNewLine:Z

.field private rootAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

.field private rootIgnore:[Z

.field private rootLengths:[I

.field private rootPaddings:[C

.field private final skipEmptyLines:Z

.field private final skipToNewLine:Z

.field private useDefaultPadding:Z

.field private final wildcard:C


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;)V
    .locals 4

    .line 74
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;-><init>(Lcom/univocity/parsers/common/CommonParserSettings;)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->initializeLookaheadInput:Z

    .line 75
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getIgnoreLeadingWhitespaces()Z

    move-result v1

    iput-boolean v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignoreLeadingWhitespace:Z

    .line 76
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getIgnoreTrailingWhitespaces()Z

    move-result v1

    iput-boolean v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignoreTrailingWhitespace:Z

    .line 77
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getSkipTrailingCharsUntilNewline()Z

    move-result v1

    iput-boolean v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->skipToNewLine:Z

    .line 78
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getRecordEndsOnNewline()Z

    move-result v1

    iput-boolean v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->recordEndsOnNewLine:Z

    .line 79
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getSkipEmptyLines()Z

    move-result v1

    iput-boolean v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->skipEmptyLines:Z

    .line 80
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getAllLengths()[I

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lengths:[I

    .line 81
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getFieldAlignments()[Lcom/univocity/parsers/fixed/FieldAlignment;

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 82
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getFieldPaddings()[C

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->paddings:[C

    .line 83
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getFieldsToIgnore()[Z

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignore:[Z

    .line 85
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getLookaheadFormats()[Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    .line 86
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getLookbehindFormats()[Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    .line 87
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    invoke-virtual {v1}, Lcom/univocity/parsers/fixed/FixedWidthFormat;->getLookupWildcard()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->wildcard:C

    .line 89
    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    iput-boolean v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->initializeLookaheadInput:Z

    .line 91
    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lengths:[I

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootLengths:[I

    .line 92
    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 93
    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->paddings:[C

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootPaddings:[C

    .line 94
    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignore:[Z

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootIgnore:[Z

    const/4 v1, 0x2

    new-array v1, v1, [[Lcom/univocity/parsers/fixed/Lookup;

    .line 95
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aput-object v3, v1, v0

    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/univocity/parsers/fixed/Lookup;->calculateMaxLookupLength([[Lcom/univocity/parsers/fixed/Lookup;)I

    move-result v1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->maxLookupLength:I

    .line 97
    new-instance v1, Lcom/univocity/parsers/fixed/FixedWidthParser$1;

    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    invoke-direct {v1, p0, v3}, Lcom/univocity/parsers/fixed/FixedWidthParser$1;-><init>(Lcom/univocity/parsers/fixed/FixedWidthParser;Lcom/univocity/parsers/common/ParsingContext;)V

    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    .line 106
    invoke-virtual {v1}, Lcom/univocity/parsers/fixed/FixedWidthFormat;->getPadding()C

    move-result v3

    iput-char v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    .line 107
    iput-char v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->defaultPadding:C

    .line 108
    invoke-virtual {v1}, Lcom/univocity/parsers/fixed/FixedWidthFormat;->getNormalizedNewline()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->newLine:C

    .line 109
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getUseDefaultPaddingForHeaders()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->isHeaderExtractionEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->useDefaultPadding:Z

    return-void
.end method

.method static synthetic access$000(Lcom/univocity/parsers/fixed/FixedWidthParser;)Lcom/univocity/parsers/fixed/Lookup;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookupFormat:Lcom/univocity/parsers/fixed/Lookup;

    return-object p0
.end method

.method private readValue()V
    .locals 3

    .line 273
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    .line 274
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignoreTrailingWhitespace:Z

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    sget-object v1, Lcom/univocity/parsers/fixed/FieldAlignment;->RIGHT:Lcom/univocity/parsers/fixed/FieldAlignment;

    if-ne v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->appendIgnoringWhitespace(C)V

    .line 277
    :goto_0
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->appendIgnoringWhitespace(C)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    invoke-interface {v0, v1, v2}, Lcom/univocity/parsers/common/input/CharAppender;->appendIgnoringWhitespaceAndPadding(CC)V

    .line 282
    :goto_1
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    invoke-interface {v0, v1, v2}, Lcom/univocity/parsers/common/input/CharAppender;->appendIgnoringWhitespaceAndPadding(CC)V

    goto :goto_1

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    sget-object v1, Lcom/univocity/parsers/fixed/FieldAlignment;->RIGHT:Lcom/univocity/parsers/fixed/FieldAlignment;

    if-ne v0, v1, :cond_2

    .line 288
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 289
    :goto_2
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_2

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    invoke-interface {v0, v1, v2}, Lcom/univocity/parsers/common/input/CharAppender;->appendIgnoringPadding(CC)V

    .line 294
    :goto_3
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    invoke-interface {v0, v1, v2}, Lcom/univocity/parsers/common/input/CharAppender;->appendIgnoringPadding(CC)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private readValueUntilNewLine()V
    .locals 3

    .line 244
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignoreTrailingWhitespace:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    sget-object v1, Lcom/univocity/parsers/fixed/FieldAlignment;->RIGHT:Lcom/univocity/parsers/fixed/FieldAlignment;

    if-ne v0, v1, :cond_0

    .line 246
    :goto_0
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_3

    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->newLine:C

    if-eq v0, v1, :cond_3

    .line 247
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->appendIgnoringWhitespace(C)V

    .line 248
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    goto :goto_0

    .line 251
    :cond_0
    :goto_1
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_3

    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->newLine:C

    if-eq v0, v1, :cond_3

    .line 252
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    invoke-interface {v0, v1, v2}, Lcom/univocity/parsers/common/input/CharAppender;->appendIgnoringWhitespaceAndPadding(CC)V

    .line 253
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    goto :goto_1

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    sget-object v1, Lcom/univocity/parsers/fixed/FieldAlignment;->RIGHT:Lcom/univocity/parsers/fixed/FieldAlignment;

    if-ne v0, v1, :cond_2

    .line 259
    :goto_2
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_3

    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->newLine:C

    if-eq v0, v1, :cond_3

    .line 260
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 261
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    goto :goto_2

    .line 264
    :cond_2
    :goto_3
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_3

    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->newLine:C

    if-eq v0, v1, :cond_3

    .line 265
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    invoke-interface {v0, v1, v2}, Lcom/univocity/parsers/common/input/CharAppender;->appendIgnoringPadding(CC)V

    .line 266
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    goto :goto_3

    :cond_3
    return-void
.end method

.method private skipPadding()V
    .locals 2

    .line 232
    :goto_0
    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    goto :goto_0

    :cond_0
    return-void
.end method

.method private skipToNewLine()V
    .locals 2

    .line 223
    :goto_0
    :try_start_0
    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->newLine:C

    if-eq v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C
    :try_end_0
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method private skipWhitespace()V
    .locals 2

    .line 238
    :goto_0
    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->whitespaceRangeStart:I

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    if-lt v0, v1, :cond_1

    :cond_0
    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected parseRecord()V
    .locals 8

    .line 114
    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->newLine:C

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->skipEmptyLines:Z

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    if-eqz v0, :cond_c

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->initializeLookaheadInput:Z

    if-eqz v0, :cond_2

    .line 121
    iput-boolean v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->initializeLookaheadInput:Z

    .line 122
    new-instance v0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;

    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->newLine:C

    iget v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->whitespaceRangeStart:I

    invoke-direct {v0, v2, v3, v4}, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;-><init>(Lcom/univocity/parsers/common/input/CharInputReader;CI)V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadInput:Lcom/univocity/parsers/common/input/LookaheadCharInputReader;

    .line 123
    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadInput:Lcom/univocity/parsers/common/input/LookaheadCharInputReader;

    iget v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->maxLookupLength:I

    invoke-virtual {v0, v2}, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead(I)V

    .line 128
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 129
    :goto_0
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 130
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadInput:Lcom/univocity/parsers/common/input/LookaheadCharInputReader;

    iget-char v5, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-object v6, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    iget-char v7, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->wildcard:C

    invoke-virtual {v4, v5, v6, v7}, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->matches(C[CC)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/univocity/parsers/fixed/Lookup;->lengths:[I

    iput-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lengths:[I

    .line 132
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/univocity/parsers/fixed/Lookup;->ignore:[Z

    iput-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignore:[Z

    .line 133
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v0, v4, v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookupFormat:Lcom/univocity/parsers/fixed/Lookup;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 139
    iput-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    const/4 v0, 0x0

    .line 140
    :goto_2
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    array-length v4, v4

    if-ge v0, v4, :cond_9

    .line 141
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadInput:Lcom/univocity/parsers/common/input/LookaheadCharInputReader;

    iget-char v5, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-object v6, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    iget-char v7, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->wildcard:C

    invoke-virtual {v4, v5, v6, v7}, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->matches(C[CC)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v0, v4, v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 148
    :goto_3
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    .line 149
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadInput:Lcom/univocity/parsers/common/input/LookaheadCharInputReader;

    iget-char v5, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-object v6, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    iget-char v7, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->wildcard:C

    invoke-virtual {v4, v5, v6, v7}, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->matches(C[CC)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 150
    iget-object v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormats:[Lcom/univocity/parsers/fixed/Lookup;

    aget-object v0, v4, v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    .line 152
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootLengths:[I

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lengths:[I

    .line 153
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootIgnore:[Z

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignore:[Z

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_4
    if-nez v3, :cond_c

    .line 160
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    if-nez v0, :cond_b

    .line 161
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootLengths:[I

    if-eqz v0, :cond_a

    .line 164
    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lengths:[I

    .line 165
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootAlignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 166
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootPaddings:[C

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->paddings:[C

    .line 167
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->rootIgnore:[Z

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignore:[Z

    .line 168
    iput-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookupFormat:Lcom/univocity/parsers/fixed/Lookup;

    goto :goto_5

    .line 162
    :cond_a
    new-instance v0, Lcom/univocity/parsers/common/TextParsingException;

    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->context:Lcom/univocity/parsers/common/ParsingContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process input with the given configuration. No default field lengths defined and no lookahead/lookbehind value match \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookaheadInput:Lcom/univocity/parsers/common/input/LookaheadCharInputReader;

    iget-char v4, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    invoke-virtual {v3, v4}, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->getLookahead(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/common/TextParsingException;-><init>(Lcom/univocity/parsers/common/ParsingContext;Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_b
    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->lengths:[I

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lengths:[I

    .line 171
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 172
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->paddings:[C

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->paddings:[C

    .line 173
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->ignore:[Z

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignore:[Z

    .line 174
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookbehindFormat:Lcom/univocity/parsers/fixed/Lookup;

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lookupFormat:Lcom/univocity/parsers/fixed/Lookup;

    :cond_c
    :goto_5
    const/4 v0, 0x0

    .line 180
    :goto_6
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lengths:[I

    array-length v3, v2

    if-ge v0, v3, :cond_14

    .line 181
    aget v2, v2, v0

    iput v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    .line 182
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->paddings:[C

    if-eqz v2, :cond_e

    .line 183
    iget-boolean v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->useDefaultPadding:Z

    if-eqz v3, :cond_d

    iget-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->defaultPadding:C

    goto :goto_7

    :cond_d
    aget-char v2, v2, v0

    :goto_7
    iput-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->padding:C

    .line 185
    :cond_e
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    if-eqz v2, :cond_f

    .line 186
    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->alignment:Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 188
    :cond_f
    invoke-direct {p0}, Lcom/univocity/parsers/fixed/FixedWidthParser;->skipPadding()V

    .line 190
    iget-boolean v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignoreLeadingWhitespace:Z

    if-eqz v2, :cond_10

    .line 191
    invoke-direct {p0}, Lcom/univocity/parsers/fixed/FixedWidthParser;->skipWhitespace()V

    .line 194
    :cond_10
    iget-boolean v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->recordEndsOnNewLine:Z

    if-eqz v2, :cond_11

    .line 195
    invoke-direct {p0}, Lcom/univocity/parsers/fixed/FixedWidthParser;->readValueUntilNewLine()V

    .line 196
    iget-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    iget-char v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->newLine:C

    if-ne v2, v3, :cond_12

    .line 197
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed()V

    .line 198
    iput-boolean v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->useDefaultPadding:Z

    return-void

    .line 201
    :cond_11
    iget v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->length:I

    if-lez v2, :cond_12

    .line 202
    invoke-direct {p0}, Lcom/univocity/parsers/fixed/FixedWidthParser;->readValue()V

    add-int/lit8 v2, v0, 0x1

    .line 203
    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->lengths:[I

    array-length v3, v3

    if-ge v2, v3, :cond_12

    .line 204
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v2}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v2

    iput-char v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ch:C

    .line 207
    :cond_12
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->ignore:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_13

    .line 208
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v2, v2, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v2}, Lcom/univocity/parsers/common/input/CharAppender;->reset()V

    goto :goto_8

    .line 210
    :cond_13
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed()V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 214
    :cond_14
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->skipToNewLine:Z

    if-eqz v0, :cond_15

    .line 215
    invoke-direct {p0}, Lcom/univocity/parsers/fixed/FixedWidthParser;->skipToNewLine()V

    .line 217
    :cond_15
    iput-boolean v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser;->useDefaultPadding:Z

    return-void
.end method
