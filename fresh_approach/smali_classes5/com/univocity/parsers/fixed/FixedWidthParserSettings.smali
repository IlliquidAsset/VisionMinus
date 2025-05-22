.class public Lcom/univocity/parsers/fixed/FixedWidthParserSettings;
.super Lcom/univocity/parsers/common/CommonParserSettings;
.source "FixedWidthParserSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/CommonParserSettings<",
        "Lcom/univocity/parsers/fixed/FixedWidthFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

.field private lookaheadFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            ">;"
        }
    .end annotation
.end field

.field private lookbehindFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            ">;"
        }
    .end annotation
.end field

.field protected recordEndsOnNewline:Z

.field protected skipTrailingCharsUntilNewline:Z

.field private useDefaultPaddingForHeaders:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonParserSettings;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->skipTrailingCharsUntilNewline:Z

    .line 49
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->recordEndsOnNewline:Z

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->useDefaultPaddingForHeaders:Z

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookaheadFormats:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookbehindFormats:Ljava/util/Map;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/fixed/FixedWidthFields;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonParserSettings;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->skipTrailingCharsUntilNewline:Z

    .line 49
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->recordEndsOnNewline:Z

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->useDefaultPaddingForHeaders:Z

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookaheadFormats:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookbehindFormats:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 68
    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    .line 69
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldNames()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->setHeaders([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field lengths cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculateMaxFieldLengths()[I
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookaheadFormats:Ljava/util/Map;

    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookbehindFormats:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/univocity/parsers/fixed/Lookup;->calculateMaxFieldLengths(Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;Ljava/util/Map;)[I

    move-result-object v0

    return-object v0
.end method

.method private clone(ZLcom/univocity/parsers/fixed/FixedWidthFields;)Lcom/univocity/parsers/fixed/FixedWidthParserSettings;
    .locals 1

    .line 379
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->clone(Z)Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    .line 380
    iput-object p2, v0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-eqz p1, :cond_0

    .line 383
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookaheadFormats:Ljava/util/Map;

    .line 384
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookbehindFormats:Ljava/util/Map;

    goto :goto_0

    .line 386
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookaheadFormats:Ljava/util/Map;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, v0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookaheadFormats:Ljava/util/Map;

    .line 387
    new-instance p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookbehindFormats:Ljava/util/Map;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, v0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookbehindFormats:Ljava/util/Map;

    :goto_0
    return-object v0
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

    .line 333
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->addConfiguration(Ljava/util/Map;)V

    .line 334
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->skipTrailingCharsUntilNewline:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Skip trailing characters until new line"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->recordEndsOnNewline:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Record ends on new line"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const-string v0, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Field lengths"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookaheadFormats:Ljava/util/Map;

    const-string v1, "Lookahead formats"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookbehindFormats:Ljava/util/Map;

    const-string v1, "Lookbehind formats"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addFormatForLookahead(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookaheadFormats:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/univocity/parsers/fixed/Lookup;->registerLookahead(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;)V

    return-void
.end method

.method public addFormatForLookbehind(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookbehindFormats:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/univocity/parsers/fixed/Lookup;->registerLookbehind(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->clone()Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->clone(Z)Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonSettings;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->clone()Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonSettings;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->clone(Z)Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    move-result-object p1

    return-object p1
.end method

.method public final clone()Lcom/univocity/parsers/fixed/FixedWidthParserSettings;
    .locals 1

    .line 348
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->clone()Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    return-object v0
.end method

.method public final clone(Lcom/univocity/parsers/fixed/FixedWidthFields;)Lcom/univocity/parsers/fixed/FixedWidthParserSettings;
    .locals 1

    const/4 v0, 0x1

    .line 375
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->clone(ZLcom/univocity/parsers/fixed/FixedWidthFields;)Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    move-result-object p1

    return-object p1
.end method

.method protected final clone(Z)Lcom/univocity/parsers/fixed/FixedWidthParserSettings;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->clone()Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->clone(ZLcom/univocity/parsers/fixed/FixedWidthFields;)Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->clone()Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected configureFromAnnotations(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    .line 307
    :try_start_0
    invoke-static {p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->forParsing(Ljava/lang/Class;)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    .line 308
    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findHeadersAnnotation(Ljava/lang/Class;)Lcom/univocity/parsers/annotations/Headers;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->headerExtractionEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Headers;->extract()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->setHeaderExtractionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception p1

    .line 314
    throw p1

    .line 320
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->headerExtractionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->setHeaderExtractionEnabled(Z)V

    .line 324
    :cond_1
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->configureFromAnnotations(Ljava/lang/Class;)V

    .line 326
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->isHeaderExtractionEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 327
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    invoke-static {p1, p0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->setHeadersIfPossible(Lcom/univocity/parsers/fixed/FixedWidthFields;Lcom/univocity/parsers/common/CommonSettings;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic createDefaultFormat()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->createDefaultFormat()Lcom/univocity/parsers/fixed/FixedWidthFormat;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultFormat()Lcom/univocity/parsers/fixed/FixedWidthFormat;
    .locals 1

    .line 196
    new-instance v0, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    invoke-direct {v0}, Lcom/univocity/parsers/fixed/FixedWidthFormat;-><init>()V

    return-object v0
.end method

.method getAllLengths()[I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getAllLengths()[I

    move-result-object v0

    return-object v0
.end method

.method getFieldAlignments()[Lcom/univocity/parsers/fixed/FieldAlignment;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldAlignments()[Lcom/univocity/parsers/fixed/FieldAlignment;

    move-result-object v0

    return-object v0
.end method

.method getFieldLengths()[I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldLengths()[I

    move-result-object v0

    return-object v0
.end method

.method getFieldPaddings()[C
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldPaddings(Lcom/univocity/parsers/fixed/FixedWidthFormat;)[C

    move-result-object v0

    return-object v0
.end method

.method getFieldsToIgnore()[Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldsToIgnore()[Z

    move-result-object v0

    return-object v0
.end method

.method getLookaheadFormats()[Lcom/univocity/parsers/fixed/Lookup;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookaheadFormats:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    invoke-static {v0, v1}, Lcom/univocity/parsers/fixed/Lookup;->getLookupFormats(Ljava/util/Map;Lcom/univocity/parsers/fixed/FixedWidthFormat;)[Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v0

    return-object v0
.end method

.method getLookbehindFormats()[Lcom/univocity/parsers/fixed/Lookup;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->lookbehindFormats:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    invoke-static {v0, v1}, Lcom/univocity/parsers/fixed/Lookup;->getLookupFormats(Ljava/util/Map;Lcom/univocity/parsers/fixed/FixedWidthFormat;)[Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCharsPerColumn()I
    .locals 6

    .line 221
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getMaxCharsPerColumn()I

    move-result v0

    .line 224
    invoke-direct {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->calculateMaxFieldLengths()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v5, v1, v3

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    return v0
.end method

.method public getMaxColumns()I
    .locals 2

    .line 243
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getMaxColumns()I

    move-result v0

    .line 244
    invoke-direct {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->calculateMaxFieldLengths()[I

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public getRecordEndsOnNewline()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->recordEndsOnNewline:Z

    return v0
.end method

.method public getSkipTrailingCharsUntilNewline()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->skipTrailingCharsUntilNewline:Z

    return v0
.end method

.method public getUseDefaultPaddingForHeaders()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->useDefaultPaddingForHeaders:Z

    return v0
.end method

.method protected newCharAppender()Lcom/univocity/parsers/common/input/CharAppender;
    .locals 4

    .line 208
    new-instance v0, Lcom/univocity/parsers/common/input/DefaultCharAppender;

    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getMaxCharsPerColumn()I

    move-result v1

    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getNullValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->getWhitespaceRangeStart()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/univocity/parsers/common/input/DefaultCharAppender;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public setRecordEndsOnNewline(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->recordEndsOnNewline:Z

    return-void
.end method

.method public setSkipTrailingCharsUntilNewline(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->skipTrailingCharsUntilNewline:Z

    return-void
.end method

.method public setUseDefaultPaddingForHeaders(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;->useDefaultPaddingForHeaders:Z

    return-void
.end method
