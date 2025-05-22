.class final Lcom/univocity/parsers/fixed/Lookup$1;
.super Ljava/lang/Object;
.source "Lookup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/fixed/Lookup;->getLookupFormats(Ljava/util/Map;Lcom/univocity/parsers/fixed/FixedWidthFormat;)[Lcom/univocity/parsers/fixed/Lookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/univocity/parsers/fixed/Lookup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/univocity/parsers/fixed/Lookup;Lcom/univocity/parsers/fixed/Lookup;)I
    .locals 2

    .line 88
    iget-object v0, p1, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    array-length v0, v0

    iget-object v1, p2, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    array-length p1, p1

    iget-object p2, p2, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    array-length p2, p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 84
    check-cast p1, Lcom/univocity/parsers/fixed/Lookup;

    check-cast p2, Lcom/univocity/parsers/fixed/Lookup;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/fixed/Lookup$1;->compare(Lcom/univocity/parsers/fixed/Lookup;Lcom/univocity/parsers/fixed/Lookup;)I

    move-result p1

    return p1
.end method
