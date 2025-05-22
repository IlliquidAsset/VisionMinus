.class Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;
.super Ljava/lang/Object;
.source "AnnotationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnotationAttributes"
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->attributes:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$1;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 126
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    if-eq v1, p2, :cond_2

    .line 128
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne p2, v2, :cond_2

    const/4 p2, 0x1

    .line 129
    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    .line 130
    invoke-static {p2, v1, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
