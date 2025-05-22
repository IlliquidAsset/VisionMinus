.class public Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;
.super Ljava/lang/Object;
.source "AnnotationHelper.java"


# static fields
.field private static final customAnnotationTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final javaLangAnnotationTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static lastAnnotationFound:Ljava/lang/annotation/Annotation;

.field private static lastProcessedAnnotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static lastProcessedElement:Ljava/lang/reflect/AnnotatedElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 995
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->javaLangAnnotationTypes:Ljava/util/Set;

    .line 996
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->customAnnotationTypes:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allFieldsIndexBasedForParsing(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->allFieldsIndexOrNameBased(ZLjava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Z

    move-result p0

    return p0
.end method

.method public static allFieldsIndexBasedForWriting(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->allFieldsIndexOrNameBased(ZLjava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Z

    move-result p0

    return p0
.end method

.method private static allFieldsIndexOrNameBased(ZLjava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    invoke-static {p1, v0, v1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getFieldSequence(Ljava/lang/Class;ZLcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;

    if-eqz v3, :cond_0

    .line 495
    invoke-virtual {v3}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {v3}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v3

    .line 499
    instance-of v4, v3, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {p2, v4}, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->reject(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 503
    :cond_2
    const-class v4, Lcom/univocity/parsers/annotations/Parsed;

    invoke-static {v3, v4}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/univocity/parsers/annotations/Parsed;

    if-eqz v4, :cond_0

    .line 507
    invoke-interface {v4}, Lcom/univocity/parsers/annotations/Parsed;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "index"

    invoke-static {v3, v4, v5, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-nez p0, :cond_4

    :cond_3
    if-ne v2, v3, :cond_5

    if-nez p0, :cond_5

    :cond_4
    return v1

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method public static allFieldsNameBasedForParsing(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 538
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->allFieldsIndexOrNameBased(ZLjava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Z

    move-result p0

    return p0
.end method

.method public static allFieldsNameBasedForWriting(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 563
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->allFieldsIndexOrNameBased(ZLjava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Z

    move-result p0

    return p0
.end method

.method public static applyFormatSettings(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 13

    .line 392
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 397
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    aget-object v5, p1, v3

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "="

    .line 401
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 402
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 406
    aget-object v5, v6, v2

    aget-object v4, v6, v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    :cond_2
    new-instance p0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal format setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' among: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 410
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/univocity/parsers/common/beans/BeanHelper;->getPropertyDescriptors(Ljava/lang/Class;)[Lcom/univocity/parsers/common/beans/PropertyWrapper;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_9

    aget-object v5, p1, v3

    .line 411
    invoke-virtual {v5}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getName()Ljava/lang/String;

    move-result-object v6

    .line 412
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 414
    invoke-static {p0, v5, v6}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->invokeSetter(Ljava/lang/Object;Lcom/univocity/parsers/common/beans/PropertyWrapper;Ljava/lang/String;)V

    :cond_4
    const-string v6, "decimalFormatSymbols"

    .line 417
    invoke-virtual {v5}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 418
    new-instance v6, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v6}, Ljava/text/DecimalFormatSymbols;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/univocity/parsers/common/beans/BeanHelper;->getPropertyDescriptors(Ljava/lang/Class;)[Lcom/univocity/parsers/common/beans/PropertyWrapper;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v11, v7, v9

    .line 422
    invoke-virtual {v11}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 424
    invoke-static {v6, v11, v12}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->invokeSetter(Ljava/lang/Object;Lcom/univocity/parsers/common/beans/PropertyWrapper;Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    if-eqz v10, :cond_8

    .line 430
    invoke-virtual {v5}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v7, :cond_7

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 432
    invoke-virtual {v7, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 434
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No write method defined for property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 438
    :try_start_2
    new-instance v1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to configure decimal symbols of formatter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :catch_0
    nop

    .line 446
    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 447
    :cond_a
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find properties in formatter of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static deriveHeaderNamesFromFields(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 603
    invoke-static {p0, v0, v1, p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getFieldSequence(Ljava/lang/Class;ZLcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;

    move-result-object p0

    .line 604
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 606
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;

    if-nez v0, :cond_0

    .line 608
    sget-object p0, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 610
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static describeElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
    .locals 3

    .line 683
    instance-of v0, p0, Ljava/lang/reflect/Field;

    const-string v1, "\'"

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attribute \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 686
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of class "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getDeclaringClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extractLocale([Ljava/lang/String;)Ljava/util/Locale;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 261
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 262
    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    aget-object v2, p0, v1

    const-string v3, "locale="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    aget-object v2, p0, v1

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    new-instance v3, Lcom/univocity/parsers/common/input/DefaultCharAppender;

    const/16 v4, 0x64

    const-string v5, ""

    invoke-direct {v3, v4, v5, v0}, Lcom/univocity/parsers/common/input/DefaultCharAppender;-><init>(ILjava/lang/String;I)V

    .line 272
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v4}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_1

    .line 274
    :cond_0
    invoke-interface {v3}, Lcom/univocity/parsers/common/input/CharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    .line 275
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v5}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_2

    .line 277
    :cond_1
    invoke-interface {v3}, Lcom/univocity/parsers/common/input/CharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    .line 278
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v6}, Lcom/univocity/parsers/common/input/CharAppender;->append(C)V

    goto :goto_3

    .line 280
    :cond_2
    invoke-interface {v3}, Lcom/univocity/parsers/common/input/CharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 282
    aput-object v2, p0, v1

    .line 283
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v4, v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static findAllAnnotationsInPackage(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Package;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Package;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAllAnnotationsInPackage(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Package;Ljava/util/ArrayList;Ljava/util/Set;)V

    return-object v0
.end method

.method private static findAllAnnotationsInPackage(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Package;Ljava/util/ArrayList;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Package;",
            "Ljava/util/ArrayList<",
            "-",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 1030
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const/4 v0, 0x0

    .line 1032
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 1033
    aget-object v1, p0, v0

    .line 1034
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    :cond_0
    invoke-static {v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->isCustomAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1038
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAllAnnotationsInPackage(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Package;Ljava/util/ArrayList;Ljava/util/Set;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/util/Set;Ljava/util/Stack;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TA;>;",
            "Ljava/util/Set<",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Stack<",
            "Ljava/lang/annotation/Annotation;",
            ">;)TA;"
        }
    .end annotation

    .line 974
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 975
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 976
    aget-object v2, p0, v1

    .line 977
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    :cond_1
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 982
    aget-object v1, p0, v0

    .line 983
    invoke-static {v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->isCustomAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 984
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/util/Set;Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v2

    .line 985
    invoke-virtual {p3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    const-class v0, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;

    monitor-enter v0

    if-eqz p0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 891
    :cond_0
    :try_start_0
    sget-object v1, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->lastProcessedElement:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->lastProcessedAnnotationType:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 892
    sget-object p0, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->lastAnnotationFound:Ljava/lang/annotation/Annotation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 895
    :cond_1
    :try_start_1
    sput-object p0, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->lastProcessedElement:Ljava/lang/reflect/AnnotatedElement;

    .line 896
    sput-object p1, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->lastProcessedAnnotationType:Ljava/lang/Class;

    .line 898
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 900
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v2, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/util/Set;Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    if-eqz p1, :cond_b

    .line 901
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 906
    :cond_2
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 907
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Annotation;

    .line 908
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/annotation/Annotation;

    .line 910
    :goto_0
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    .line 911
    const-class v9, Lcom/univocity/parsers/annotations/Copy;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/univocity/parsers/annotations/Copy;

    if-eqz v9, :cond_9

    .line 913
    invoke-interface {v9}, Lcom/univocity/parsers/annotations/Copy;->to()Ljava/lang/Class;

    move-result-object v10

    .line 915
    invoke-interface {v9}, Lcom/univocity/parsers/annotations/Copy;->property()Ljava/lang/String;

    move-result-object v9

    .line 916
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 917
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 922
    :cond_4
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v3, v11}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    goto :goto_2

    .line 926
    :cond_5
    invoke-static {v2, v8}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->invoke(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v11

    .line 929
    :goto_2
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    .line 930
    invoke-static {v10, v9}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotationMethodType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 931
    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-nez v13, :cond_6

    const/4 v13, 0x1

    .line 932
    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    .line 933
    invoke-static {v12, v6, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v11, v12

    .line 937
    :cond_6
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v12

    if-ne v10, v12, :cond_7

    .line 938
    invoke-static {p0, p1, v9, v11}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->setValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 940
    :cond_7
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/Stack;

    invoke-direct {v13}, Ljava/util/Stack;-><init>()V

    invoke-static {p0, v10, v12, v13}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/util/Set;Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/annotation/Annotation;

    if-eqz v12, :cond_8

    .line 942
    invoke-static {p0, v12, v9, v11}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->setValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 944
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t process @Copy annotation on \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Annotation \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' not used in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Unable to process field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 952
    :cond_a
    sput-object p1, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->lastAnnotationFound:Ljava/lang/annotation/Annotation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    monitor-exit v0

    return-object p1

    .line 902
    :cond_b
    :goto_4
    :try_start_2
    sput-object p1, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->lastAnnotationFound:Ljava/lang/annotation/Annotation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 903
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_c
    :goto_5
    const/4 p0, 0x0

    .line 888
    monitor-exit v0

    return-object p0
.end method

.method private static findAnnotationMethodType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 957
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 958
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 959
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findHeadersAnnotation(Ljava/lang/Class;)Lcom/univocity/parsers/annotations/Headers;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/univocity/parsers/annotations/Headers;"
        }
    .end annotation

    .line 627
    :cond_0
    const-class v0, Lcom/univocity/parsers/annotations/Headers;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/Headers;

    if-eqz v0, :cond_1

    return-object v0

    .line 632
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 633
    invoke-static {v3}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findHeadersAnnotation(Ljava/lang/Class;)Lcom/univocity/parsers/annotations/Headers;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllFields(Ljava/lang/Class;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Field;",
            "Lcom/univocity/parsers/common/beans/PropertyWrapper;",
            ">;"
        }
    .end annotation

    .line 809
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 811
    :try_start_0
    invoke-static {p0}, Lcom/univocity/parsers/common/beans/BeanHelper;->getPropertyDescriptors(Ljava/lang/Class;)[Lcom/univocity/parsers/common/beans/PropertyWrapper;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 812
    invoke-virtual {v5}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 814
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 821
    :catch_0
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 824
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 827
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 828
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 829
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 832
    :cond_3
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 835
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 836
    const-class v4, Ljava/lang/Object;

    if-ne p0, v4, :cond_2

    :cond_5
    return-object v3
.end method

.method public static getAnnotatedMethods(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 859
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 860
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 861
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 862
    invoke-static {v9}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->isCustomAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 863
    invoke-virtual {p1, v5}, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->reject(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 866
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 871
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 872
    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    :cond_5
    return-object v0
.end method

.method public static getConversion(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/univocity/parsers/conversions/Conversion;
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-static {p0, v0, p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getConversion(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;)Lcom/univocity/parsers/conversions/Conversion;

    move-result-object p0

    return-object p0
.end method

.method private static getConversion(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;)Lcom/univocity/parsers/conversions/Conversion;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 109
    :cond_0
    :try_start_0
    const-class v1, Lcom/univocity/parsers/annotations/Parsed;

    invoke-static {p1, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/annotations/Parsed;

    .line 110
    :goto_0
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    .line 112
    invoke-static {p1, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getNullReadValue(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {p1, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getNullWriteValue(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Ljava/lang/String;

    move-result-object v7

    .line 115
    const-class v1, Lcom/univocity/parsers/annotations/NullString;

    if-ne v2, v1, :cond_1

    .line 116
    check-cast p2, Lcom/univocity/parsers/annotations/NullString;

    const-string v0, "nulls"

    .line 117
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/NullString;->nulls()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 118
    invoke-static {p2}, Lcom/univocity/parsers/conversions/Conversions;->toNull([Ljava/lang/String;)Lcom/univocity/parsers/conversions/NullStringConversion;

    move-result-object p0

    return-object p0

    .line 119
    :cond_1
    const-class v1, Lcom/univocity/parsers/annotations/Validate;

    if-ne v2, v1, :cond_2

    .line 120
    check-cast p2, Lcom/univocity/parsers/annotations/Validate;

    const-string v0, "nullable"

    .line 122
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Validate;->nullable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "allowBlanks"

    .line 123
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Validate;->allowBlanks()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "oneOf"

    .line 124
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Validate;->oneOf()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v3, "noneOf"

    .line 125
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Validate;->noneOf()[Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v3, v4}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 127
    invoke-static {v0, v1, v2, p2}, Lcom/univocity/parsers/conversions/Conversions;->validate(ZZ[Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/ValidatedConversion;

    move-result-object p0

    return-object p0

    .line 128
    :cond_2
    const-class v1, Lcom/univocity/parsers/annotations/EnumOptions;

    if-ne v2, v1, :cond_7

    .line 129
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1
    :try_end_0
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    const-string p2, "Invalid "

    if-nez p1, :cond_3

    .line 131
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/univocity/parsers/annotations/EnumOptions;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " instance for converting class "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Not an enum type."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/univocity/parsers/annotations/EnumOptions;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " annotation on "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->describeElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Attribute must be an enum type."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_4
    check-cast p2, Lcom/univocity/parsers/annotations/EnumOptions;

    const-string v1, "customElement"

    .line 137
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/EnumOptions;->customElement()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v8, v0

    goto :goto_1

    :cond_5
    move-object v8, v1

    :goto_1
    if-nez v3, :cond_6

    goto :goto_2

    .line 143
    :cond_6
    invoke-static {p0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    :goto_2
    move-object v6, v0

    const-string v0, "selectors"

    .line 144
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/EnumOptions;->selectors()[Lcom/univocity/parsers/conversions/EnumSelector;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, [Lcom/univocity/parsers/conversions/EnumSelector;

    .line 145
    new-instance p2, Lcom/univocity/parsers/conversions/EnumConversion;

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/univocity/parsers/conversions/EnumConversion;-><init>(Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)V

    return-object p2

    .line 146
    :cond_7
    const-class v1, Lcom/univocity/parsers/annotations/Trim;

    if-ne v2, v1, :cond_9

    .line 147
    check-cast p2, Lcom/univocity/parsers/annotations/Trim;

    const-string v0, "length"

    .line 148
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Trim;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 150
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->trim()Lcom/univocity/parsers/conversions/TrimConversion;

    move-result-object p0

    return-object p0

    .line 152
    :cond_8
    invoke-static {p2}, Lcom/univocity/parsers/conversions/Conversions;->trim(I)Lcom/univocity/parsers/conversions/TrimConversion;

    move-result-object p0

    return-object p0

    .line 154
    :cond_9
    const-class v1, Lcom/univocity/parsers/annotations/LowerCase;

    if-ne v2, v1, :cond_a

    .line 155
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toLowerCase()Lcom/univocity/parsers/conversions/LowerCaseConversion;

    move-result-object p0

    return-object p0

    .line 156
    :cond_a
    const-class v1, Lcom/univocity/parsers/annotations/UpperCase;

    if-ne v2, v1, :cond_b

    .line 157
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toUpperCase()Lcom/univocity/parsers/conversions/UpperCaseConversion;

    move-result-object p0

    return-object p0

    .line 158
    :cond_b
    const-class v1, Lcom/univocity/parsers/annotations/Replace;

    if-ne v2, v1, :cond_c

    .line 159
    check-cast p2, Lcom/univocity/parsers/annotations/Replace;

    const-string v0, "expression"

    .line 160
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Replace;->expression()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "replacement"

    .line 161
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Replace;->replacement()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 162
    invoke-static {v0, p2}, Lcom/univocity/parsers/conversions/Conversions;->replace(Ljava/lang/String;Ljava/lang/String;)Lcom/univocity/parsers/conversions/RegexConversion;

    move-result-object p0

    return-object p0

    .line 163
    :cond_c
    const-class v1, Lcom/univocity/parsers/annotations/BooleanString;

    if-ne v2, v1, :cond_11

    .line 164
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_e

    const-class v1, Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p0, v1, :cond_e

    const-string p2, " instead of boolean."

    if-nez p1, :cond_d

    .line 166
    :try_start_2
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid  usage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/univocity/parsers/annotations/BooleanString;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Got type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_d
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid annotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->describeElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_e
    check-cast p2, Lcom/univocity/parsers/annotations/BooleanString;

    const-string v1, "falseStrings"

    .line 172
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/BooleanString;->falseStrings()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "trueStrings"

    .line 173
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/BooleanString;->trueStrings()[Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v2, v4}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    if-nez v3, :cond_f

    goto :goto_3

    .line 174
    :cond_f
    invoke-static {v3, p2, v1}, Lcom/univocity/parsers/conversions/BooleanConversion;->getBoolean(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_10

    .line 176
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_10

    .line 177
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 180
    :cond_10
    invoke-static {v0, v7, p2, v1}, Lcom/univocity/parsers/conversions/Conversions;->toBoolean(Ljava/lang/Boolean;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/BooleanConversion;

    move-result-object p0

    return-object p0

    .line 181
    :cond_11
    const-class v1, Lcom/univocity/parsers/annotations/Format;

    if-ne v2, v1, :cond_1e

    .line 182
    check-cast p2, Lcom/univocity/parsers/annotations/Format;

    const-string v1, "formats"

    .line 183
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Format;->formats()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "options"

    .line 184
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Format;->options()[Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v2, v4}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 186
    invoke-static {p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->extractLocale([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 190
    const-class v4, Ljava/math/BigDecimal;

    const/4 v5, 0x0

    if-ne p0, v4, :cond_13

    if-nez v3, :cond_12

    move-object v2, v0

    goto :goto_4

    .line 191
    :cond_12
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 192
    :goto_4
    invoke-static {v2, v7, v1}, Lcom/univocity/parsers/conversions/Conversions;->formatToBigDecimal(Ljava/math/BigDecimal;Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;

    move-result-object v1

    goto/16 :goto_8

    .line 193
    :cond_13
    const-class v4, Ljava/lang/Number;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v4, :cond_14

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v4, :cond_14

    goto :goto_7

    :cond_14
    if-eqz v3, :cond_17

    const-string v4, "now"

    .line 199
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 200
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    goto :goto_5

    .line 202
    :cond_15
    array-length v4, v1

    if-eqz v4, :cond_16

    .line 205
    new-instance v4, Ljava/text/SimpleDateFormat;

    aget-object v6, v1, v5

    invoke-direct {v4, v6, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 206
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    goto :goto_5

    .line 203
    :cond_16
    new-instance p2, Lcom/univocity/parsers/common/DataProcessingException;

    const-string v0, "No format defined"

    invoke-direct {p2, v0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_17
    move-object v4, v0

    .line 210
    :goto_5
    const-class v6, Ljava/util/Date;

    if-ne v6, p0, :cond_18

    .line 211
    invoke-static {v2, v4, v7, v1}, Lcom/univocity/parsers/conversions/Conversions;->toDate(Ljava/util/Locale;Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/DateConversion;

    move-result-object v1

    goto :goto_8

    .line 212
    :cond_18
    const-class v6, Ljava/util/Calendar;

    if-ne v6, p0, :cond_1a

    if-eqz v4, :cond_19

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 216
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_6

    :cond_19
    move-object v6, v0

    .line 218
    :goto_6
    invoke-static {v2, v6, v7, v1}, Lcom/univocity/parsers/conversions/Conversions;->toCalendar(Ljava/util/Locale;Ljava/util/Calendar;Ljava/lang/String;[Ljava/lang/String;)Lcom/univocity/parsers/conversions/CalendarConversion;

    move-result-object v1

    goto :goto_8

    :cond_1a
    move-object v1, v0

    goto :goto_8

    .line 194
    :cond_1b
    :goto_7
    invoke-static {v1}, Lcom/univocity/parsers/conversions/Conversions;->formatToNumber([Ljava/lang/String;)Lcom/univocity/parsers/conversions/NumericConversion;

    move-result-object v1

    .line 195
    move-object v2, v1

    check-cast v2, Lcom/univocity/parsers/conversions/NumericConversion;

    invoke-virtual {v2, p0}, Lcom/univocity/parsers/conversions/NumericConversion;->setNumberType(Ljava/lang/Class;)V

    :goto_8
    if-eqz v1, :cond_1f

    .line 223
    array-length v0, p2

    if-lez v0, :cond_1d

    .line 225
    instance-of v0, v1, Lcom/univocity/parsers/conversions/FormattedConversion;

    if-eqz v0, :cond_1c

    .line 226
    move-object v0, v1

    check-cast v0, Lcom/univocity/parsers/conversions/FormattedConversion;

    invoke-interface {v0}, Lcom/univocity/parsers/conversions/FormattedConversion;->getFormatterObjects()[Ljava/lang/Object;

    move-result-object v0

    .line 227
    array-length v2, v0

    :goto_9
    if-ge v5, v2, :cond_1d

    aget-object v3, v0, v5

    .line 228
    invoke-static {v3, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->applyFormatSettings(Ljava/lang/Object;[Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 231
    :cond_1c
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Options \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not supported by conversion of type \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'. It must implement "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/univocity/parsers/conversions/FormattedConversion;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    return-object v1

    .line 237
    :cond_1e
    const-class v1, Lcom/univocity/parsers/annotations/Convert;

    if-ne v2, v1, :cond_1f

    .line 238
    check-cast p2, Lcom/univocity/parsers/annotations/Convert;

    const-string v0, "args"

    .line 239
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Convert;->args()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "conversionClass"

    .line 240
    invoke-interface {p2}, Lcom/univocity/parsers/annotations/Convert;->conversionClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 241
    const-class v1, Lcom/univocity/parsers/conversions/Conversion;

    invoke-static {v1, p2, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->newInstance(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/univocity/parsers/conversions/Conversion;

    return-object p2

    .line 244
    :cond_1f
    const-class p2, Ljava/lang/String;

    if-ne p0, p2, :cond_21

    if-nez v3, :cond_20

    if-eqz v7, :cond_21

    .line 245
    :cond_20
    new-instance p2, Lcom/univocity/parsers/conversions/ToStringConversion;

    invoke-direct {p2, v3, v7}, Lcom/univocity/parsers/conversions/ToStringConversion;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p2

    :cond_21
    return-object v0

    :catchall_0
    move-exception p2

    if-nez p1, :cond_22

    .line 253
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error identifying conversions to apply over type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 255
    :cond_22
    new-instance p0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error identifying conversions to apply over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->describeElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catch_0
    move-exception p0

    .line 250
    throw p0
.end method

.method public static getConversion(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;)Lcom/univocity/parsers/conversions/Conversion;
    .locals 1

    .line 90
    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getConversion(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;)Lcom/univocity/parsers/conversions/Conversion;

    move-result-object p0

    return-object p0
.end method

.method public static getDeclaringClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 666
    instance-of v0, p0, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 667
    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 669
    :cond_0
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultConversion(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Lcom/univocity/parsers/conversions/Conversion;
    .locals 5

    .line 322
    invoke-static {p1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getNullReadValue(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eq p0, v1, :cond_1d

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_0

    goto/16 :goto_a

    .line 329
    :cond_0
    const-class v1, Ljava/lang/Character;

    if-eq p0, v1, :cond_19

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1

    goto/16 :goto_8

    .line 335
    :cond_1
    const-class v1, Ljava/lang/Byte;

    if-eq p0, v1, :cond_17

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_2

    goto/16 :goto_7

    .line 338
    :cond_2
    const-class v1, Ljava/lang/Short;

    if-eq p0, v1, :cond_15

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    goto/16 :goto_6

    .line 341
    :cond_3
    const-class v1, Ljava/lang/Integer;

    if-eq p0, v1, :cond_13

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    goto/16 :goto_5

    .line 344
    :cond_4
    const-class v1, Ljava/lang/Long;

    if-eq p0, v1, :cond_11

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    goto/16 :goto_4

    .line 347
    :cond_5
    const-class v1, Ljava/lang/Float;

    if-eq p0, v1, :cond_f

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    goto :goto_3

    .line 350
    :cond_6
    const-class v1, Ljava/lang/Double;

    if-eq p0, v1, :cond_d

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    goto :goto_1

    .line 353
    :cond_7
    const-class v1, Ljava/math/BigInteger;

    if-ne p0, v1, :cond_9

    .line 354
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toBigInteger()Lcom/univocity/parsers/conversions/BigIntegerConversion;

    move-result-object p0

    if-nez v0, :cond_8

    goto/16 :goto_b

    .line 355
    :cond_8
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v2, v1

    goto/16 :goto_b

    .line 356
    :cond_9
    const-class v1, Ljava/math/BigDecimal;

    if-ne p0, v1, :cond_b

    .line 357
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toBigDecimal()Lcom/univocity/parsers/conversions/BigDecimalConversion;

    move-result-object p0

    if-nez v0, :cond_a

    goto/16 :goto_b

    .line 358
    :cond_a
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_b
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 360
    invoke-static {p0}, Lcom/univocity/parsers/conversions/Conversions;->toEnum(Ljava/lang/Class;)Lcom/univocity/parsers/conversions/EnumConversion;

    move-result-object p0

    goto/16 :goto_b

    :cond_c
    move-object p0, v2

    goto/16 :goto_c

    .line 351
    :cond_d
    :goto_1
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toDouble()Lcom/univocity/parsers/conversions/DoubleConversion;

    move-result-object p0

    if-nez v0, :cond_e

    goto/16 :goto_b

    .line 352
    :cond_e
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto/16 :goto_b

    .line 348
    :cond_f
    :goto_3
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toFloat()Lcom/univocity/parsers/conversions/FloatConversion;

    move-result-object p0

    if-nez v0, :cond_10

    goto/16 :goto_b

    .line 349
    :cond_10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_2

    .line 345
    :cond_11
    :goto_4
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toLong()Lcom/univocity/parsers/conversions/LongConversion;

    move-result-object p0

    if-nez v0, :cond_12

    goto/16 :goto_b

    .line 346
    :cond_12
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 342
    :cond_13
    :goto_5
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toInteger()Lcom/univocity/parsers/conversions/IntegerConversion;

    move-result-object p0

    if-nez v0, :cond_14

    goto :goto_b

    .line 343
    :cond_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 339
    :cond_15
    :goto_6
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toShort()Lcom/univocity/parsers/conversions/ShortConversion;

    move-result-object p0

    if-nez v0, :cond_16

    goto :goto_b

    .line 340
    :cond_16
    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    goto :goto_2

    .line 336
    :cond_17
    :goto_7
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toByte()Lcom/univocity/parsers/conversions/ByteConversion;

    move-result-object p0

    if-nez v0, :cond_18

    goto :goto_b

    .line 337
    :cond_18
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_2

    .line 330
    :cond_19
    :goto_8
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toChar()Lcom/univocity/parsers/conversions/CharacterConversion;

    move-result-object p0

    if-eqz v0, :cond_1b

    .line 331
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1a

    goto :goto_9

    .line 332
    :cond_1a
    new-instance p0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid default value for character \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'. It should contain one character only."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_9
    if-nez v0, :cond_1c

    goto :goto_b

    :cond_1c
    const/4 v1, 0x0

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_2

    .line 327
    :cond_1d
    :goto_a
    invoke-static {}, Lcom/univocity/parsers/conversions/Conversions;->toBoolean()Lcom/univocity/parsers/conversions/BooleanConversion;

    move-result-object p0

    if-nez v0, :cond_1e

    goto :goto_b

    .line 328
    :cond_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    :goto_b
    move-object v4, v2

    move-object v2, p0

    move-object p0, v4

    :goto_c
    if-eqz v2, :cond_1f

    .line 364
    invoke-virtual {v2, p0}, Lcom/univocity/parsers/conversions/ObjectConversion;->setValueIfStringIsNull(Ljava/lang/Object;)V

    .line 365
    invoke-static {p1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getNullWriteValue(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/univocity/parsers/conversions/ObjectConversion;->setValueIfObjectIsNull(Ljava/lang/String;)V

    :cond_1f
    return-object v2
.end method

.method public static getDefaultConversion(Ljava/lang/reflect/AnnotatedElement;)Lcom/univocity/parsers/conversions/Conversion;
    .locals 2

    .line 380
    const-class v0, Lcom/univocity/parsers/annotations/Parsed;

    invoke-static {p0, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/Parsed;

    .line 381
    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getDefaultConversion(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Lcom/univocity/parsers/conversions/Conversion;

    move-result-object p0

    return-object p0
.end method

.method public static final getDefaultPrimitiveValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1051
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1052
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1053
    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-wide/16 v0, 0x0

    .line 1054
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1055
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 1056
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1057
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-wide/16 v0, 0x0

    .line 1058
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1059
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const/4 p0, 0x0

    .line 1060
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1061
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 1062
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1063
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 1064
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 1065
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 1066
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFieldSequence(Ljava/lang/Class;ZLcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Z",
            "Lcom/univocity/parsers/annotations/HeaderTransformer;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/annotations/helpers/TransformedHeader;",
            ">;"
        }
    .end annotation

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 741
    invoke-static {p0, p1, v0, p2, p3}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getFieldSequence(Ljava/lang/Class;ZLjava/util/List;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;

    move-result-object p0

    .line 743
    new-instance p1, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper$1;

    invoke-direct {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper$1;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 753
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, -0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/lit8 p2, p2, 0x1

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    if-eq p3, p2, :cond_0

    .line 759
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_2

    const/4 v0, 0x0

    .line 760
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 762
    :cond_2
    invoke-static {p0, p3, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private static getFieldSequence(Ljava/lang/Class;ZLjava/util/List;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/univocity/parsers/annotations/HeaderTransformer;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/annotations/helpers/TransformedHeader;",
            ">;"
        }
    .end annotation

    .line 770
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 772
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 774
    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getAllFields(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    move v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, p3

    move-object v6, p4

    .line 775
    invoke-static/range {v0 .. v6}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->processAnnotations(Ljava/lang/reflect/AnnotatedElement;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    goto :goto_0

    .line 778
    :cond_0
    invoke-static {p0, p4}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getAnnotatedMethods(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    move v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, p3

    move-object v6, p4

    .line 779
    invoke-static/range {v0 .. v6}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->processAnnotations(Ljava/lang/reflect/AnnotatedElement;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    goto :goto_1

    .line 782
    :cond_1
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 783
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_2
    if-ltz p0, :cond_3

    .line 785
    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;

    .line 786
    invoke-virtual {p1}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p1

    invoke-interface {v8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 788
    invoke-interface {v7, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 789
    invoke-interface {v7, p0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 791
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-object v7
.end method

.method public static getName(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
    .locals 1

    .line 674
    instance-of v0, p0, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 675
    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 677
    :cond_0
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNullReadValue(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    invoke-interface {p1}, Lcom/univocity/parsers/annotations/Parsed;->defaultNullRead()Ljava/lang/String;

    move-result-object v0

    const-string v1, "defaultNullRead"

    invoke-static {p0, p1, v1, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNullValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "null"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "\'null\'"

    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method private static getNullWriteValue(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    invoke-interface {p1}, Lcom/univocity/parsers/annotations/Parsed;->defaultNullWrite()Ljava/lang/String;

    move-result-object v0

    const-string v1, "defaultNullWrite"

    invoke-static {p0, p1, v1, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelectedIndexes(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)[Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    invoke-static {p0, v1, v2, p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getFieldSequence(Ljava/lang/Class;ZLcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;

    if-nez v2, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getHeaderIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 585
    sget-object v4, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    if-ne p1, v4, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 586
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate field index \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' found in attribute \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTargetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 588
    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Integer;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public static getType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 647
    instance-of v0, p0, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 648
    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 650
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 651
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 652
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 p0, 0x0

    .line 653
    aget-object p0, v1, p0

    return-object p0

    .line 654
    :cond_1
    array-length v1, v1

    const-string v2, "Method "

    if-gt v1, v3, :cond_3

    .line 658
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 659
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    return-object v0

    .line 662
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->describeElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must return a value if it has no input parameter"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->describeElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot have multiple parameters"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static invoke(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 967
    :try_start_0
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 969
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read value from annotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static invokeSetter(Ljava/lang/Object;Lcom/univocity/parsers/common/beans/PropertyWrapper;Ljava/lang/String;)V
    .locals 7

    .line 452
    invoke-virtual {p1}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "Cannot set property \'"

    const-string v2, "\' of formatter \'"

    if-eqz v0, :cond_b

    .line 458
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v5, 0x0

    .line 460
    const-class v6, Ljava/lang/String;

    if-ne v3, v6, :cond_0

    move-object v5, p2

    goto :goto_3

    .line 462
    :cond_0
    const-class v6, Ljava/lang/Integer;

    if-eq v3, v6, :cond_8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_1

    goto :goto_2

    .line 464
    :cond_1
    const-class v6, Ljava/lang/Character;

    if-eq v3, v6, :cond_7

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_2

    goto :goto_1

    .line 466
    :cond_2
    const-class v6, Ljava/util/Currency;

    if-ne v3, v6, :cond_3

    .line 467
    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    goto :goto_3

    .line 468
    :cond_3
    const-class v6, Ljava/lang/Boolean;

    if-eq v3, v6, :cond_6

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v6, :cond_4

    goto :goto_0

    .line 470
    :cond_4
    const-class v6, Ljava/util/TimeZone;

    if-ne v3, v6, :cond_5

    .line 471
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    goto :goto_3

    .line 472
    :cond_5
    const-class v6, Ljava/text/DateFormatSymbols;

    if-ne v3, v6, :cond_9

    .line 473
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v5

    goto :goto_3

    .line 469
    :cond_6
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_3

    .line 465
    :cond_7
    :goto_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_3

    .line 463
    :cond_8
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_9
    :goto_3
    if-eqz v5, :cond_a

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v4

    .line 482
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 484
    new-instance v1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", with \'{parameterValue}\' (converted from \'{value}\')"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "parameterValue"

    .line 485
    invoke-virtual {v1, p0, v5}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    invoke-virtual {v1, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 487
    throw v1

    .line 476
    :cond_a
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Cannot convert \'{value}\' to instance of "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 478
    throw v0

    .line 454
    :cond_b
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' to \'{value}\'. No setter defined"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 456
    throw v0
.end method

.method private static isCustomAnnotation(Ljava/lang/annotation/Annotation;)Z
    .locals 4

    .line 999
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p0

    .line 1000
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->customAnnotationTypes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1003
    :cond_0
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->javaLangAnnotationTypes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 1006
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "java.lang.annotation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->javaLangAnnotationTypes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v2

    .line 1010
    :cond_2
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->customAnnotationTypes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static newInstance(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Unexpected error instantiating custom "

    const-string v1, " class \'"

    .line 291
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/16 v3, 0x29

    const-string v4, "\' ("

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :try_start_0
    new-array v5, v2, [Ljava/lang/Class;

    .line 295
    const-class v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v7

    .line 296
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 307
    new-instance v2, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v2

    .line 298
    array-length p2, p2

    if-nez p2, :cond_0

    .line 300
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    .line 302
    :catch_2
    new-instance p2, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, v2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 305
    :cond_0
    new-instance p2, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find a public constructor with a String[] parameter in custom "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, v2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 292
    :cond_1
    new-instance p2, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a valid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " class: \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static processAnnotations(Ljava/lang/reflect/AnnotatedElement;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/annotations/helpers/TransformedHeader;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/annotations/helpers/TransformedHeader;",
            ">;>;",
            "Lcom/univocity/parsers/annotations/HeaderTransformer;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")V"
        }
    .end annotation

    .line 692
    const-class v0, Lcom/univocity/parsers/annotations/Parsed;

    invoke-static {p0, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/Parsed;

    if-eqz v0, :cond_2

    .line 694
    new-instance v0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;

    invoke-direct {v0, p0, p5}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;-><init>(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/HeaderTransformer;)V

    .line 696
    sget-object v1, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    if-ne p6, v1, :cond_1

    invoke-virtual {v0}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getHeaderIndex()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getHeaderIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Duplicate field index \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getHeaderIndex()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\' found in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->describeElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 700
    :cond_1
    :goto_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-virtual {v0}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getHeaderIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 705
    const-class p1, Lcom/univocity/parsers/annotations/Nested;

    invoke-static {p0, p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/annotations/Nested;

    if-eqz p1, :cond_5

    .line 707
    new-instance v0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;-><init>(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/HeaderTransformer;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-interface {p1}, Lcom/univocity/parsers/annotations/Nested;->type()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "type"

    invoke-static {p0, p1, v0, p3}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    .line 709
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_3

    .line 710
    invoke-static {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object p3

    .line 713
    :cond_3
    invoke-interface {p1}, Lcom/univocity/parsers/annotations/Nested;->headerTransformer()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "headerTransformer"

    invoke-static {p0, p1, v1, v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 714
    const-class v1, Lcom/univocity/parsers/annotations/HeaderTransformer;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    .line 715
    invoke-interface {p1}, Lcom/univocity/parsers/annotations/Nested;->args()[Ljava/lang/String;

    move-result-object p5

    const-string v1, "args"

    invoke-static {p0, p1, v1, p5}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 716
    const-class p5, Lcom/univocity/parsers/annotations/HeaderTransformer;

    invoke-static {p5, v0, p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->newInstance(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/annotations/HeaderTransformer;

    .line 717
    invoke-static {p3, v2, p2, p1, p6}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getFieldSequence(Ljava/lang/Class;ZLjava/util/List;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 719
    :cond_4
    invoke-static {p3, v2, p2, p5, p6}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getFieldSequence(Ljava/lang/Class;ZLjava/util/List;Lcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method
