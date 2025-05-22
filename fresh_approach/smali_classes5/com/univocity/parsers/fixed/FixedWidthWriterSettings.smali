.class public Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;
.super Lcom/univocity/parsers/common/CommonWriterSettings;
.source "FixedWidthWriterSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/CommonWriterSettings<",
        "Lcom/univocity/parsers/fixed/FixedWidthFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultAlignmentForHeaders:Lcom/univocity/parsers/fixed/FieldAlignment;

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

.field private useDefaultPaddingForHeaders:Z

.field private writeLineSeparatorAfterRecord:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookaheadFormats:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookbehindFormats:Ljava/util/Map;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->useDefaultPaddingForHeaders:Z

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->defaultAlignmentForHeaders:Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 45
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->writeLineSeparatorAfterRecord:Z

    .line 69
    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/fixed/FixedWidthFields;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookaheadFormats:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookbehindFormats:Ljava/util/Map;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->useDefaultPaddingForHeaders:Z

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->defaultAlignmentForHeaders:Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 45
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->writeLineSeparatorAfterRecord:Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->setFieldLengths(Lcom/univocity/parsers/fixed/FixedWidthFields;)V

    .line 57
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldNames()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->setHeaders([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private clone(ZLcom/univocity/parsers/fixed/FixedWidthFields;)Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;
    .locals 1

    .line 333
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->clone(Z)Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    .line 334
    iput-object p2, v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-eqz p1, :cond_0

    .line 337
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookaheadFormats:Ljava/util/Map;

    .line 338
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookbehindFormats:Ljava/util/Map;

    goto :goto_0

    .line 340
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookaheadFormats:Ljava/util/Map;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookaheadFormats:Ljava/util/Map;

    .line 341
    new-instance p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookbehindFormats:Ljava/util/Map;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookbehindFormats:Ljava/util/Map;

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

    .line 286
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->addConfiguration(Ljava/util/Map;)V

    .line 287
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->writeLineSeparatorAfterRecord:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Write line separator after record"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    const-string v1, "Field lengths"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookaheadFormats:Ljava/util/Map;

    const-string v1, "Lookahead formats"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookbehindFormats:Ljava/util/Map;

    const-string v1, "Lookbehind formats"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->useDefaultPaddingForHeaders:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Use default padding for headers"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->defaultAlignmentForHeaders:Lcom/univocity/parsers/fixed/FieldAlignment;

    const-string v1, "Default alignment for headers"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addFormatForLookahead(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookaheadFormats:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/univocity/parsers/fixed/Lookup;->registerLookahead(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;)V

    return-void
.end method

.method public addFormatForLookbehind(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookbehindFormats:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/univocity/parsers/fixed/Lookup;->registerLookbehind(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonSettings;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->clone()Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonSettings;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->clone(Z)Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->clone()Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->clone(Z)Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    move-result-object p1

    return-object p1
.end method

.method public final clone()Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;
    .locals 1

    const/4 v0, 0x0

    .line 302
    invoke-super {p0, v0}, Lcom/univocity/parsers/common/CommonWriterSettings;->clone(Z)Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    return-object v0
.end method

.method public final clone(Lcom/univocity/parsers/fixed/FixedWidthFields;)Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;
    .locals 1

    const/4 v0, 0x1

    .line 329
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->clone(ZLcom/univocity/parsers/fixed/FixedWidthFields;)Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    move-result-object p1

    return-object p1
.end method

.method protected final clone(Z)Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->clone()Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->clone(ZLcom/univocity/parsers/fixed/FixedWidthFields;)Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

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

    .line 38
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->clone()Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected configureFromAnnotations(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->forWriting(Ljava/lang/Class;)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    .line 274
    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findHeadersAnnotation(Ljava/lang/Class;)Lcom/univocity/parsers/annotations/Headers;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Headers;->write()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->setHeaderWritingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :catch_0
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->configureFromAnnotations(Ljava/lang/Class;)V

    .line 281
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    invoke-static {p1, p0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->setHeadersIfPossible(Lcom/univocity/parsers/fixed/FixedWidthFields;Lcom/univocity/parsers/common/CommonSettings;)V

    return-void
.end method

.method protected bridge synthetic createDefaultFormat()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->createDefaultFormat()Lcom/univocity/parsers/fixed/FixedWidthFormat;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultFormat()Lcom/univocity/parsers/fixed/FixedWidthFormat;
    .locals 1

    .line 146
    new-instance v0, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    invoke-direct {v0}, Lcom/univocity/parsers/fixed/FixedWidthFormat;-><init>()V

    return-object v0
.end method

.method getAllLengths()[I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getAllLengths()[I

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAlignmentForHeaders()Lcom/univocity/parsers/fixed/FieldAlignment;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->defaultAlignmentForHeaders:Lcom/univocity/parsers/fixed/FieldAlignment;

    return-object v0
.end method

.method getFieldAlignments()[Lcom/univocity/parsers/fixed/FieldAlignment;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldAlignments()[Lcom/univocity/parsers/fixed/FieldAlignment;

    move-result-object v0

    return-object v0
.end method

.method getFieldLengths()[I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldLengths()[I

    move-result-object v0

    return-object v0
.end method

.method getFieldPaddings()[C
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldPaddings(Lcom/univocity/parsers/fixed/FixedWidthFormat;)[C

    move-result-object v0

    return-object v0
.end method

.method getFieldsToIgnore()[Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldsToIgnore()[Z

    move-result-object v0

    return-object v0
.end method

.method getLookaheadFormats()[Lcom/univocity/parsers/fixed/Lookup;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookaheadFormats:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    invoke-static {v0, v1}, Lcom/univocity/parsers/fixed/Lookup;->getLookupFormats(Ljava/util/Map;Lcom/univocity/parsers/fixed/FixedWidthFormat;)[Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v0

    return-object v0
.end method

.method getLookbehindFormats()[Lcom/univocity/parsers/fixed/Lookup;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookbehindFormats:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    invoke-static {v0, v1}, Lcom/univocity/parsers/fixed/Lookup;->getLookupFormats(Ljava/util/Map;Lcom/univocity/parsers/fixed/FixedWidthFormat;)[Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getMaxColumns()I
    .locals 4

    .line 151
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;->getMaxColumns()I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookaheadFormats:Ljava/util/Map;

    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->lookbehindFormats:Ljava/util/Map;

    invoke-static {v1, v2, v3}, Lcom/univocity/parsers/fixed/Lookup;->calculateMaxFieldLengths(Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;Ljava/util/Map;)[I

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public getUseDefaultPaddingForHeaders()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->useDefaultPaddingForHeaders:Z

    return v0
.end method

.method public getWriteLineSeparatorAfterRecord()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->writeLineSeparatorAfterRecord:Z

    return v0
.end method

.method public setDefaultAlignmentForHeaders(Lcom/univocity/parsers/fixed/FieldAlignment;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->defaultAlignmentForHeaders:Lcom/univocity/parsers/fixed/FieldAlignment;

    return-void
.end method

.method final setFieldLengths(Lcom/univocity/parsers/fixed/FixedWidthFields;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->fieldLengths:Lcom/univocity/parsers/fixed/FixedWidthFields;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field lengths cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseDefaultPaddingForHeaders(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->useDefaultPaddingForHeaders:Z

    return-void
.end method

.method public setWriteLineSeparatorAfterRecord(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->writeLineSeparatorAfterRecord:Z

    return-void
.end method
