.class public abstract Lcom/univocity/parsers/annotations/HeaderTransformer;
.super Ljava/lang/Object;
.source "HeaderTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformIndex(Ljava/lang/reflect/AnnotatedElement;I)I
    .locals 1

    .line 113
    instance-of v0, p1, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformIndex(Ljava/lang/reflect/Field;I)I

    move-result p1

    return p1

    .line 116
    :cond_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformIndex(Ljava/lang/reflect/Method;I)I

    move-result p1

    return p1
.end method

.method public transformIndex(Ljava/lang/reflect/Field;I)I
    .locals 0

    return p2
.end method

.method public transformIndex(Ljava/lang/reflect/Method;I)I
    .locals 0

    return p2
.end method

.method public final transformName(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 105
    instance-of v0, p1, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformName(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/annotations/HeaderTransformer;->transformName(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transformName(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public transformName(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method
