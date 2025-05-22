.class public Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;
.super Ljava/lang/Object;
.source "AnnotationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$AnnotationAttributes;,
        Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;
    }
.end annotation


# static fields
.field private static final modifiedAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->modifiedAnnotations:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final declared-synchronized getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-class v0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->modifiedAnnotations:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 82
    monitor-exit v0

    return-object p0

    .line 84
    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;->access$200(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const-class v0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 61
    monitor-exit v0

    return-object p3

    .line 63
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 65
    monitor-exit v0

    return-object p3

    .line 67
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final reset()V
    .locals 1

    .line 88
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->modifiedAnnotations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static final declared-synchronized setValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-class v0, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->modifiedAnnotations:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;-><init>(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$1;)V

    .line 42
    sget-object v2, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->modifiedAnnotations:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    invoke-static {v1, p1, p2, p3}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;->access$100(Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry$FieldAnnotations;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
