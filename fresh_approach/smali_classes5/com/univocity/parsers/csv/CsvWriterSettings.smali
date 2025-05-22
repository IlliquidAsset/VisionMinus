.class public Lcom/univocity/parsers/csv/CsvWriterSettings;
.super Lcom/univocity/parsers/common/CommonWriterSettings;
.source "CsvWriterSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/CommonWriterSettings<",
        "Lcom/univocity/parsers/csv/CsvFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private escapeUnquotedValues:Z

.field private isInputEscaped:Z

.field private normalizeLineEndingsWithinQuotes:Z

.field private quotationTriggers:[C

.field private quoteAllFields:Z

.field private quoteEscapingEnabled:Z

.field private quotedFieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->escapeUnquotedValues:Z

    .line 43
    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quoteAllFields:Z

    .line 44
    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->isInputEscaped:Z

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->normalizeLineEndingsWithinQuotes:Z

    new-array v1, v0, [C

    .line 46
    iput-object v1, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quotationTriggers:[C

    .line 47
    iput-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quoteEscapingEnabled:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quotedFieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    return-void
.end method

.method private varargs setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;[TT;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 290
    move-object v0, p1

    check-cast v0, Lcom/univocity/parsers/common/fields/FieldSelector;

    iput-object v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quotedFieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    .line 291
    invoke-virtual {p1, p2}, Lcom/univocity/parsers/common/fields/FieldSet;->add([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    return-object p1
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

    .line 254
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->addConfiguration(Ljava/util/Map;)V

    .line 255
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quoteAllFields:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Quote all fields"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->escapeUnquotedValues:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Escape unquoted values"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->normalizeLineEndingsWithinQuotes:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Normalize escaped line separators"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->isInputEscaped:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Input escaped"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quoteEscapingEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Quote escaping enabled"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quotationTriggers:[C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quotation triggers"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonSettings;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvWriterSettings;->clone()Lcom/univocity/parsers/csv/CsvWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonSettings;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->clone(Z)Lcom/univocity/parsers/csv/CsvWriterSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvWriterSettings;->clone()Lcom/univocity/parsers/csv/CsvWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->clone(Z)Lcom/univocity/parsers/csv/CsvWriterSettings;

    move-result-object p1

    return-object p1
.end method

.method public final clone()Lcom/univocity/parsers/csv/CsvWriterSettings;
    .locals 1

    .line 265
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;->clone()Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/csv/CsvWriterSettings;

    return-object v0
.end method

.method public final clone(Z)Lcom/univocity/parsers/csv/CsvWriterSettings;
    .locals 0

    .line 270
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->clone(Z)Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/csv/CsvWriterSettings;

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvWriterSettings;->clone()Lcom/univocity/parsers/csv/CsvWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createDefaultFormat()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvWriterSettings;->createDefaultFormat()Lcom/univocity/parsers/csv/CsvFormat;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultFormat()Lcom/univocity/parsers/csv/CsvFormat;
    .locals 1

    .line 174
    new-instance v0, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-direct {v0}, Lcom/univocity/parsers/csv/CsvFormat;-><init>()V

    return-object v0
.end method

.method public getQuotationTriggers()[C
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quotationTriggers:[C

    return-object v0
.end method

.method public getQuoteAllFields()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quoteAllFields:Z

    return v0
.end method

.method final getQuotedFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quotedFieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    return-object v0
.end method

.method public isEscapeUnquotedValues()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->escapeUnquotedValues:Z

    return v0
.end method

.method public final isInputEscaped()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->isInputEscaped:Z

    return v0
.end method

.method public isNormalizeLineEndingsWithinQuotes()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->normalizeLineEndingsWithinQuotes:Z

    return v0
.end method

.method public isQuotationTrigger(C)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quotationTriggers:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 209
    aget-char v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isQuoteEscapingEnabled()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quoteEscapingEnabled:Z

    return v0
.end method

.method public final varargs quoteFields([Ljava/lang/Enum;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum;",
            ")",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldEnumSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldEnumSelector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public final varargs quoteFields([Ljava/lang/String;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldNameSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldNameSelector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public final varargs quoteIndexes([Ljava/lang/Integer;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldIndexSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldIndexSelector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/csv/CsvWriterSettings;->setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public setEscapeUnquotedValues(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->escapeUnquotedValues:Z

    return-void
.end method

.method public final setInputEscaped(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->isInputEscaped:Z

    return-void
.end method

.method public setNormalizeLineEndingsWithinQuotes(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->normalizeLineEndingsWithinQuotes:Z

    return-void
.end method

.method public varargs setQuotationTriggers([C)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [C

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quotationTriggers:[C

    return-void
.end method

.method public setQuoteAllFields(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quoteAllFields:Z

    return-void
.end method

.method public setQuoteEscapingEnabled(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/univocity/parsers/csv/CsvWriterSettings;->quoteEscapingEnabled:Z

    return-void
.end method
