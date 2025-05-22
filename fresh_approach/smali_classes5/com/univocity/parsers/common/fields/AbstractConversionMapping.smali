.class abstract Lcom/univocity/parsers/common/fields/AbstractConversionMapping;
.super Ljava/lang/Object;
.source "FieldConversionMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final conversionSequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/fields/FieldSelector;",
            ">;"
        }
    .end annotation
.end field

.field private conversionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/univocity/parsers/common/fields/FieldSelector;",
            "[",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/fields/FieldSelector;",
            ">;)V"
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->conversionSequence:Ljava/util/List;

    return-void
.end method

.method private static validateDuplicates(Lcom/univocity/parsers/common/fields/FieldSelector;Ljava/util/List;[Lcom/univocity/parsers/conversions/Conversion;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/fields/FieldSelector;",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "**>;>;[",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "**>;)V"
        }
    .end annotation

    .line 368
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 369
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/univocity/parsers/conversions/Conversion;

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate conversion "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " being applied to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/univocity/parsers/common/fields/FieldSelector;->describe()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->conversionsMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract newFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;
.end method

.method public prepareExecution(ZLcom/univocity/parsers/common/fields/FieldSelector;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/univocity/parsers/common/fields/FieldSelector;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "**>;>;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 332
    iget-object p1, p0, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->conversionsMap:Ljava/util/Map;

    if-nez p1, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/univocity/parsers/conversions/Conversion;

    if-nez p1, :cond_1

    return-void

    .line 343
    :cond_1
    invoke-interface {p2, p4}, Lcom/univocity/parsers/common/fields/FieldSelector;->getFieldIndexes([Ljava/lang/String;)[I

    move-result-object p4

    if-nez p4, :cond_2

    .line 345
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-static {p4}, Lcom/univocity/parsers/common/ArgumentUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p4

    .line 347
    :cond_2
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p4, v1

    .line 348
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_3

    .line 350
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_3
    invoke-static {p2, v3, p1}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->validateDuplicates(Lcom/univocity/parsers/common/fields/FieldSelector;Ljava/util/List;[Lcom/univocity/parsers/conversions/Conversion;)V

    .line 355
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public varargs registerConversions([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Conversions"

    .line 298
    invoke-static {v0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p0}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->newFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->conversionsMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->conversionsMap:Ljava/util/Map;

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->conversionsMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object p1, p0, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->conversionSequence:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    instance-of p1, v0, Lcom/univocity/parsers/common/fields/FieldSet;

    if-eqz p1, :cond_1

    .line 308
    check-cast v0, Lcom/univocity/parsers/common/fields/FieldSet;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
