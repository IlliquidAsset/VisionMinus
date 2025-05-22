.class public Lcom/univocity/parsers/tsv/TsvParser;
.super Lcom/univocity/parsers/common/AbstractParser;
.source "TsvParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/AbstractParser<",
        "Lcom/univocity/parsers/tsv/TsvParserSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final escapeChar:C

.field private final escapedTabChar:C

.field private final ignoreLeadingWhitespace:Z

.field private final ignoreTrailingWhitespace:Z

.field private final joinLines:Z

.field private final newLine:C


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/tsv/TsvParserSettings;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/AbstractParser;-><init>(Lcom/univocity/parsers/common/CommonParserSettings;)V

    .line 46
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvParserSettings;->getIgnoreTrailingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ignoreTrailingWhitespace:Z

    .line 47
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvParserSettings;->getIgnoreLeadingWhitespaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ignoreLeadingWhitespace:Z

    .line 48
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvParserSettings;->isLineJoiningEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->joinLines:Z

    .line 50
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/tsv/TsvFormat;

    .line 51
    invoke-virtual {v0}, Lcom/univocity/parsers/tsv/TsvFormat;->getNormalizedNewline()C

    move-result v1

    iput-char v1, p0, Lcom/univocity/parsers/tsv/TsvParser;->newLine:C

    .line 52
    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/tsv/TsvFormat;

    invoke-virtual {p1}, Lcom/univocity/parsers/tsv/TsvFormat;->getEscapeChar()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/tsv/TsvParser;->escapeChar:C

    .line 53
    invoke-virtual {v0}, Lcom/univocity/parsers/tsv/TsvFormat;->getEscapedTabChar()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/tsv/TsvParser;->escapedTabChar:C

    return-void
.end method

.method private parseField()V
    .locals 8

    .line 82
    iget-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ignoreLeadingWhitespace:Z

    const/16 v1, 0x9

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    const/16 v2, 0x20

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->whitespaceRangeStart:I

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    if-ge v0, v2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v3, p0, Lcom/univocity/parsers/tsv/TsvParser;->escapeChar:C

    invoke-interface {v0, v2, v1, v3}, Lcom/univocity/parsers/common/input/CharInputReader;->skipWhitespace(CCC)C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    .line 86
    :cond_0
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->emptyParsed()V

    goto/16 :goto_4

    .line 89
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    if-eq v0, v1, :cond_a

    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->newLine:C

    if-eq v0, v2, :cond_a

    .line 90
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->escapeChar:C

    if-ne v0, v2, :cond_9

    .line 91
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    .line 92
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    const/16 v2, 0x74

    if-eq v0, v2, :cond_8

    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->escapedTabChar:C

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_3

    .line 95
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_2

    .line 96
    :cond_3
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_4

    .line 97
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v0, v2}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_2

    .line 98
    :cond_4
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    const/16 v2, 0x72

    if-ne v0, v2, :cond_5

    .line 99
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_2

    .line 100
    :cond_5
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->newLine:C

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->joinLines:Z

    if-eqz v0, :cond_6

    .line 101
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->newLine:C

    invoke-interface {v0, v2}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_2

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->escapeChar:C

    invoke-interface {v0, v2}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 104
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->newLine:C

    if-eq v0, v2, :cond_a

    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    if-ne v0, v1, :cond_7

    goto :goto_3

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    invoke-interface {v0, v2}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_2

    .line 93
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    .line 109
    :goto_2
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    goto/16 :goto_0

    .line 111
    :cond_9
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v2, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    iget-char v3, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-object v4, p0, Lcom/univocity/parsers/tsv/TsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    const/16 v5, 0x9

    iget-char v6, p0, Lcom/univocity/parsers/tsv/TsvParser;->escapeChar:C

    iget-char v7, p0, Lcom/univocity/parsers/tsv/TsvParser;->newLine:C

    invoke-interface/range {v2 .. v7}, Lcom/univocity/parsers/common/input/CharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CCC)C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    goto/16 :goto_0

    .line 115
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->valueParsed()V

    :goto_4
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-boolean v1, p0, Lcom/univocity/parsers/tsv/TsvParser;->ignoreTrailingWhitespace:Z

    iput-boolean v1, v0, Lcom/univocity/parsers/common/ParserOutput;->trim:Z

    return-void
.end method

.method protected parseRecord()V
    .locals 4

    .line 66
    iget-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ignoreLeadingWhitespace:Z

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    const/16 v2, 0x20

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->whitespaceRangeStart:I

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    iget-char v2, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v3, p0, Lcom/univocity/parsers/tsv/TsvParser;->escapeChar:C

    invoke-interface {v0, v2, v1, v3}, Lcom/univocity/parsers/common/input/CharInputReader;->skipWhitespace(CCC)C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    .line 70
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/tsv/TsvParser;->newLine:C

    if-eq v0, v1, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/univocity/parsers/tsv/TsvParser;->parseField()V

    .line 72
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/tsv/TsvParser;->newLine:C

    if-eq v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    .line 74
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->ch:C

    iget-char v1, p0, Lcom/univocity/parsers/tsv/TsvParser;->newLine:C

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/univocity/parsers/tsv/TsvParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->emptyParsed()V

    goto :goto_0

    :cond_1
    return-void
.end method
