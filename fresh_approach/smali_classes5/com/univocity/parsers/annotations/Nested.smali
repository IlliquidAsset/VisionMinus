.class public interface abstract annotation Lcom/univocity/parsers/annotations/Nested;
.super Ljava/lang/Object;
.source "Nested.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/univocity/parsers/annotations/Nested;
        args = {}
        headerTransformer = Lcom/univocity/parsers/annotations/HeaderTransformer;
        type = Ljava/lang/Object;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract args()[Ljava/lang/String;
.end method

.method public abstract headerTransformer()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/univocity/parsers/annotations/HeaderTransformer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract type()Ljava/lang/Class;
.end method
