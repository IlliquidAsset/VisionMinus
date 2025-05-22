.class public interface abstract annotation Lcom/univocity/parsers/annotations/FixedWidth;
.super Ljava/lang/Object;
.source "FixedWidth.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/univocity/parsers/annotations/FixedWidth;
        alignment = .enum Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;
        from = -0x1
        padding = ' '
        to = -0x1
        value = -0x1
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
.method public abstract alignment()Lcom/univocity/parsers/fixed/FieldAlignment;
.end method

.method public abstract from()I
.end method

.method public abstract padding()C
.end method

.method public abstract to()I
.end method

.method public abstract value()I
.end method
