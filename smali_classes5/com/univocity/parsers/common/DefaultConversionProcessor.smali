.class public abstract Lcom/univocity/parsers/common/DefaultConversionProcessor;
.super Ljava/lang/Object;
.source "DefaultConversionProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/ConversionProcessor;


# instance fields
.field context:Lcom/univocity/parsers/common/Context;

.field private conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

.field private conversionsByType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ">;"
        }
    .end annotation
.end field

.field private conversionsInitialized:Z

.field errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

.field private fieldIndexes:[I

.field private fieldsReordered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/univocity/parsers/common/NoopProcessorErrorHandler;->instance:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    iput-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    return-void
.end method

.method private applyConversionsByType(Z[Ljava/lang/Object;[Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 189
    aget-boolean v2, p3, v1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    :try_start_0
    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->applyTypeConversion(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 195
    invoke-virtual {p0, v0, p2, v1}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->handleConversionError(Ljava/lang/Throwable;[Ljava/lang/Object;I)Z

    move-result v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private applyTypeConversion(ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsByType:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 267
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/conversions/Conversion;

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 273
    :goto_0
    array-length p1, v0

    if-ge v1, p1, :cond_3

    .line 274
    aget-object p1, v0, v1

    invoke-interface {p1, p2}, Lcom/univocity/parsers/conversions/Conversion;->revert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_2
    :goto_1
    array-length p1, v0

    if-ge v1, p1, :cond_3

    .line 278
    aget-object p1, v0, v1

    invoke-interface {p1, p2}, Lcom/univocity/parsers/conversions/Conversion;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object p2
.end method

.method private getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    return-object v0
.end method


# virtual methods
.method public final applyConversions([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)[Ljava/lang/Object;
    .locals 9

    .line 99
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsByType:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v2, p1

    new-array v2, v2, [Z

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 101
    :goto_0
    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {p1, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v4, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 104
    iget-boolean v4, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsInitialized:Z

    if-nez v4, :cond_1

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->initializeConversions([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    .line 108
    :cond_1
    iget-boolean p2, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldsReordered:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    array-length v0, p2

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-ge p2, v0, :cond_5

    .line 112
    :try_start_0
    iget-boolean v4, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldsReordered:Z

    if-nez v4, :cond_4

    .line 113
    iget-object v4, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    if-nez v4, :cond_3

    .line 114
    iget-object v4, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    aget-object v7, p1, p2

    invoke-virtual {v4, p2, v7, v2}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->applyConversions(ILjava/lang/String;[Z)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, p2

    goto :goto_3

    .line 116
    :cond_3
    iget-object v4, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    aget v4, v4, p2

    .line 117
    iget-object v7, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    aget-object v8, p1, v4

    invoke-virtual {v7, v4, v8, v2}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->applyConversions(ILjava/lang/String;[Z)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v4

    goto :goto_3

    .line 120
    :cond_4
    iget-object v4, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    iget-object v7, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    aget v7, v7, p2

    aget-object v8, p1, p2

    invoke-virtual {v4, v7, v8, v2}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->applyConversions(ILjava/lang/String;[Z)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    .line 123
    invoke-virtual {p0, v4, v1, p2}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->handleConversionError(Ljava/lang/Throwable;[Ljava/lang/Object;I)Z

    move-result v6

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    .line 130
    invoke-direct {p0, v5, v1, v2}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->applyConversionsByType(Z[Ljava/lang/Object;[Z)Z

    move-result v6

    :cond_6
    if-eqz v6, :cond_7

    return-object v1

    :cond_7
    return-object v3
.end method

.method public final varargs convertAll([Lcom/univocity/parsers/conversions/Conversion;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->applyConversionsOnAllFields([Lcom/univocity/parsers/conversions/Conversion;)V

    return-void
.end method

.method public final varargs convertFields([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->applyConversionsOnFieldNames([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public final varargs convertIndexes([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->applyConversionsOnFieldIndexes([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public final varargs convertType(Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Type to convert"

    .line 252
    invoke-static {v1, v0}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sequence of conversions to apply over data of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsByType:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsByType:Ljava/util/Map;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsByType:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final handleConversionError(Ljava/lang/Throwable;[Ljava/lang/Object;I)Z
    .locals 3

    .line 218
    invoke-virtual {p0, p1, p2, p3}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->toDataProcessingException(Ljava/lang/Throwable;[Ljava/lang/Object;I)Lcom/univocity/parsers/common/DataProcessingException;

    move-result-object p1

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    .line 220
    iget-object v1, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    instance-of v2, v1, Lcom/univocity/parsers/common/RetryableErrorHandler;

    if-eqz v2, :cond_0

    .line 221
    check-cast v1, Lcom/univocity/parsers/common/RetryableErrorHandler;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/RetryableErrorHandler;->prepareToRun()V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    invoke-virtual {p1, v1}, Lcom/univocity/parsers/common/DataProcessingException;->markAsHandled(Lcom/univocity/parsers/common/ProcessorErrorHandler;)V

    .line 225
    iget-object v1, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    iget-object v2, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v1, p1, p2, v2}, Lcom/univocity/parsers/common/ProcessorErrorHandler;->handleError(Lcom/univocity/parsers/common/DataProcessingException;[Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    if-le p3, v0, :cond_1

    .line 227
    iget-object p1, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->errorHandler:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    instance-of v0, p1, Lcom/univocity/parsers/common/RetryableErrorHandler;

    if-eqz v0, :cond_1

    .line 228
    check-cast p1, Lcom/univocity/parsers/common/RetryableErrorHandler;

    .line 229
    invoke-virtual {p1}, Lcom/univocity/parsers/common/RetryableErrorHandler;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    .line 230
    aput-object v0, p2, p3

    .line 231
    invoke-virtual {p1}, Lcom/univocity/parsers/common/RetryableErrorHandler;->isRecordSkipped()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected initializeConversions([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsInitialized:Z

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldsReordered:Z

    .line 71
    iput-boolean v1, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsInitialized:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {p2}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 74
    array-length v2, v0

    if-lez v2, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->prepareExecution(Z[Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->prepareExecution(Z[Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_2

    .line 80
    invoke-interface {p2}, Lcom/univocity/parsers/common/Context;->extractedFieldIndexes()[I

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    .line 81
    invoke-interface {p2}, Lcom/univocity/parsers/common/Context;->columnsReordered()Z

    move-result p1

    iput-boolean p1, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldsReordered:Z

    :cond_2
    return-void
.end method

.method public final reverseConversions(Z[Ljava/lang/Object;[Ljava/lang/String;[I)Z
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsByType:Ljava/util/Map;

    if-eqz v0, :cond_0

    array-length v0, p2

    new-array v0, v0, [Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 157
    iget-boolean v3, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsInitialized:Z

    if-nez v3, :cond_2

    .line 158
    iput-boolean v2, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversionsInitialized:Z

    if-eqz p3, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, p3}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->prepareExecution(Z[Ljava/lang/String;)V

    .line 160
    iput-object p4, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    .line 163
    :cond_2
    iget-object p3, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    if-nez p3, :cond_3

    array-length p3, p2

    goto :goto_2

    :cond_3
    array-length p3, p3

    :goto_2
    const/4 p4, 0x0

    const/4 v1, 0x1

    :goto_3
    if-ge p4, p3, :cond_7

    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    aget v3, v3, p4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    goto :goto_4

    .line 170
    :cond_4
    iget-object v3, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->fieldIndexes:[I

    aget v3, v3, p4

    .line 171
    iget-object v4, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    aget-object v5, p2, v3

    invoke-virtual {v4, p1, v3, v5, v0}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->reverseConversions(ZILjava/lang/Object;[Z)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v3

    goto :goto_5

    .line 168
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    aget-object v4, p2, p4

    invoke-virtual {v3, p1, p4, v4, v0}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->reverseConversions(ZILjava/lang/Object;[Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 174
    invoke-virtual {p0, v1, p2, p4}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->handleConversionError(Ljava/lang/Throwable;[Ljava/lang/Object;I)Z

    move-result v1

    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 180
    invoke-direct {p0, v2, p2, v0}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->applyConversionsByType(Z[Ljava/lang/Object;[Z)Z

    move-result v1

    :cond_8
    return v1
.end method

.method protected toDataProcessingException(Ljava/lang/Throwable;[Ljava/lang/Object;I)Lcom/univocity/parsers/common/DataProcessingException;
    .locals 2

    .line 238
    instance-of v0, p1, Lcom/univocity/parsers/common/DataProcessingException;

    if-eqz v0, :cond_0

    .line 239
    check-cast p1, Lcom/univocity/parsers/common/DataProcessingException;

    .line 240
    invoke-virtual {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setRow([Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p1, p3}, Lcom/univocity/parsers/common/DataProcessingException;->setColumnIndex(I)V

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    const-string v1, "Error processing data conversions"

    invoke-direct {v0, v1, p3, p2, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 245
    :goto_0
    invoke-virtual {p1}, Lcom/univocity/parsers/common/DataProcessingException;->markAsNonFatal()V

    .line 246
    iget-object p2, p0, Lcom/univocity/parsers/common/DefaultConversionProcessor;->context:Lcom/univocity/parsers/common/Context;

    invoke-virtual {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setContext(Lcom/univocity/parsers/common/Context;)V

    return-object p1
.end method
