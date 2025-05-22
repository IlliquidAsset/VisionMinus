.class public Lcom/univocity/parsers/csv/Csv;
.super Ljava/lang/Object;
.source "Csv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseExcel()Lcom/univocity/parsers/csv/CsvParserSettings;
    .locals 3

    .line 31
    new-instance v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-direct {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;-><init>()V

    .line 32
    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/csv/CsvFormat;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Lcom/univocity/parsers/csv/CsvFormat;->setLineSeparator(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/csv/CsvFormat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/univocity/parsers/csv/CsvFormat;->setComment(C)V

    .line 34
    invoke-virtual {v0, v2}, Lcom/univocity/parsers/csv/CsvParserSettings;->setParseUnescapedQuotes(Z)V

    .line 36
    invoke-virtual {v0, v2}, Lcom/univocity/parsers/csv/CsvParserSettings;->setSkipEmptyLines(Z)V

    .line 37
    invoke-virtual {v0, v2}, Lcom/univocity/parsers/csv/CsvParserSettings;->trimValues(Z)V

    return-object v0
.end method

.method public static parseRfc4180()Lcom/univocity/parsers/csv/CsvParserSettings;
    .locals 2

    .line 50
    invoke-static {}, Lcom/univocity/parsers/csv/Csv;->parseExcel()Lcom/univocity/parsers/csv/CsvParserSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/univocity/parsers/csv/CsvParserSettings;->setNormalizeLineEndingsWithinQuotes(Z)V

    return-object v0
.end method

.method public static writeExcel()Lcom/univocity/parsers/csv/CsvWriterSettings;
    .locals 3

    .line 62
    new-instance v0, Lcom/univocity/parsers/csv/CsvWriterSettings;

    invoke-direct {v0}, Lcom/univocity/parsers/csv/CsvWriterSettings;-><init>()V

    .line 64
    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/csv/CsvFormat;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Lcom/univocity/parsers/csv/CsvFormat;->setLineSeparator(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/csv/CsvFormat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/univocity/parsers/csv/CsvFormat;->setComment(C)V

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->setEmptyValue(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v2}, Lcom/univocity/parsers/csv/CsvWriterSettings;->setSkipEmptyLines(Z)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/univocity/parsers/csv/CsvWriterSettings;->trimValues(Z)V

    return-object v0
.end method

.method public static writeRfc4180()Lcom/univocity/parsers/csv/CsvWriterSettings;
    .locals 2

    .line 82
    invoke-static {}, Lcom/univocity/parsers/csv/Csv;->writeExcel()Lcom/univocity/parsers/csv/CsvWriterSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->setNormalizeLineEndingsWithinQuotes(Z)V

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->setQuoteEscapingEnabled(Z)V

    return-object v0
.end method
