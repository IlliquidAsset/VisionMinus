.class Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;
.super Ljava/lang/Object;
.source "AnnotationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldAnnotations"
.end annotation


# instance fields
.field private annotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;->annotations:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$1;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;->setValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;->getValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;->annotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    invoke-static {p1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->access$500(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private setValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;->annotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;-><init>(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$1;)V

    .line 98
    iget-object v1, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;->annotations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    invoke-static {v0, p2, p3}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->access$400(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
