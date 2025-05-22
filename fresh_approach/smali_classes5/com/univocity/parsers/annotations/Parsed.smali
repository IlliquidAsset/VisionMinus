.class public interface abstract annotation Lcom/univocity/parsers/annotations/Parsed;
.super Ljava/lang/Object;
.source "Parsed.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/univocity/parsers/annotations/Parsed;
        applyDefaultConversion = true
        defaultNullRead = "null"
        defaultNullWrite = "null"
        field = {}
        index = -0x1
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
.method public abstract applyDefaultConversion()Z
.end method

.method public abstract defaultNullRead()Ljava/lang/String;
.end method

.method public abstract defaultNullWrite()Ljava/lang/String;
.end method

.method public abstract field()[Ljava/lang/String;
.end method

.method public abstract index()I
.end method
