.class public Lcom/univocity/parsers/annotations/helpers/FieldMapping;
.super Ljava/lang/Object;
.source "FieldMapping.java"


# instance fields
.field private accessible:Z

.field private applyDefault:Ljava/lang/Boolean;

.field private final beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaultPrimitiveValue:Ljava/lang/Object;

.field private fieldName:Ljava/lang/String;

.field private fieldType:Ljava/lang/Class;

.field private index:I

.field private final parentClass:Ljava/lang/Class;

.field private final primitive:Z

.field private primitiveNumber:Z

.field private final readMethod:Ljava/lang/reflect/Method;

.field private final target:Ljava/lang/reflect/AnnotatedElement;

.field private final writeMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/common/beans/PropertyWrapper;Lcom/univocity/parsers/annotations/HeaderTransformer;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Lcom/univocity/parsers/common/beans/PropertyWrapper;",
            "Lcom/univocity/parsers/annotations/HeaderTransformer;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->applyDefault:Ljava/lang/Boolean;

    .line 56
    iput-object p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->beanClass:Ljava/lang/Class;

    .line 57
    iput-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    .line 58
    instance-of v1, p2, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p3}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->readMethod:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_1

    .line 60
    invoke-virtual {p3}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->writeMethod:Ljava/lang/reflect/Method;

    goto :goto_2

    .line 62
    :cond_2
    move-object p3, p2

    check-cast p3, Ljava/lang/reflect/Method;

    .line 63
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_3

    move-object v1, p3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->readMethod:Ljava/lang/reflect/Method;

    .line 64
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_4

    move-object v0, p3

    :cond_4
    iput-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->writeMethod:Ljava/lang/reflect/Method;

    :goto_2
    if-eqz p2, :cond_5

    .line 70
    invoke-static {p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getType(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object p1

    .line 71
    invoke-static {p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getDeclaringClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->parentClass:Ljava/lang/Class;

    goto :goto_4

    .line 72
    :cond_5
    iget-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->writeMethod:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length p2, p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_6

    .line 73
    iget-object p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->writeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 74
    iget-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->writeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->parentClass:Ljava/lang/Class;

    goto :goto_4

    .line 76
    :cond_6
    const-class p2, Ljava/lang/Object;

    .line 77
    iget-object p3, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->readMethod:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_7

    .line 78
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->parentClass:Ljava/lang/Class;

    goto :goto_3

    .line 80
    :cond_7
    iput-object p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->parentClass:Ljava/lang/Class;

    :goto_3
    move-object p1, p2

    .line 84
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    iput-boolean p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->primitive:Z

    .line 85
    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getDefaultPrimitiveValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->defaultPrimitiveValue:Ljava/lang/Object;

    .line 86
    instance-of p2, p2, Ljava/lang/Number;

    iput-boolean p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->primitiveNumber:Z

    .line 87
    invoke-direct {p0, p4, p5}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->determineFieldMapping(Lcom/univocity/parsers/annotations/HeaderTransformer;[Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    return-void
.end method

.method private determineFieldMapping(Lcom/univocity/parsers/annotations/HeaderTransformer;[Ljava/lang/String;)V
    .locals 10

    .line 92
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    const-class v1, Lcom/univocity/parsers/annotations/Parsed;

    invoke-static {v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/Parsed;

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 96
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Parsed;->index()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "index"

    invoke-static {v2, v0, v4, v3}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    if-ltz v2, :cond_1

    const/4 p2, 0x0

    .line 99
    iput-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 101
    iget-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p1, p2, v2}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformIndex(Ljava/lang/reflect/AnnotatedElement;I)I

    move-result p1

    iput p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Parsed;->field()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "field"

    invoke-static {v2, v0, v4, v3}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 108
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    if-eqz p2, :cond_5

    move-object v5, v1

    const/4 v3, 0x0

    .line 109
    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_6

    .line 110
    aget-object v6, p2, v3

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 115
    :goto_1
    array-length v8, v2

    if-ge v7, v8, :cond_4

    .line 116
    aget-object v8, v2, v7

    .line 117
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v5, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move-object v5, v1

    .line 124
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 125
    array-length p2, v2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    aget-object p2, v2, v4

    move-object v1, p2

    goto :goto_3

    :cond_8
    move-object v1, v5

    .line 129
    :cond_9
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 130
    iget-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-static {p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getName(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_a
    iput-object v1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldName:Ljava/lang/String;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 137
    iget p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    if-ltz p2, :cond_b

    .line 138
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p1, v0, p2}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformIndex(Ljava/lang/reflect/AnnotatedElement;I)I

    move-result p1

    iput p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    goto :goto_4

    :cond_b
    if-eqz v1, :cond_c

    .line 140
    iget-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p1, p2, v1}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformName(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldName:Ljava/lang/String;

    :cond_c
    :goto_4
    return-void
.end method

.method private read(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 297
    invoke-direct {p0}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->setAccessible()V

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->readMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->readMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 306
    :cond_1
    new-instance p2, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get value from field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setAccessible()V
    .locals 3

    .line 234
    iget-boolean v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->accessible:Z

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    instance-of v1, v0, Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0

    .line 238
    :cond_0
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 240
    :goto_0
    iput-boolean v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->accessible:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public canWrite(Ljava/lang/Object;)Z
    .locals 3

    .line 270
    iget-boolean v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->primitive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return v1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 275
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 276
    iget-boolean p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->primitiveNumber:Z

    return p1

    .line 277
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 278
    iget-object p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 279
    :cond_4
    instance-of p1, p1, Ljava/lang/Character;

    if-eqz p1, :cond_6

    .line 280
    iget-object p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_6
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    check-cast p1, Lcom/univocity/parsers/annotations/helpers/FieldMapping;

    .line 156
    iget v1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    iget v2, p1, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    if-eq v1, v2, :cond_2

    return v0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    iget-object v2, p1, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldName:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_0
    return v0

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->beanClass:Ljava/lang/Class;

    iget-object p1, p1, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->beanClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldParent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->parentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    return v0
.end method

.method public getTarget()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget v1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget-object v1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 174
    iget-object v1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->beanClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isMappedToField()Z
    .locals 1

    .line 193
    iget v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMappedToIndex()Z
    .locals 1

    .line 184
    iget v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->read(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-static {v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->describeElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 319
    invoke-direct {p0}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->setAccessible()V

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->primitive:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-nez p2, :cond_2

    .line 323
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->applyDefault:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 324
    invoke-direct {p0, p1, v1}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->read(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 325
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->defaultPrimitiveValue:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->applyDefault:Ljava/lang/Boolean;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->applyDefault:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v2, :cond_1

    .line 328
    iget-object p2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->defaultPrimitiveValue:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->defaultPrimitiveValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_8

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 333
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    .line 334
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    .line 335
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 336
    :cond_3
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    .line 337
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    .line 338
    :cond_4
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_5

    .line 339
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    .line 340
    :cond_5
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_6

    .line 341
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    .line 342
    :cond_6
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_7

    .line 343
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    goto :goto_0

    .line 344
    :cond_7
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->fieldType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_8

    .line 345
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    .line 349
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->writeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 350
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->writeMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 352
    :cond_9
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->target:Ljava/lang/reflect/AnnotatedElement;

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 355
    instance-of v0, p1, Lcom/univocity/parsers/common/DataProcessingException;

    if-nez v0, :cond_c

    if-nez p2, :cond_a

    const/4 v0, 0x0

    goto :goto_2

    .line 358
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_b

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set value \'{value}\' of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' to field "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 364
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to set value \'null\' to field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/univocity/parsers/annotations/helpers/FieldMapping;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_3
    new-instance v1, Lcom/univocity/parsers/common/DataProcessingException;

    invoke-direct {v1, v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    invoke-virtual {v1}, Lcom/univocity/parsers/common/DataProcessingException;->markAsNonFatal()V

    .line 368
    invoke-virtual {v1, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 369
    throw v1

    .line 356
    :cond_c
    check-cast p1, Lcom/univocity/parsers/common/DataProcessingException;

    throw p1
.end method
