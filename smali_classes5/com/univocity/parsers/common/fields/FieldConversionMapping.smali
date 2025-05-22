.class public Lcom/univocity/parsers/common/fields/FieldConversionMapping;
.super Ljava/lang/Object;
.source "FieldConversionMapping.java"


# static fields
.field private static final EMPTY_CONVERSION_ARRAY:[Lcom/univocity/parsers/conversions/Conversion;


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

.field private conversionsByIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "**>;>;>;"
        }
    .end annotation
.end field

.field private final convertAllMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/fields/AbstractConversionMapping<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldEnumConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/fields/AbstractConversionMapping<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldIndexConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/fields/AbstractConversionMapping<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldNameConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/fields/AbstractConversionMapping<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/univocity/parsers/conversions/Conversion;

    .line 32
    sput-object v0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->EMPTY_CONVERSION_ARRAY:[Lcom/univocity/parsers/conversions/Conversion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionSequence:Ljava/util/List;

    .line 41
    new-instance v1, Lcom/univocity/parsers/common/fields/FieldConversionMapping$1;

    invoke-direct {v1, p0, v0}, Lcom/univocity/parsers/common/fields/FieldConversionMapping$1;-><init>(Lcom/univocity/parsers/common/fields/FieldConversionMapping;Ljava/util/List;)V

    iput-object v1, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldNameConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    .line 48
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldConversionMapping$2;

    iget-object v1, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionSequence:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping$2;-><init>(Lcom/univocity/parsers/common/fields/FieldConversionMapping;Ljava/util/List;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldIndexConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    .line 55
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldConversionMapping$3;

    iget-object v1, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionSequence:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping$3;-><init>(Lcom/univocity/parsers/common/fields/FieldConversionMapping;Ljava/util/List;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldEnumConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    .line 63
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldConversionMapping$4;

    iget-object v1, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionSequence:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/univocity/parsers/common/fields/FieldConversionMapping$4;-><init>(Lcom/univocity/parsers/common/fields/FieldConversionMapping;Ljava/util/List;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->convertAllMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public applyConversions(ILjava/lang/String;[Z)Ljava/lang/Object;
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    .line 214
    aput-boolean v1, p3, p1

    .line 217
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/conversions/Conversion;

    .line 219
    :try_start_0
    invoke-interface {v0, p2}, Lcom/univocity/parsers/conversions/Conversion;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 225
    new-instance v1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error converting value \'{value}\' using conversion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p3}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    invoke-virtual {v1, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setColumnIndex(I)V

    .line 228
    invoke-virtual {v1}, Lcom/univocity/parsers/common/DataProcessingException;->markAsNonFatal()V

    .line 229
    throw v1

    :catch_0
    move-exception p2

    .line 221
    invoke-virtual {p2, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setColumnIndex(I)V

    .line 222
    invoke-virtual {p2}, Lcom/univocity/parsers/common/DataProcessingException;->markAsNonFatal()V

    .line 223
    throw p2

    :cond_1
    return-object p2
.end method

.method public varargs applyConversionsOnAllFields([Lcom/univocity/parsers/conversions/Conversion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->convertAllMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->registerConversions([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    return-void
.end method

.method public varargs applyConversionsOnFieldEnums([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldEnumConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->registerConversions([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs applyConversionsOnFieldIndexes([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldIndexConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->registerConversions([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs applyConversionsOnFieldNames([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/univocity/parsers/conversions/Conversion<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/univocity/parsers/common/fields/FieldSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldNameConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->registerConversions([Lcom/univocity/parsers/conversions/Conversion;)Lcom/univocity/parsers/common/fields/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method public getConversions(ILjava/lang/Class;)[Lcom/univocity/parsers/conversions/Conversion;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/univocity/parsers/conversions/Conversion;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/univocity/parsers/conversions/Conversion;

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/conversions/Conversion;

    add-int/lit8 v2, v0, 0x1

    .line 254
    aput-object v1, p2, v0

    move v0, v2

    goto :goto_0

    .line 256
    :cond_0
    const-class p1, Ljava/lang/String;

    if-ne p2, p1, :cond_1

    .line 257
    sget-object p1, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->EMPTY_CONVERSION_ARRAY:[Lcom/univocity/parsers/conversions/Conversion;

    return-object p1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/univocity/parsers/conversions/Conversion;

    const/4 v1, 0x0

    .line 260
    invoke-static {p2, v1, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getDefaultConversion(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/Parsed;)Lcom/univocity/parsers/conversions/Conversion;

    move-result-object p2

    aput-object p2, p1, v0

    .line 261
    aget-object p2, p1, v0

    if-nez p2, :cond_2

    .line 262
    sget-object p1, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->EMPTY_CONVERSION_ARRAY:[Lcom/univocity/parsers/conversions/Conversion;

    return-object p1

    :cond_2
    move-object p2, p1

    :cond_3
    return-object p2
.end method

.method public prepareExecution(Z[Ljava/lang/String;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldNameConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldEnumConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldIndexConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->convertAllMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 93
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    .line 96
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionSequence:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/fields/FieldSelector;

    .line 97
    iget-object v2, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldNameConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    iget-object v3, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    invoke-virtual {v2, p1, v1, v3, p2}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->prepareExecution(ZLcom/univocity/parsers/common/fields/FieldSelector;Ljava/util/Map;[Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldIndexConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    iget-object v3, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    invoke-virtual {v2, p1, v1, v3, p2}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->prepareExecution(ZLcom/univocity/parsers/common/fields/FieldSelector;Ljava/util/Map;[Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->fieldEnumConversionMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    iget-object v3, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    invoke-virtual {v2, p1, v1, v3, p2}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->prepareExecution(ZLcom/univocity/parsers/common/fields/FieldSelector;Ljava/util/Map;[Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->convertAllMapping:Lcom/univocity/parsers/common/fields/AbstractConversionMapping;

    iget-object v3, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    invoke-virtual {v2, p1, v1, v3, p2}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;->prepareExecution(ZLcom/univocity/parsers/common/fields/FieldSelector;Ljava/util/Map;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reverseConversions(ZILjava/lang/Object;[Z)Ljava/lang/Object;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping;->conversionsByIndex:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 163
    aput-boolean v1, p4, p2

    :cond_0
    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 168
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_3

    .line 169
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/conversions/Conversion;
    :try_end_0
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 170
    :try_start_1
    invoke-interface {v1, p3}, Lcom/univocity/parsers/conversions/Conversion;->revert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, -0x1

    move-object p4, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p4, v1

    goto :goto_2

    .line 173
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/conversions/Conversion;
    :try_end_2
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 175
    :try_start_3
    invoke-interface {v0, p3}, Lcom/univocity/parsers/conversions/Conversion;->revert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object p4, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p4, v0

    goto :goto_2

    :catchall_2
    move-exception p1

    :goto_2
    if-eqz p4, :cond_2

    .line 186
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error converting value \'{value}\' using conversion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p4, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 188
    :cond_2
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    const-string p4, "Error converting value \'{value}\'"

    invoke-direct {v0, p4, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :goto_3
    invoke-virtual {v0, p3}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v0, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setColumnIndex(I)V

    .line 192
    invoke-virtual {v0}, Lcom/univocity/parsers/common/DataProcessingException;->markAsNonFatal()V

    .line 193
    throw v0

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1, p3}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setColumnIndex(I)V

    .line 181
    invoke-virtual {p1}, Lcom/univocity/parsers/common/DataProcessingException;->markAsNonFatal()V

    .line 182
    throw p1

    :cond_3
    return-object p3
.end method
