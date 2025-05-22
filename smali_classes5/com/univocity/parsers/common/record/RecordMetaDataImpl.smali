.class Lcom/univocity/parsers/common/record/RecordMetaDataImpl;
.super Ljava/lang/Object;
.source "RecordMetaDataImpl.java"

# interfaces
.implements Lcom/univocity/parsers/common/record/RecordMetaData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/record/RecordMetaData;"
    }
.end annotation


# instance fields
.field private annotationHashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field final context:Lcom/univocity/parsers/common/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private conversionByType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ">;"
        }
    .end annotation
.end field

.field private conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

.field private conversionsByAnnotation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ">;>;"
        }
    .end annotation
.end field

.field private indexMap:[Lcom/univocity/parsers/common/record/MetaData;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversionByType:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversionsByAnnotation:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->annotationHashes:Ljava/util/Map;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    .line 43
    iput-object p1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    return-void
.end method

.method static buildBooleanStringAnnotation([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;
    .locals 1

    .line 403
    new-instance v0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$1;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/univocity/parsers/common/record/MetaData;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/annotation/Annotation;",
            ")TT;"
        }
    .end annotation

    .line 286
    iget v0, p1, Lcom/univocity/parsers/common/record/MetaData;->index:I

    array-length v1, p2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/univocity/parsers/common/record/MetaData;->index:I

    aget-object v0, p2, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    if-nez p4, :cond_1

    .line 289
    iget-object v0, p1, Lcom/univocity/parsers/common/record/MetaData;->defaultValue:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, p4

    :cond_2
    :goto_1
    if-nez p5, :cond_4

    .line 293
    invoke-direct {p0, p2, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->initializeMetadataConversions([Ljava/lang/String;Lcom/univocity/parsers/common/record/MetaData;)V

    .line 294
    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/record/MetaData;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    .line 297
    iget-object p4, p1, Lcom/univocity/parsers/common/record/MetaData;->defaultValue:Ljava/lang/Object;

    :cond_3
    move-object v0, p4

    :cond_4
    if-eqz p3, :cond_d

    if-eqz v0, :cond_5

    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v0

    .line 306
    :cond_5
    const-class p1, Ljava/lang/String;

    if-eq p3, p1, :cond_d

    if-nez p5, :cond_6

    .line 308
    iget-object p1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversionByType:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/conversions/Conversion;

    if-nez p1, :cond_9

    .line 310
    invoke-static {p3, v2, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getDefaultConversion(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Lcom/univocity/parsers/conversions/Conversion;

    move-result-object p1

    .line 311
    iget-object p2, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversionByType:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 314
    :cond_6
    iget-object p1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversionsByAnnotation:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_7

    .line 316
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 317
    iget-object p2, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversionsByAnnotation:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_7
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/univocity/parsers/conversions/Conversion;

    if-nez p2, :cond_8

    .line 321
    invoke-static {p3, p5}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getConversion(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/univocity/parsers/conversions/Conversion;

    move-result-object p2

    .line 322
    invoke-interface {p1, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object p1, p2

    :cond_9
    :goto_2
    if-nez p1, :cond_c

    .line 328
    const-class p1, Ljava/util/Date;

    if-eq p3, p1, :cond_b

    const-class p1, Ljava/util/Calendar;

    if-ne p3, p1, :cond_a

    goto :goto_3

    :cond_a
    const-string p1, ""

    goto :goto_4

    :cond_b
    :goto_3
    const-string p1, ". Need to specify format for date"

    .line 331
    :goto_4
    new-instance p2, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Cannot convert \'{value}\' to "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2, v0}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 333
    iget-object p1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->errorContentLength()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setErrorContentLength(I)V

    .line 334
    throw p2

    .line 338
    :cond_c
    invoke-interface {p1, v0}, Lcom/univocity/parsers/conversions/Conversion;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_d
    if-nez p3, :cond_e

    return-object v0

    .line 346
    :cond_e
    :try_start_0
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 348
    :catch_0
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot cast value \'{value}\' of type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " to "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 350
    iget-object p2, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {p2}, Lcom/univocity/parsers/common/Context;->errorContentLength()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setErrorContentLength(I)V

    .line 351
    throw p1
.end method

.method private convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/univocity/parsers/common/record/MetaData;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 236
    invoke-static {p1, p2, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 0

    .line 241
    invoke-static {p1, p2, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    return-object p3
.end method

.method private static convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 1

    .line 247
    iget p0, p0, Lcom/univocity/parsers/common/record/MetaData;->index:I

    aget-object p0, p1, p0

    const/4 p1, 0x0

    .line 248
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 249
    aget-object v0, p2, p1

    invoke-interface {v0, p0}, Lcom/univocity/parsers/conversions/Conversion;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    return-object v0
.end method

.method private getMetaData(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lcom/univocity/parsers/common/record/MetaData;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    array-length v0, v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/Context;->indexOf(Ljava/lang/Enum;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No headers parsed from input nor provided in the user settings. Only index-based operations are available."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getMetaData(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/Context;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValidatedHeaders()[Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found. Available columns are: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->headers()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getValidatedHeaders()[Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    array-length v1, v0

    if-eqz v1, :cond_0

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No headers parsed from input nor provided in the user settings. Only index-based operations are available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeMetadataConversions([Ljava/lang/String;Lcom/univocity/parsers/common/record/MetaData;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    if-eqz v0, :cond_1

    .line 357
    monitor-enter p0

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->headers()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->prepareExecution(Z[Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->conversions:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    iget v0, p2, Lcom/univocity/parsers/common/record/MetaData;->index:I

    iget-object v1, p2, Lcom/univocity/parsers/common/record/MetaData;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->getConversions(ILjava/lang/Class;)[Lcom/univocity/parsers/conversions/Conversion;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/univocity/parsers/common/record/MetaData;->setDefaultConversions([Lcom/univocity/parsers/conversions/Conversion;)V

    .line 365
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private static varargs newFormatAnnotation(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;
    .locals 1

    .line 422
    new-instance v0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$2;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method varargs buildAnnotation(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->annotationHashes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    if-nez v1, :cond_3

    .line 444
    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 447
    :cond_0
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->newFormatAnnotation(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_3

    :cond_1
    :goto_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 445
    :goto_2
    invoke-static {p1, p3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->buildBooleanStringAnnotation([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    goto :goto_0

    .line 449
    :goto_3
    iget-object p1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->annotationHashes:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public containsColumn(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v1, p1}, Lcom/univocity/parsers/common/Context;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public varargs convertFields(Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->applyConversionsOnFieldEnums([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs convertFields([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
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

    .line 197
    invoke-direct {p0}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->applyConversionsOnFieldNames([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs convertIndexes([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
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

    .line 203
    invoke-direct {p0}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getConversions()Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->applyConversionsOnFieldIndexes([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public defaultValueOf(I)Ljava/lang/Object;
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    iget-object p1, p1, Lcom/univocity/parsers/common/record/MetaData;->defaultValue:Ljava/lang/Object;

    return-object p1
.end method

.method public defaultValueOf(Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    iget-object p1, p1, Lcom/univocity/parsers/common/record/MetaData;->defaultValue:Ljava/lang/Object;

    return-object p1
.end method

.method public defaultValueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    iget-object p1, p1, Lcom/univocity/parsers/common/record/MetaData;->defaultValue:Ljava/lang/Object;

    return-object p1
.end method

.method public getMetaData(I)Lcom/univocity/parsers/common/record/MetaData;
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    if-eqz v0, :cond_0

    array-length v1, v0

    add-int/lit8 v2, p1, 0x1

    if-lt v1, v2, :cond_0

    aget-object v0, v0, p1

    if-nez v0, :cond_7

    .line 73
    :cond_0
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    aget-object v0, v0, p1

    if-nez v0, :cond_6

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    array-length v1, v0

    .line 80
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/record/MetaData;

    iput-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    move v0, p1

    goto :goto_2

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    array-length v2, v0

    if-ge p1, v2, :cond_3

    .line 84
    array-length v0, v0

    goto :goto_0

    :cond_3
    move v0, p1

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v2}, Lcom/univocity/parsers/common/Context;->extractedFieldIndexes()[I

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    .line 89
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 90
    aget v4, v2, v3

    if-ge v0, v4, :cond_4

    .line 91
    aget v0, v2, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v0, 0x1

    .line 96
    new-array v2, v2, [Lcom/univocity/parsers/common/record/MetaData;

    iput-object v2, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    :goto_2
    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_6

    .line 100
    iget-object v2, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    new-instance v3, Lcom/univocity/parsers/common/record/MetaData;

    invoke-direct {v3, v1}, Lcom/univocity/parsers/common/record/MetaData;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 103
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->indexMap:[Lcom/univocity/parsers/common/record/MetaData;

    aget-object p1, v0, p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 374
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method varargs getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 390
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 392
    :cond_0
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v1

    invoke-virtual {p0, p3, p5, p6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->buildAnnotation(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 378
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method varargs getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 397
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 399
    :cond_0
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v1

    invoke-virtual {p0, p3, p5, p6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->buildAnnotation(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 370
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method varargs getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 383
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 385
    :cond_0
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v1

    invoke-virtual {p0, p3, p5, p6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->buildAnnotation(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getValue([Ljava/lang/String;ILjava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 276
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getValue([Ljava/lang/String;ILjava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "ITT;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 261
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;TT;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->convert(Lcom/univocity/parsers/common/record/MetaData;[Ljava/lang/String;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getValue([Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 225
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p2

    .line 226
    iget p2, p2, Lcom/univocity/parsers/common/record/MetaData;->index:I

    aget-object p1, p1, p2

    return-object p1
.end method

.method getValue([Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 230
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p2

    .line 231
    iget p2, p2, Lcom/univocity/parsers/common/record/MetaData;->index:I

    aget-object p1, p1, p2

    return-object p1
.end method

.method getValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 217
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->metadataOf(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p2

    .line 218
    iget v0, p2, Lcom/univocity/parsers/common/record/MetaData;->index:I

    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    iget p2, p2, Lcom/univocity/parsers/common/record/MetaData;->index:I

    aget-object p1, p1, p2

    return-object p1
.end method

.method public headers()[Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Enum;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    iget p1, p1, Lcom/univocity/parsers/common/record/MetaData;->index:I

    return p1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    iget p1, p1, Lcom/univocity/parsers/common/record/MetaData;->index:I

    return p1
.end method

.method metadataOf(I)Lcom/univocity/parsers/common/record/MetaData;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    return-object p1
.end method

.method metadataOf(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lcom/univocity/parsers/common/record/MetaData;"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    return-object p1
.end method

.method metadataOf(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    return-object p1
.end method

.method public selectedHeaders()[Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->selectedHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs setDefaultValueOfColumns(Ljava/lang/Object;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[I)V"
        }
    .end annotation

    .line 161
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 162
    invoke-virtual {p0, v2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v2

    iput-object p1, v2, Lcom/univocity/parsers/common/record/MetaData;->defaultValue:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setDefaultValueOfColumns(Ljava/lang/Object;[Ljava/lang/Enum;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 147
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 148
    invoke-direct {p0, v2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v2

    iput-object p1, v2, Lcom/univocity/parsers/common/record/MetaData;->defaultValue:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setDefaultValueOfColumns(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 154
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 155
    invoke-direct {p0, v2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v2

    iput-object p1, v2, Lcom/univocity/parsers/common/record/MetaData;->defaultValue:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setTypeOfColumns(Ljava/lang/Class;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 471
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 472
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v1

    iput-object p1, v1, Lcom/univocity/parsers/common/record/MetaData;->type:Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setTypeOfColumns(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Enum;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 457
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 458
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v1

    iput-object p1, v1, Lcom/univocity/parsers/common/record/MetaData;->type:Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setTypeOfColumns(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 464
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 465
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object v1

    iput-object p1, v1, Lcom/univocity/parsers/common/record/MetaData;->type:Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public typeOf(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(I)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    iget-object p1, p1, Lcom/univocity/parsers/common/record/MetaData;->type:Ljava/lang/Class;

    return-object p1
.end method

.method public typeOf(Ljava/lang/Enum;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/Enum;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    iget-object p1, p1, Lcom/univocity/parsers/common/record/MetaData;->type:Ljava/lang/Class;

    return-object p1
.end method

.method public typeOf(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getMetaData(Ljava/lang/String;)Lcom/univocity/parsers/common/record/MetaData;

    move-result-object p1

    iget-object p1, p1, Lcom/univocity/parsers/common/record/MetaData;->type:Ljava/lang/Class;

    return-object p1
.end method
