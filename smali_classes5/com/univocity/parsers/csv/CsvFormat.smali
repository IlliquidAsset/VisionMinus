.class public Lcom/univocity/parsers/csv/CsvFormat;
.super Lcom/univocity/parsers/common/Format;
.source "CsvFormat.java"


# instance fields
.field private charToEscapeQuoteEscaping:Ljava/lang/Character;

.field private delimiter:C

.field private quote:C

.field private quoteEscape:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/univocity/parsers/common/Format;-><init>()V

    const/16 v0, 0x22

    .line 40
    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->quote:C

    .line 41
    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->quoteEscape:C

    const/16 v0, 0x2c

    .line 42
    iput-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->delimiter:C

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->charToEscapeQuoteEscaping:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvFormat;->clone()Lcom/univocity/parsers/csv/CsvFormat;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/univocity/parsers/csv/CsvFormat;
    .locals 1

    .line 205
    invoke-super {p0}, Lcom/univocity/parsers/common/Format;->clone()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/csv/CsvFormat;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvFormat;->clone()Lcom/univocity/parsers/csv/CsvFormat;

    move-result-object v0

    return-object v0
.end method

.method public final getCharToEscapeQuoteEscaping()C
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->charToEscapeQuoteEscaping:Ljava/lang/Character;

    if-nez v0, :cond_1

    .line 151
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->quote:C

    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvFormat;->quoteEscape:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    .line 157
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method protected getConfiguration()Ljava/util/TreeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 196
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvFormat;->quote:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "Quote character"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvFormat;->quoteEscape:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "Quote escape character"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/univocity/parsers/csv/CsvFormat;->charToEscapeQuoteEscaping:Ljava/lang/Character;

    const-string v2, "Quote escape escape character"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-char v1, p0, Lcom/univocity/parsers/csv/CsvFormat;->delimiter:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "Field delimiter"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getDelimiter()C
    .locals 1

    .line 109
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->delimiter:C

    return v0
.end method

.method public getQuote()C
    .locals 1

    .line 51
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->quote:C

    return v0
.end method

.method public getQuoteEscape()C
    .locals 1

    .line 80
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->quoteEscape:C

    return v0
.end method

.method public final isCharToEscapeQuoteEscaping(C)Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvFormat;->getCharToEscapeQuoteEscaping()C

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDelimiter(C)Z
    .locals 1

    .line 129
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->delimiter:C

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isQuote(C)Z
    .locals 1

    .line 71
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->quote:C

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isQuoteEscape(C)Z
    .locals 1

    .line 100
    iget-char v0, p0, Lcom/univocity/parsers/csv/CsvFormat;->quoteEscape:C

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final setCharToEscapeQuoteEscaping(C)V
    .locals 0

    .line 178
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvFormat;->charToEscapeQuoteEscaping:Ljava/lang/Character;

    return-void
.end method

.method public setDelimiter(C)V
    .locals 0

    .line 118
    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvFormat;->delimiter:C

    return-void
.end method

.method public setQuote(C)V
    .locals 0

    .line 60
    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvFormat;->quote:C

    return-void
.end method

.method public setQuoteEscape(C)V
    .locals 0

    .line 89
    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvFormat;->quoteEscape:C

    return-void
.end method
