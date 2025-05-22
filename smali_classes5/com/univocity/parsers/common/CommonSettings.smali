.class public abstract Lcom/univocity/parsers/common/CommonSettings;
.super Ljava/lang/Object;
.source "CommonSettings.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/univocity/parsers/common/Format;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private autoConfigurationEnabled:Z

.field private errorContentLength:I

.field private errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/ProcessorErrorHandler<",
            "+",
            "Lcom/univocity/parsers/common/Context;",
            ">;"
        }
    .end annotation
.end field

.field private fieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

.field private format:Lcom/univocity/parsers/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field headerSourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private headers:[Ljava/lang/String;

.field private ignoreLeadingWhitespaces:Z

.field private ignoreTrailingWhitespaces:Z

.field private maxCharsPerColumn:I

.field private maxColumns:I

.field private nullValue:Ljava/lang/String;

.field private skipBitsAsWhitespace:Z

.field private skipEmptyLines:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->nullValue:Ljava/lang/String;

    const/16 v1, 0x1000

    .line 68
    iput v1, p0, Lcom/univocity/parsers/common/CommonSettings;->maxCharsPerColumn:I

    const/16 v1, 0x200

    .line 69
    iput v1, p0, Lcom/univocity/parsers/common/CommonSettings;->maxColumns:I

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/univocity/parsers/common/CommonSettings;->skipEmptyLines:Z

    .line 71
    iput-boolean v1, p0, Lcom/univocity/parsers/common/CommonSettings;->ignoreTrailingWhitespaces:Z

    .line 72
    iput-boolean v1, p0, Lcom/univocity/parsers/common/CommonSettings;->ignoreLeadingWhitespaces:Z

    .line 73
    iput-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->fieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    .line 74
    iput-boolean v1, p0, Lcom/univocity/parsers/common/CommonSettings;->autoConfigurationEnabled:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/univocity/parsers/common/CommonSettings;->errorContentLength:I

    .line 77
    iput-boolean v1, p0, Lcom/univocity/parsers/common/CommonSettings;->skipBitsAsWhitespace:Z

    .line 86
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonSettings;->createDefaultFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/CommonSettings;->setFormat(Lcom/univocity/parsers/common/Format;)V

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

    .line 427
    move-object v0, p1

    check-cast v0, Lcom/univocity/parsers/common/fields/FieldSelector;

    iput-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->fieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    .line 428
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

    .line 664
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->nullValue:Ljava/lang/String;

    const-string v1, "Null value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget v0, p0, Lcom/univocity/parsers/common/CommonSettings;->maxCharsPerColumn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Maximum number of characters per column"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    iget v0, p0, Lcom/univocity/parsers/common/CommonSettings;->maxColumns:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Maximum number of columns"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->skipEmptyLines:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Skip empty lines"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->ignoreTrailingWhitespaces:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Ignore trailing whitespaces"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->ignoreLeadingWhitespaces:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Ignore leading whitespaces"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->fieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    if-nez v0, :cond_0

    const-string v0, "none"

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/univocity/parsers/common/fields/FieldSelector;->describe()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Selected fields"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->headers:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Headers"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->autoConfigurationEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Auto configuration enabled"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    const-string v1, "RowProcessor error handler"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget v0, p0, Lcom/univocity/parsers/common/CommonSettings;->errorContentLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Length of content displayed on error"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget v0, p0, Lcom/univocity/parsers/common/CommonSettings;->errorContentLength:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Restricting data in exceptions"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->skipBitsAsWhitespace:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Skip bits as whitespace"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final autoConfigure()V
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->autoConfigurationEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonSettings;->runAutomaticConfiguration()V

    return-void
.end method

.method protected clearInputSpecificSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 720
    iput-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->fieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    .line 721
    iput-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->headers:[Ljava/lang/String;

    return-void
.end method

.method protected clone()Lcom/univocity/parsers/common/CommonSettings;
    .locals 1

    const/4 v0, 0x0

    .line 713
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/CommonSettings;->clone(Z)Lcom/univocity/parsers/common/CommonSettings;

    move-result-object v0

    return-object v0
.end method

.method protected clone(Z)Lcom/univocity/parsers/common/CommonSettings;
    .locals 2

    .line 692
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/common/CommonSettings;

    .line 693
    iget-object v1, v0, Lcom/univocity/parsers/common/CommonSettings;->format:Lcom/univocity/parsers/common/Format;

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, v0, Lcom/univocity/parsers/common/CommonSettings;->format:Lcom/univocity/parsers/common/Format;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/Format;->clone()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    iput-object v1, v0, Lcom/univocity/parsers/common/CommonSettings;->format:Lcom/univocity/parsers/common/Format;

    :cond_0
    if-eqz p1, :cond_1

    .line 697
    invoke-virtual {v0}, Lcom/univocity/parsers/common/CommonSettings;->clearInputSpecificSettings()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 701
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonSettings;->clone()Lcom/univocity/parsers/common/CommonSettings;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createDefaultFormat()Lcom/univocity/parsers/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method deriveHeadersFrom(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->headerSourceClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    .line 229
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/CommonSettings;->setHeaders([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public varargs excludeFields([Ljava/lang/Enum;)Lcom/univocity/parsers/common/fields/FieldSet;
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

    .line 415
    new-instance v0, Lcom/univocity/parsers/common/fields/ExcludeFieldEnumSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/ExcludeFieldEnumSelector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs excludeFields([Ljava/lang/String;)Lcom/univocity/parsers/common/fields/FieldSet;
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

    .line 328
    new-instance v0, Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs excludeIndexes([Ljava/lang/Integer;)Lcom/univocity/parsers/common/fields/FieldSet;
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

    .line 370
    new-instance v0, Lcom/univocity/parsers/common/fields/ExcludeFieldIndexSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/ExcludeFieldIndexSelector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public getErrorContentLength()I
    .locals 1

    .line 580
    iget v0, p0, Lcom/univocity/parsers/common/CommonSettings;->errorContentLength:I

    return v0
.end method

.method getFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->fieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

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

    .line 438
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->fieldSelector:Lcom/univocity/parsers/common/fields/FieldSelector;

    check-cast v0, Lcom/univocity/parsers/common/fields/FieldSet;

    return-object v0
.end method

.method public getFormat()Lcom/univocity/parsers/common/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->format:Lcom/univocity/parsers/common/Format;

    return-object v0
.end method

.method public getHeaders()[Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoreLeadingWhitespaces()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->ignoreLeadingWhitespaces:Z

    return v0
.end method

.method public getIgnoreTrailingWhitespaces()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->ignoreTrailingWhitespaces:Z

    return v0
.end method

.method public getMaxCharsPerColumn()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/univocity/parsers/common/CommonSettings;->maxCharsPerColumn:I

    return v0
.end method

.method public getMaxColumns()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/univocity/parsers/common/CommonSettings;->maxColumns:I

    return v0
.end method

.method public getNullValue()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->nullValue:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessorErrorHandler()Lcom/univocity/parsers/common/ProcessorErrorHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/univocity/parsers/common/Context;",
            ">()",
            "Lcom/univocity/parsers/common/ProcessorErrorHandler<",
            "TT;>;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/univocity/parsers/common/NoopProcessorErrorHandler;->instance:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    :cond_0
    return-object v0
.end method

.method public getRowProcessorErrorHandler()Lcom/univocity/parsers/common/RowProcessorErrorHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/univocity/parsers/common/NoopRowProcessorErrorHandler;->instance:Lcom/univocity/parsers/common/RowProcessorErrorHandler;

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/univocity/parsers/common/RowProcessorErrorHandler;

    :goto_0
    return-object v0
.end method

.method public final getSkipBitsAsWhitespace()Z
    .locals 1

    .line 615
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->skipBitsAsWhitespace:Z

    return v0
.end method

.method public getSkipEmptyLines()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->skipEmptyLines:Z

    return v0
.end method

.method protected final getWhitespaceRangeStart()I
    .locals 1

    .line 641
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->skipBitsAsWhitespace:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final isAutoConfigurationEnabled()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonSettings;->autoConfigurationEnabled:Z

    return v0
.end method

.method public isProcessorErrorHandlerDefined()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonSettings;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method runAutomaticConfiguration()V
    .locals 0

    return-void
.end method

.method public varargs selectFields([Ljava/lang/Enum;)Lcom/univocity/parsers/common/fields/FieldSet;
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

    .line 393
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldEnumSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldEnumSelector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs selectFields([Ljava/lang/String;)Lcom/univocity/parsers/common/fields/FieldSet;
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

    .line 307
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldNameSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldNameSelector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs selectIndexes([Ljava/lang/Integer;)Lcom/univocity/parsers/common/fields/FieldSet;
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

    .line 349
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldIndexSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldIndexSelector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/CommonSettings;->setFieldSet(Lcom/univocity/parsers/common/fields/FieldSet;[Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public final setAutoConfigurationEnabled(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonSettings;->autoConfigurationEnabled:Z

    return-void
.end method

.method public setErrorContentLength(I)V
    .locals 0

    .line 594
    iput p1, p0, Lcom/univocity/parsers/common/CommonSettings;->errorContentLength:I

    return-void
.end method

.method public setFormat(Lcom/univocity/parsers/common/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 286
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonSettings;->format:Lcom/univocity/parsers/common/Format;

    return-void

    .line 284
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Format cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setHeaders([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 199
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonSettings;->headers:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonSettings;->headers:[Ljava/lang/String;

    :goto_1
    return-void
.end method

.method varargs setHeadersDerivedFromClass(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonSettings;->headerSourceClass:Ljava/lang/Class;

    .line 216
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/CommonSettings;->setHeaders([Ljava/lang/String;)V

    return-void
.end method

.method public setIgnoreLeadingWhitespaces(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonSettings;->ignoreLeadingWhitespaces:Z

    return-void
.end method

.method public setIgnoreTrailingWhitespaces(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonSettings;->ignoreTrailingWhitespaces:Z

    return-void
.end method

.method public setMaxCharsPerColumn(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/univocity/parsers/common/CommonSettings;->maxCharsPerColumn:I

    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/univocity/parsers/common/CommonSettings;->maxColumns:I

    return-void
.end method

.method public setNullValue(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonSettings;->nullValue:Ljava/lang/String;

    return-void
.end method

.method public setProcessorErrorHandler(Lcom/univocity/parsers/common/ProcessorErrorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/ProcessorErrorHandler<",
            "+",
            "Lcom/univocity/parsers/common/Context;",
            ">;)V"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonSettings;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    return-void
.end method

.method public setRowProcessorErrorHandler(Lcom/univocity/parsers/common/RowProcessorErrorHandler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 503
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonSettings;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    return-void
.end method

.method public final setSkipBitsAsWhitespace(Z)V
    .locals 0

    .line 631
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonSettings;->skipBitsAsWhitespace:Z

    return-void
.end method

.method public setSkipEmptyLines(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonSettings;->skipEmptyLines:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 651
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/CommonSettings;->addConfiguration(Ljava/util/Map;)V

    .line 653
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "\n\t"

    .line 654
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Format configuration:\n\t"

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/univocity/parsers/common/Format;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimValues(Z)V
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/CommonSettings;->setIgnoreLeadingWhitespaces(Z)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/CommonSettings;->setIgnoreTrailingWhitespaces(Z)V

    return-void
.end method
