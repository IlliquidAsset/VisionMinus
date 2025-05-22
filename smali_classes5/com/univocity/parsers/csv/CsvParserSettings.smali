.class public Lcom/univocity/parsers/csv/CsvParserSettings;
.super Lcom/univocity/parsers/common/CommonParserSettings;
.source "CsvParserSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/CommonParserSettings<",
        "Lcom/univocity/parsers/csv/CsvFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private delimiterDetectionEnabled:Z

.field private delimitersForDetection:[C

.field private emptyValue:Ljava/lang/String;

.field private escapeUnquotedValues:Z

.field private ignoreLeadingWhitespacesInQuotes:Z

.field private ignoreTrailingWhitespacesInQuotes:Z

.field private keepEscapeSequences:Z

.field private keepQuotes:Z

.field private normalizeLineEndingsWithinQuotes:Z

.field private parseUnescapedQuotes:Z

.field private parseUnescapedQuotesUntilDelimiter:Z

.field private quoteDetectionEnabled:Z

.field private unescapedQuoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonParserSettings;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->emptyValue:Ljava/lang/String;

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->parseUnescapedQuotes:Z

    .line 42
    iput-boolean v1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->parseUnescapedQuotesUntilDelimiter:Z

    const/4 v2, 0x0

    .line 43
    iput-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->escapeUnquotedValues:Z

    .line 44
    iput-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->keepEscapeSequences:Z

    .line 45
    iput-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->keepQuotes:Z

    .line 46
    iput-boolean v1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->normalizeLineEndingsWithinQuotes:Z

    .line 48
    iput-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->ignoreTrailingWhitespacesInQuotes:Z

    .line 49
    iput-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->ignoreLeadingWhitespacesInQuotes:Z

    .line 51
    iput-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->delimiterDetectionEnabled:Z

    .line 52
    iput-boolean v2, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->quoteDetectionEnabled:Z

    .line 53
    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->unescapedQuoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    .line 54
    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->delimitersForDetection:[C

    return-void
.end method


# virtual methods
.method protected addConfiguration(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->addConfiguration(Ljava/util/Map;)V

    .line 361
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->emptyValue:Ljava/lang/String;

    const-string v1, "Empty value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->unescapedQuoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    const-string v1, "Unescaped quote handling"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->escapeUnquotedValues:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Escape unquoted values"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->keepEscapeSequences:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Keep escape sequences"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->keepQuotes:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Keep quotes"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->normalizeLineEndingsWithinQuotes:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Normalize escaped line separators"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->delimiterDetectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Autodetect column delimiter"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->quoteDetectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Autodetect quotes"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->delimitersForDetection:[C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delimiters for detection"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->ignoreLeadingWhitespacesInQuotes:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Ignore leading whitespaces in quotes"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->ignoreTrailingWhitespacesInQuotes:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Ignore trailing whitespaces in quotes"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvParserSettings;->clone()Lcom/univocity/parsers/csv/CsvParserSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->clone(Z)Lcom/univocity/parsers/csv/CsvParserSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonSettings;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvParserSettings;->clone()Lcom/univocity/parsers/csv/CsvParserSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonSettings;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->clone(Z)Lcom/univocity/parsers/csv/CsvParserSettings;

    move-result-object p1

    return-object p1
.end method

.method public final clone()Lcom/univocity/parsers/csv/CsvParserSettings;
    .locals 1

    .line 376
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->clone()Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    return-object v0
.end method

.method public final clone(Z)Lcom/univocity/parsers/csv/CsvParserSettings;
    .locals 0

    .line 381
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->clone(Z)Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/csv/CsvParserSettings;

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvParserSettings;->clone()Lcom/univocity/parsers/csv/CsvParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createDefaultFormat()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvParserSettings;->createDefaultFormat()Lcom/univocity/parsers/csv/CsvFormat;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultFormat()Lcom/univocity/parsers/csv/CsvFormat;
    .locals 1

    .line 102
    new-instance v0, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-direct {v0}, Lcom/univocity/parsers/csv/CsvFormat;-><init>()V

    return-object v0
.end method

.method public final varargs detectFormatAutomatically([C)V
    .locals 1

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->setDelimiterDetectionEnabled(Z[C)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->setQuoteDetectionEnabled(Z)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->setLineSeparatorDetectionEnabled(Z)V

    return-void
.end method

.method public final getDelimitersForDetection()[C
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->delimitersForDetection:[C

    return-object v0
.end method

.method public getEmptyValue()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->emptyValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoreLeadingWhitespacesInQuotes()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->ignoreLeadingWhitespacesInQuotes:Z

    return v0
.end method

.method public getIgnoreTrailingWhitespacesInQuotes()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->ignoreTrailingWhitespacesInQuotes:Z

    return v0
.end method

.method public getKeepQuotes()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->keepQuotes:Z

    return v0
.end method

.method public getUnescapedQuoteHandling()Lcom/univocity/parsers/csv/UnescapedQuoteHandling;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->unescapedQuoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    return-object v0
.end method

.method public final isDelimiterDetectionEnabled()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->delimiterDetectionEnabled:Z

    return v0
.end method

.method public isEscapeUnquotedValues()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->escapeUnquotedValues:Z

    return v0
.end method

.method public final isKeepEscapeSequences()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->keepEscapeSequences:Z

    return v0
.end method

.method public isNormalizeLineEndingsWithinQuotes()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->normalizeLineEndingsWithinQuotes:Z

    return v0
.end method

.method public isParseUnescapedQuotes()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->parseUnescapedQuotes:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->unescapedQuoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->RAISE_ERROR:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isParseUnescapedQuotesUntilDelimiter()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->parseUnescapedQuotesUntilDelimiter:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvParserSettings;->isParseUnescapedQuotes()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->unescapedQuoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    sget-object v1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_DELIMITER:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->unescapedQuoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    sget-object v1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->SKIP_VALUE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isQuoteDetectionEnabled()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->quoteDetectionEnabled:Z

    return v0
.end method

.method protected newCharAppender()Lcom/univocity/parsers/common/input/CharAppender;
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvParserSettings;->getMaxCharsPerColumn()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 89
    new-instance v1, Lcom/univocity/parsers/common/input/DefaultCharAppender;

    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->emptyValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvParserSettings;->getWhitespaceRangeStart()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/univocity/parsers/common/input/DefaultCharAppender;-><init>(ILjava/lang/String;I)V

    return-object v1

    .line 91
    :cond_0
    new-instance v0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->emptyValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvParserSettings;->getWhitespaceRangeStart()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final varargs setDelimiterDetectionEnabled(Z[C)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->delimiterDetectionEnabled:Z

    .line 229
    iput-object p2, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->delimitersForDetection:[C

    return-void
.end method

.method public setEmptyValue(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->emptyValue:Ljava/lang/String;

    return-void
.end method

.method public setEscapeUnquotedValues(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->escapeUnquotedValues:Z

    return-void
.end method

.method public setIgnoreLeadingWhitespacesInQuotes(Z)V
    .locals 0

    .line 435
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->ignoreLeadingWhitespacesInQuotes:Z

    return-void
.end method

.method public setIgnoreTrailingWhitespacesInQuotes(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->ignoreTrailingWhitespacesInQuotes:Z

    return-void
.end method

.method public final setKeepEscapeSequences(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->keepEscapeSequences:Z

    return-void
.end method

.method public setKeepQuotes(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->keepQuotes:Z

    return-void
.end method

.method public setNormalizeLineEndingsWithinQuotes(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->normalizeLineEndingsWithinQuotes:Z

    return-void
.end method

.method public setParseUnescapedQuotes(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->parseUnescapedQuotes:Z

    return-void
.end method

.method public setParseUnescapedQuotesUntilDelimiter(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->parseUnescapedQuotes:Z

    .line 144
    :cond_0
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->parseUnescapedQuotesUntilDelimiter:Z

    return-void
.end method

.method public final setQuoteDetectionEnabled(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->quoteDetectionEnabled:Z

    return-void
.end method

.method public setUnescapedQuoteHandling(Lcom/univocity/parsers/csv/UnescapedQuoteHandling;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvParserSettings;->unescapedQuoteHandling:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    return-void
.end method

.method public final trimQuotedValues(Z)V
    .locals 0

    .line 447
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->setIgnoreTrailingWhitespacesInQuotes(Z)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->setIgnoreLeadingWhitespacesInQuotes(Z)V

    return-void
.end method
