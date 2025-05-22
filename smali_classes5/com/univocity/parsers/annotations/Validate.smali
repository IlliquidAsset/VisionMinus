.class public interface abstract annotation Lcom/univocity/parsers/annotations/Validate;
.super Ljava/lang/Object;
.source "Validate.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/univocity/parsers/annotations/Validate;
        allowBlanks = false
        noneOf = {}
        nullable = false
        oneOf = {}
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
.method public abstract allowBlanks()Z
.end method

.method public abstract noneOf()[Ljava/lang/String;
.end method

.method public abstract nullable()Z
.end method

.method public abstract oneOf()[Ljava/lang/String;
.end method
