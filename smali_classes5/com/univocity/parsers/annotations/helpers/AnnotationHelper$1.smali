.class final Lcom/univocity/parsers/annotations/helpers/AnnotationHelper$1;
.super Ljava/lang/Object;
.source "AnnotationHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getFieldSequence(Ljava/lang/Class;ZLcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/univocity/parsers/annotations/helpers/TransformedHeader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/univocity/parsers/annotations/helpers/TransformedHeader;Lcom/univocity/parsers/annotations/helpers/TransformedHeader;)I
    .locals 0

    .line 746
    invoke-virtual {p1}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getHeaderIndex()I

    move-result p1

    .line 747
    invoke-virtual {p2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getHeaderIndex()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 743
    check-cast p1, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;

    check-cast p2, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper$1;->compare(Lcom/univocity/parsers/annotations/helpers/TransformedHeader;Lcom/univocity/parsers/annotations/helpers/TransformedHeader;)I

    move-result p1

    return p1
.end method
