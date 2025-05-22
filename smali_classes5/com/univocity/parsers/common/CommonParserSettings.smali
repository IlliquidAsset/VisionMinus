.class public abstract Lcom/univocity/parsers/common/CommonParserSettings;
.super Lcom/univocity/parsers/common/CommonSettings;
.source "CommonParserSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/univocity/parsers/common/Format;",
        ">",
        "Lcom/univocity/parsers/common/CommonSettings<",
        "TF;>;"
    }
.end annotation


# instance fields
.field private columnReorderingEnabled:Z

.field private commentCollectionEnabled:Z

.field protected headerExtractionEnabled:Ljava/lang/Boolean;

.field private inputBufferSize:I

.field private lineSeparatorDetectionEnabled:Z

.field private numberOfRecordsToRead:J

.field private numberOfRowsToSkip:J

.field private processor:Lcom/univocity/parsers/common/processor/core/Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "+",
            "Lcom/univocity/parsers/common/Context;",
            ">;"
        }
    .end annotation
.end field

.field private readInputOnSeparateThread:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonSettings;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->headerExtractionEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->columnReorderingEnabled:Z

    const/high16 v1, 0x100000

    .line 61
    iput v1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->inputBufferSize:I

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->readInputOnSeparateThread:Z

    const-wide/16 v0, -0x1

    .line 63
    iput-wide v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->numberOfRecordsToRead:J

    .line 64
    iput-boolean v2, p0, Lcom/univocity/parsers/common/CommonParserSettings;->lineSeparatorDetectionEnabled:Z

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->numberOfRowsToSkip:J

    .line 66
    iput-boolean v2, p0, Lcom/univocity/parsers/common/CommonParserSettings;->commentCollectionEnabled:Z

    return-void
.end method

.method private preventReordering()Z
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    instance-of v1, v0, Lcom/univocity/parsers/common/processor/core/ColumnOrderDependent;

    if-eqz v1, :cond_0

    .line 369
    check-cast v0, Lcom/univocity/parsers/common/processor/core/ColumnOrderDependent;

    invoke-interface {v0}, Lcom/univocity/parsers/common/processor/core/ColumnOrderDependent;->preventColumnReordering()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected addConfiguration(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 357
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonSettings;->addConfiguration(Ljava/util/Map;)V

    .line 358
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->headerExtractionEnabled:Ljava/lang/Boolean;

    const-string v1, "Header extraction enabled"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    if-nez v0, :cond_0

    const-string v0, "none"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Processor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->columnReorderingEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Column reordering enabled"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->inputBufferSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Input buffer size"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->readInputOnSeparateThread:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Input reading on separate thread"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-wide v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->numberOfRecordsToRead:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "all"

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    const-string v1, "Number of records to read"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->lineSeparatorDetectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Line separator detection enabled"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected clearInputSpecificSettings()V
    .locals 2

    .line 464
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonSettings;->clearInputSpecificSettings()V

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    const-wide/16 v0, -0x1

    .line 466
    iput-wide v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->numberOfRecordsToRead:J

    const-wide/16 v0, 0x0

    .line 467
    iput-wide v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->numberOfRowsToSkip:J

    return-void
.end method

.method protected clone()Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonSettings;->clone()Lcom/univocity/parsers/common/CommonSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/common/CommonParserSettings;

    return-object v0
.end method

.method protected clone(Z)Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 0

    .line 454
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonSettings;->clone(Z)Lcom/univocity/parsers/common/CommonSettings;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/common/CommonParserSettings;

    return-object p1
.end method

.method protected bridge synthetic clone()Lcom/univocity/parsers/common/CommonSettings;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->clone()Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonSettings;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->clone(Z)Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->clone()Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized configureFromAnnotations(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 419
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->deriveHeadersFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 420
    monitor-exit p0

    return-void

    .line 422
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findHeadersAnnotation(Ljava/lang/Class;)Lcom/univocity/parsers/annotations/Headers;

    move-result-object v0

    .line 424
    sget-object v1, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 425
    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->allFieldsIndexBasedForParsing(Ljava/lang/Class;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    if-eqz v0, :cond_2

    .line 429
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Headers;->sequence()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 430
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Headers;->sequence()[Ljava/lang/String;

    move-result-object v1

    .line 432
    :cond_1
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Headers;->extract()Z

    move-result v3

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->headerExtractionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 436
    invoke-virtual {p0, v3}, Lcom/univocity/parsers/common/CommonParserSettings;->setHeaderExtractionEnabled(Z)V

    .line 439
    :cond_3
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    array-length v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->headerExtractionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 440
    invoke-virtual {p0, p1, v1}, Lcom/univocity/parsers/common/CommonParserSettings;->setHeadersDerivedFromClass(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 443
    :cond_4
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getFieldSet()Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object v0

    if-nez v0, :cond_6

    if-eqz v2, :cond_5

    .line 445
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-static {p1, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getSelectedIndexes(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)[Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->selectIndexes([Ljava/lang/Integer;)Lcom/univocity/parsers/common/fields/FieldSet;

    goto :goto_0

    .line 446
    :cond_5
    array-length v0, v1

    if-lez v0, :cond_6

    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->allFieldsNameBasedForParsing(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 447
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/CommonParserSettings;->selectFields([Ljava/lang/String;)Lcom/univocity/parsers/common/fields/FieldSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->preventReordering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonSettings;->getFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getFieldSet()Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "*>;"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->preventReordering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonSettings;->getFieldSet()Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInputBufferSize()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->inputBufferSize:I

    return v0
.end method

.method public getNumberOfRecordsToRead()J
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->numberOfRecordsToRead:J

    return-wide v0
.end method

.method public final getNumberOfRowsToSkip()J
    .locals 2

    .line 340
    iget-wide v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->numberOfRowsToSkip:J

    return-wide v0
.end method

.method public getProcessor()Lcom/univocity/parsers/common/processor/core/Processor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/univocity/parsers/common/Context;",
            ">()",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    :cond_0
    return-object v0
.end method

.method public getReadInputOnSeparateThread()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->readInputOnSeparateThread:Z

    return v0
.end method

.method public getRowProcessor()Lcom/univocity/parsers/common/processor/RowProcessor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/univocity/parsers/common/processor/NoopRowProcessor;->instance:Lcom/univocity/parsers/common/processor/RowProcessor;

    return-object v0

    .line 135
    :cond_0
    check-cast v0, Lcom/univocity/parsers/common/processor/RowProcessor;

    return-object v0
.end method

.method public isColumnReorderingEnabled()Z
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->preventReordering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->columnReorderingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCommentCollectionEnabled()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->commentCollectionEnabled:Z

    return v0
.end method

.method public isHeaderExtractionEnabled()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->headerExtractionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final isLineSeparatorDetectionEnabled()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->lineSeparatorDetectionEnabled:Z

    return v0
.end method

.method protected newCharAppender()Lcom/univocity/parsers/common/input/CharAppender;
    .locals 4

    .line 308
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getMaxCharsPerColumn()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 310
    new-instance v1, Lcom/univocity/parsers/common/input/DefaultCharAppender;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getNullValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getWhitespaceRangeStart()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/univocity/parsers/common/input/DefaultCharAppender;-><init>(ILjava/lang/String;I)V

    return-object v1

    .line 312
    :cond_0
    new-instance v0, Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getNullValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getWhitespaceRangeStart()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected newCharInputReader(I)Lcom/univocity/parsers/common/input/CharInputReader;
    .locals 10

    .line 206
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->readInputOnSeparateThread:Z

    if-eqz v0, :cond_1

    .line 207
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->lineSeparatorDetectionEnabled:Z

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/univocity/parsers/common/Format;->getNormalizedNewline()C

    move-result v1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getInputBufferSize()I

    move-result v2

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;-><init>(CIII)V

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/univocity/parsers/common/Format;->getLineSeparator()[C

    move-result-object v5

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/univocity/parsers/common/Format;->getNormalizedNewline()C

    move-result v6

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getInputBufferSize()I

    move-result v7

    const/16 v8, 0xa

    move-object v4, v0

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;-><init>([CCIII)V

    return-object v0

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->lineSeparatorDetectionEnabled:Z

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Lcom/univocity/parsers/common/input/DefaultCharInputReader;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/univocity/parsers/common/Format;->getNormalizedNewline()C

    move-result v1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getInputBufferSize()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/univocity/parsers/common/input/DefaultCharInputReader;-><init>(CII)V

    return-object v0

    .line 216
    :cond_2
    new-instance v0, Lcom/univocity/parsers/common/input/DefaultCharInputReader;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/univocity/parsers/common/Format;->getLineSeparator()[C

    move-result-object v1

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v2

    invoke-virtual {v2}, Lcom/univocity/parsers/common/Format;->getNormalizedNewline()C

    move-result v2

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->getInputBufferSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/univocity/parsers/common/input/DefaultCharInputReader;-><init>([CCII)V

    return-object v0
.end method

.method final runAutomaticConfiguration()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonParserSettings;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    instance-of v1, v0, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_0
    instance-of v1, v0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;

    if-eqz v1, :cond_1

    .line 402
    check-cast v0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->getBeanClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 403
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 404
    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/CommonParserSettings;->configureFromAnnotations(Ljava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public setColumnReorderingEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->preventReordering()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot reorder columns when using a row processor that manipulates nested rows."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->columnReorderingEnabled:Z

    return-void
.end method

.method public setCommentCollectionEnabled(Z)V
    .locals 0

    .line 392
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->commentCollectionEnabled:Z

    return-void
.end method

.method public setHeaderExtractionEnabled(Z)V
    .locals 0

    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->headerExtractionEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setInputBufferSize(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->inputBufferSize:I

    return-void
.end method

.method public final setLineSeparatorDetectionEnabled(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->lineSeparatorDetectionEnabled:Z

    return-void
.end method

.method public setNumberOfRecordsToRead(J)V
    .locals 0

    .line 236
    iput-wide p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->numberOfRecordsToRead:J

    return-void
.end method

.method public final setNumberOfRowsToSkip(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 352
    iput-wide p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->numberOfRowsToSkip:J

    return-void

    .line 350
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of rows to skip from the input must be 0 or greater"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProcessor(Lcom/univocity/parsers/common/processor/core/Processor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "+",
            "Lcom/univocity/parsers/common/Context;",
            ">;)V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    return-void
.end method

.method public setReadInputOnSeparateThread(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->readInputOnSeparateThread:Z

    return-void
.end method

.method public setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonParserSettings;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    return-void
.end method
