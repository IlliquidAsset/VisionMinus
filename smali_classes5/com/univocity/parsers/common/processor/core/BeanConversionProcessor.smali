.class public Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;
.super Lcom/univocity/parsers/common/DefaultConversionProcessor;
.source "BeanConversionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/univocity/parsers/common/DefaultConversionProcessor;"
    }
.end annotation


# instance fields
.field final beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected initialized:Z

.field private lastFieldIndexMapped:I

.field protected final methodFilter:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

.field private missing:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

.field private nestedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/univocity/parsers/annotations/helpers/FieldMapping;",
            "Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final parsedFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/univocity/parsers/annotations/helpers/FieldMapping;",
            ">;"
        }
    .end annotation
.end field

.field private readOrder:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

.field private row:[Ljava/lang/Object;

.field strictHeaderValidationEnabled:Z

.field private syntheticHeaders:[Ljava/lang/String;

.field protected final transformer:Lcom/univocity/parsers/annotations/HeaderTransformer;

.field private valuesForMissing:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/univocity/parsers/annotations/HeaderTransformer;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/univocity/parsers/common/DefaultConversionProcessor;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->lastFieldIndexMapped:I

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initialized:Z

    .line 47
    iput-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->strictHeaderValidationEnabled:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->syntheticHeaders:[Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->nestedAttributes:Ljava/util/Map;

    .line 82
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    .line 83
    iput-object p2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->transformer:Lcom/univocity/parsers/annotations/HeaderTransformer;

    .line 84
    iput-object p3, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->methodFilter:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0, p2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-void
.end method

.method private applyDefaultConversion(Lcom/univocity/parsers/conversions/Conversion;Lcom/univocity/parsers/conversions/Conversion;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 290
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    return v0

    :cond_2
    const-string v2, "execute"

    .line 295
    invoke-direct {p0, p1, v2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->getConversionMethod(Lcom/univocity/parsers/conversions/Conversion;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "revert"

    .line 296
    invoke-direct {p0, p1, v4}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->getConversionMethod(Lcom/univocity/parsers/conversions/Conversion;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 298
    invoke-direct {p0, p2, v2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->getConversionMethod(Lcom/univocity/parsers/conversions/Conversion;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 299
    invoke-direct {p0, p2, v4}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->getConversionMethod(Lcom/univocity/parsers/conversions/Conversion;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 301
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-ne v3, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    if-eq p1, p2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method static describeField(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
    .locals 2

    .line 239
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getName(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConversionMethod(Lcom/univocity/parsers/conversions/Conversion;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 9

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2e

    const-string v5, "Unable to convert values for class \'"

    if-ge v3, v1, :cond_2

    aget-object v6, v0, v3

    .line 309
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_1

    if-nez v2, :cond_0

    move-object v2, v6

    goto :goto_1

    .line 311
    :cond_0
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Multiple \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' methods defined in conversion "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    return-object v2

    .line 320
    :cond_3
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Cannot find method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' in conversion "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeValuesForMissing()V
    .locals 6

    .line 473
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->readOrder:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    array-length v0, v0

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 474
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 475
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->readOrder:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    new-array v3, v1, [Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 476
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->missing:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 477
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 478
    new-instance v3, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor$1;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->getBeanClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->methodFilter:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-direct {v3, p0, v4, v5}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor$1;-><init>(Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    .line 487
    :goto_0
    iget-object v4, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->missing:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 488
    aget-object v4, v4, v1

    .line 489
    invoke-virtual {p0, v4}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->processField(Lcom/univocity/parsers/annotations/helpers/FieldMapping;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    invoke-virtual {v4}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->setupConversions(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/helpers/FieldMapping;)V

    .line 492
    :cond_0
    invoke-virtual {v4}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getFieldName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {v3, v0, v2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initializeConversions([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    .line 495
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->missing:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->applyConversions([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->valuesForMissing:[Ljava/lang/Object;

    goto :goto_1

    .line 497
    :cond_2
    iput-object v2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->missing:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 498
    iput-object v2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->valuesForMissing:[Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private mapFieldIndexes(Lcom/univocity/parsers/common/Context;[Ljava/lang/Object;[Ljava/lang/String;[IZ)V
    .locals 9

    if-nez p3, :cond_0

    .line 388
    sget-object p3, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 393
    :cond_0
    array-length v0, p3

    array-length v1, p2

    if-le v0, v1, :cond_1

    array-length p2, p3

    goto :goto_0

    :cond_1
    array-length p2, p2

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 395
    invoke-virtual {v3}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getIndex()I

    move-result v3

    if-gt p2, v3, :cond_2

    move p2, v3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 405
    :cond_4
    new-array v0, p2, [Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 406
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 408
    iget-object v3, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 409
    invoke-virtual {v5}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->isMappedToField()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 410
    invoke-virtual {v5}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6}, Lcom/univocity/parsers/common/ArgumentUtils;->indexesOf([Ljava/lang/Object;Ljava/lang/Object;)[I

    move-result-object v6

    .line 411
    array-length v7, v6

    if-nez v7, :cond_6

    .line 412
    invoke-virtual {v5}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    .line 415
    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_5

    .line 416
    aget v8, v6, v7

    aput-object v5, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 418
    :cond_7
    invoke-virtual {v5}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getIndex()I

    move-result v6

    if-ge v6, p2, :cond_5

    .line 419
    invoke-virtual {v5}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getIndex()I

    move-result v6

    aput-object v5, v0, v6

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_b

    .line 423
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 424
    array-length p1, p3

    const-string v3, "Could not find fields "

    if-eqz p1, :cond_a

    .line 427
    iget-boolean p1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->strictHeaderValidationEnabled:Z

    if-nez p1, :cond_9

    goto :goto_4

    .line 428
    :cond_9
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/TreeSet;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\' in input. Names found: {headers}"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "headers"

    invoke-virtual {p1, p3, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    throw p1

    .line 425
    :cond_a
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/TreeSet;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in input. Please enable header extraction in the parser settings in order to match field names."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    if-eqz p4, :cond_13

    const/4 p1, 0x0

    :goto_5
    if-ge p1, p2, :cond_f

    const/4 p3, 0x0

    .line 438
    :goto_6
    array-length v2, p4

    if-ge p3, v2, :cond_d

    .line 439
    aget v2, p4, p3

    if-ne v2, p1, :cond_c

    const/4 p3, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_d
    const/4 p3, 0x0

    :goto_7
    if-nez p3, :cond_e

    const/4 p3, 0x0

    .line 445
    aput-object p3, v0, p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_f
    if-eqz p5, :cond_13

    .line 451
    array-length p1, p4

    new-array p1, p1, [Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    const/4 p3, 0x0

    .line 453
    :goto_8
    array-length p5, p4

    if-ge p3, p5, :cond_12

    const/4 p5, 0x0

    :goto_9
    if-ge p5, p2, :cond_11

    .line 455
    aget v2, p4, p3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 457
    aget-object v2, v0, v2

    .line 458
    aput-object v2, p1, p3

    :cond_10
    add-int/lit8 p5, p5, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_12
    move-object v0, p1

    .line 467
    :cond_13
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->readOrder:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 468
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initializeValuesForMissing()V

    return-void
.end method

.method private mapFieldsToValues(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/String;[IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            "[IZ)V"
        }
    .end annotation

    .line 550
    array-length v0, p2

    iget v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->lastFieldIndexMapped:I

    if-le v0, v1, :cond_0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 551
    invoke-direct/range {v2 .. v7}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->mapFieldIndexes(Lcom/univocity/parsers/common/Context;[Ljava/lang/Object;[Ljava/lang/String;[IZ)V

    .line 554
    :cond_0
    array-length p3, p2

    iget-object p4, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->readOrder:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    array-length p5, p4

    if-ge p3, p5, :cond_1

    array-length p3, p2

    goto :goto_0

    :cond_1
    array-length p3, p4

    :goto_0
    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p3, :cond_5

    .line 556
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->readOrder:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    aget-object v0, v0, p5

    if-eqz v0, :cond_4

    .line 559
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 561
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    invoke-virtual {p0, v0, p2, p5}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->handleConversionError(Ljava/lang/Throwable;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 565
    :cond_2
    invoke-virtual {p0, v0, p2, p5}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->toDataProcessingException(Ljava/lang/Throwable;[Ljava/lang/Object;I)Lcom/univocity/parsers/common/DataProcessingException;

    move-result-object p1

    throw p1

    :cond_3
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, p4

    const/4 p1, -0x1

    .line 562
    invoke-virtual {p0, v0, p3, p1}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->handleConversionError(Ljava/lang/Throwable;[Ljava/lang/Object;I)Z

    .line 563
    invoke-virtual {p0, v0, p2, p5}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->toDataProcessingException(Ljava/lang/Throwable;[Ljava/lang/Object;I)Lcom/univocity/parsers/common/DataProcessingException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private setupConversions(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/helpers/FieldMapping;)V
    .locals 4

    .line 253
    const-class v0, Lcom/univocity/parsers/annotations/Parsed;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAllAnnotationsInPackage(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Package;)Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Annotation;

    .line 258
    :try_start_0
    invoke-static {p1, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getConversion(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;)Lcom/univocity/parsers/conversions/Conversion;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {p0, v3, p2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->addConversion(Lcom/univocity/parsers/conversions/Conversion;Lcom/univocity/parsers/annotations/helpers/FieldMapping;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' of field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 266
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing annotation \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 270
    :cond_1
    const-class v0, Lcom/univocity/parsers/annotations/Parsed;

    invoke-static {p1, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/Parsed;

    .line 271
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Parsed;->applyDefaultConversion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "applyDefaultConversion"

    invoke-static {p1, v0, v3, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getDefaultConversion(Ljava/lang/reflect/AnnotatedElement;)Lcom/univocity/parsers/conversions/Conversion;

    move-result-object p1

    .line 275
    invoke-direct {p0, v1, p1}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->applyDefaultConversion(Lcom/univocity/parsers/conversions/Conversion;Lcom/univocity/parsers/conversions/Conversion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->addConversion(Lcom/univocity/parsers/conversions/Conversion;Lcom/univocity/parsers/annotations/helpers/FieldMapping;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected addConversion(Lcom/univocity/parsers/conversions/Conversion;Lcom/univocity/parsers/annotations/helpers/FieldMapping;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {p2}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->isMappedToIndex()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-array v0, v2, [Lcom/univocity/parsers/conversions/Conversion;

    aput-object p1, v0, v1

    .line 336
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->convertIndexes([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/fields/FieldSet;->add([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    goto :goto_0

    :cond_1
    new-array v0, v2, [Lcom/univocity/parsers/conversions/Conversion;

    aput-object p1, v0, v1

    .line 338
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->convertFields([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getFieldName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/fields/FieldSet;->add([Ljava/lang/Object;)Lcom/univocity/parsers/common/fields/FieldSet;

    :goto_0
    return-void
.end method

.method public createBean([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/Context;",
            ")TT;"
        }
    .end annotation

    .line 511
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->applyConversions([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 518
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-virtual {p0, v1, v0, p2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->mapValuesToFields(Ljava/lang/Object;[Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    .line 524
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->nestedAttributes:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p0, p1, v1, p2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->processNestedAttributes([Ljava/lang/String;Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    :cond_1
    return-object v1

    :catchall_0
    move-exception p2

    .line 520
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to instantiate class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v0
.end method

.method createNestedProcessor(Ljava/lang/annotation/Annotation;Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/FieldMapping;Lcom/univocity/parsers/annotations/HeaderTransformer;)Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class;",
            "Lcom/univocity/parsers/annotations/helpers/FieldMapping;",
            "Lcom/univocity/parsers/annotations/HeaderTransformer;",
            ")",
            "Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor<",
            "*>;"
        }
    .end annotation

    .line 183
    new-instance p1, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;

    iget-object p3, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->methodFilter:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-direct {p1, p2, p4, p3}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-object p1
.end method

.method public getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    return-object v0
.end method

.method getNestedAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/univocity/parsers/annotations/helpers/FieldMapping;",
            "Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor<",
            "*>;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->nestedAttributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->nestedAttributes:Ljava/util/Map;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->nestedAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public final initialize()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initialize([Ljava/lang/String;)V

    return-void
.end method

.method protected final initialize([Ljava/lang/String;)V
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initialized:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initialized:Z

    .line 113
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getAllFields(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/beans/PropertyWrapper;

    .line 117
    invoke-virtual {p0, v2, v1, p1}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->processField(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/common/beans/PropertyWrapper;[Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->methodFilter:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-static {v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getAnnotatedMethods(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 121
    invoke-virtual {p0, v1, v2, p1}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->processField(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/common/beans/PropertyWrapper;[Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_1
    iput-object v2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->readOrder:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    const/4 p1, -0x1

    .line 125
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->lastFieldIndexMapped:I

    .line 127
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->validateMappings()V

    :cond_2
    return-void
.end method

.method public isStrictHeaderValidationEnabled()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->strictHeaderValidationEnabled:Z

    return v0
.end method

.method mapValuesToFields(Ljava/lang/Object;[Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            "Lcom/univocity/parsers/common/Context;",
            ")V"
        }
    .end annotation

    .line 350
    array-length v0, p2

    iget v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->lastFieldIndexMapped:I

    if-le v0, v1, :cond_0

    .line 351
    array-length v0, p2

    iput v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->lastFieldIndexMapped:I

    .line 352
    invoke-interface {p3}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3}, Lcom/univocity/parsers/common/Context;->extractedFieldIndexes()[I

    move-result-object v5

    invoke-interface {p3}, Lcom/univocity/parsers/common/Context;->columnsReordered()Z

    move-result v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->mapFieldIndexes(Lcom/univocity/parsers/common/Context;[Ljava/lang/Object;[Ljava/lang/String;[IZ)V

    .line 355
    :cond_0
    array-length p3, p2

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->readOrder:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    array-length v1, v0

    if-ge p3, v1, :cond_1

    array-length p3, p2

    goto :goto_0

    :cond_1
    array-length p3, v0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_3

    .line 358
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->readOrder:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 360
    aget-object v3, p2, v1

    .line 361
    invoke-virtual {v2, p1, v3}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->write(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 365
    :cond_3
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->missing:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    if-eqz p2, :cond_5

    .line 366
    :goto_2
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->missing:[Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    array-length p3, p2

    if-ge v0, p3, :cond_5

    .line 367
    iget-object p3, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->valuesForMissing:[Ljava/lang/Object;

    aget-object p3, p3, v0

    if-eqz p3, :cond_4

    .line 369
    aget-object p2, p2, v0

    .line 370
    invoke-virtual {p2, p1, p3}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->write(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method processField(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/common/beans/PropertyWrapper;[Ljava/lang/String;)V
    .locals 10

    .line 142
    const-class v0, Lcom/univocity/parsers/annotations/Parsed;

    invoke-static {p1, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/Parsed;

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->beanClass:Ljava/lang/Class;

    iget-object v5, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->transformer:Lcom/univocity/parsers/annotations/HeaderTransformer;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;-><init>(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/common/beans/PropertyWrapper;Lcom/univocity/parsers/annotations/HeaderTransformer;[Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->processField(Lcom/univocity/parsers/annotations/helpers/FieldMapping;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->setupConversions(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/helpers/FieldMapping;)V

    .line 151
    :cond_0
    const-class v0, Lcom/univocity/parsers/annotations/Nested;

    invoke-static {p1, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/Nested;

    if-eqz v0, :cond_3

    .line 153
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Nested;->type()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "type"

    invoke-static {p1, v0, v2, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 154
    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 155
    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v1

    .line 160
    :cond_1
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Nested;->headerTransformer()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "headerTransformer"

    invoke-static {p1, v0, v3, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 161
    const-class v3, Lcom/univocity/parsers/annotations/HeaderTransformer;

    if-eq v2, v3, :cond_2

    .line 162
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Nested;->args()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "args"

    invoke-static {p1, v0, v4, v3}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 163
    const-class v4, Lcom/univocity/parsers/annotations/HeaderTransformer;

    invoke-static {v4, v2, v3}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->newInstance(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/univocity/parsers/annotations/HeaderTransformer;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move-object v8, v2

    .line 168
    new-instance v9, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;-><init>(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/common/beans/PropertyWrapper;Lcom/univocity/parsers/annotations/HeaderTransformer;[Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v0, v1, v9, v8}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->createNestedProcessor(Ljava/lang/annotation/Annotation;Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/FieldMapping;Lcom/univocity/parsers/annotations/HeaderTransformer;)Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p3}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initialize([Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->getNestedAttributes()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method protected processField(Lcom/univocity/parsers/annotations/helpers/FieldMapping;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method processNestedAttributes([Ljava/lang/String;Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->nestedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 533
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;

    invoke-virtual {v2, p1, p3}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->createBean([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 535
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    invoke-virtual {v1, p2, v2}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->write(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final reverseConversions(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/String;",
            "[I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_b

    if-eqz p2, :cond_1

    .line 588
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 591
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    aget v6, p3, v1

    add-int/2addr v6, v3

    if-le v6, v5, :cond_2

    move v5, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    :cond_3
    array-length v1, p3

    if-ge v5, v1, :cond_4

    .line 597
    array-length v5, p3

    .line 599
    :cond_4
    new-array v1, v5, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    goto/16 :goto_5

    .line 601
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 603
    iget-object v5, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, -0x1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 604
    invoke-virtual {v7}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getIndex()I

    move-result v8

    add-int/2addr v8, v3

    if-ge v6, v8, :cond_6

    .line 605
    invoke-virtual {v7}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getIndex()I

    move-result v6

    add-int/2addr v6, v3

    .line 607
    :cond_6
    invoke-virtual {v7}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 609
    :cond_7
    iget-object v5, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-ge v6, v5, :cond_8

    .line 610
    iget-object v5, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    .line 613
    :cond_8
    new-array v5, v6, [Ljava/lang/Object;

    iput-object v5, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    .line 614
    iget-object v5, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->syntheticHeaders:[Ljava/lang/String;

    if-nez v5, :cond_b

    .line 615
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->syntheticHeaders:[Ljava/lang/String;

    .line 616
    iget-object v5, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    if-ge v1, v6, :cond_b

    .line 618
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    move-object v7, v0

    .line 622
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    invoke-virtual {v7}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getFieldName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    goto :goto_3

    .line 623
    :cond_a
    iget-object v8, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->syntheticHeaders:[Ljava/lang/String;

    aput-object v7, v8, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 629
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->nestedAttributes:Ljava/util/Map;

    if-eqz v1, :cond_d

    .line 630
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 631
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    invoke-virtual {v5, p1}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 633
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;

    .line 634
    iget-object v6, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    iput-object v6, v4, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    .line 635
    invoke-virtual {v4, v5, p2, p3}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->reverseConversions(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;

    goto :goto_6

    .line 640
    :cond_d
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->syntheticHeaders:[Ljava/lang/String;

    if-eqz v1, :cond_e

    move-object p2, v1

    .line 645
    :cond_e
    :try_start_0
    iget-object v6, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->mapFieldsToValues(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/String;[IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    invoke-super {p0, v3, p1, p2, p3}, Lcom/univocity/parsers/common/DefaultConversionProcessor;->reverseConversions(Z[Ljava/lang/Object;[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 661
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    return-object p1

    :cond_f
    return-object v0

    :catchall_0
    move-exception p1

    .line 647
    instance-of p2, p1, Lcom/univocity/parsers/common/DataProcessingException;

    if-eqz p2, :cond_11

    .line 648
    check-cast p1, Lcom/univocity/parsers/common/DataProcessingException;

    .line 649
    invoke-virtual {p1}, Lcom/univocity/parsers/common/DataProcessingException;->isHandled()Z

    move-result p2

    if-eqz p2, :cond_10

    return-object v0

    .line 652
    :cond_10
    throw p1

    .line 654
    :cond_11
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->handleConversionError(Ljava/lang/Throwable;[Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_12

    return-object v0

    .line 655
    :cond_12
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->row:[Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->toDataProcessingException(Ljava/lang/Throwable;[Ljava/lang/Object;I)Lcom/univocity/parsers/common/DataProcessingException;

    move-result-object p1

    throw p1
.end method

.method public setStrictHeaderValidationEnabled(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->strictHeaderValidationEnabled:Z

    return-void
.end method

.method validateMappings()V
    .locals 9

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 203
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 205
    iget-object v4, p0, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->parsedFields:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 206
    invoke-virtual {v5}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getFieldName()Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-virtual {v5}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getIndex()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 210
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 211
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 217
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 218
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 226
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    return-void

    .line 227
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting field mappings defined in annotated class: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->getBeanClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    const-string v4, "\n\tIndex: \'"

    .line 229
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\' of  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v3

    invoke-static {v3}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->describeField(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 231
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    const-string v3, "\n\tName: \'"

    .line 232
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v2

    invoke-static {v2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->describeField(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 234
    :cond_7
    new-instance v1, Lcom/univocity/parsers/common/DataProcessingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
