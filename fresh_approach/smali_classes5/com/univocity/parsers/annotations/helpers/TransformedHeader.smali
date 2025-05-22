.class public Lcom/univocity/parsers/annotations/helpers/TransformedHeader;
.super Ljava/lang/Object;
.source "TransformedHeader.java"


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private index:I

.field private final method:Ljava/lang/reflect/Method;

.field private final target:Ljava/lang/reflect/AnnotatedElement;

.field private final transformer:Lcom/univocity/parsers/annotations/HeaderTransformer;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/AnnotatedElement;Lcom/univocity/parsers/annotations/HeaderTransformer;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 36
    iput v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->index:I

    .line 39
    instance-of v0, p1, Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->field:Ljava/lang/reflect/Field;

    .line 41
    iput-object v1, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->method:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 43
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->method:Ljava/lang/reflect/Method;

    .line 44
    iput-object v1, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->field:Ljava/lang/reflect/Field;

    .line 46
    :goto_0
    iput-object p1, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->target:Ljava/lang/reflect/AnnotatedElement;

    .line 47
    iput-object p2, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->transformer:Lcom/univocity/parsers/annotations/HeaderTransformer;

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-static {v0}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->describeElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderIndex()I
    .locals 5

    .line 92
    iget v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->index:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->target:Ljava/lang/reflect/AnnotatedElement;

    const-class v1, Lcom/univocity/parsers/annotations/Parsed;

    invoke-static {v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/Parsed;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 95
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Parsed;->index()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "index"

    invoke-static {v2, v0, v4, v3}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->index:I

    if-eq v0, v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->transformer:Lcom/univocity/parsers/annotations/HeaderTransformer;

    if-eqz v1, :cond_2

    .line 98
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->field:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v1, v2, v0}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformIndex(Ljava/lang/reflect/Field;I)I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->index:I

    goto :goto_0

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2, v0}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformIndex(Ljava/lang/reflect/Method;I)I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->index:I

    goto :goto_0

    .line 106
    :cond_1
    iput v1, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->index:I

    .line 109
    :cond_2
    :goto_0
    iget v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->index:I

    return v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->target:Ljava/lang/reflect/AnnotatedElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 61
    :cond_0
    const-class v2, Lcom/univocity/parsers/annotations/Parsed;

    invoke-static {v0, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/Parsed;

    if-eqz v0, :cond_2

    .line 63
    iget-object v1, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->target:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Parsed;->field()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "field"

    invoke-static {v1, v0, v3, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 65
    array-length v1, v0

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTargetName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 68
    aget-object v0, v0, v1

    :goto_0
    move-object v1, v0

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTargetName()Ljava/lang/String;

    move-result-object v1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->transformer:Lcom/univocity/parsers/annotations/HeaderTransformer;

    if-eqz v0, :cond_4

    .line 76
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->field:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformName(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2, v1}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformName(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public getTarget()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->target:Ljava/lang/reflect/AnnotatedElement;

    return-object v0
.end method

.method public getTargetName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->target:Ljava/lang/reflect/AnnotatedElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReadOly()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isWriteOnly()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
