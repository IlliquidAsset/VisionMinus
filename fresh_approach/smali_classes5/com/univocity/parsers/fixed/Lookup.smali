.class Lcom/univocity/parsers/fixed/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# instance fields
.field final alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

.field final fieldNames:[Ljava/lang/String;

.field final ignore:[Z

.field final lengths:[I

.field final paddings:[C

.field final value:[C

.field final wildcard:C


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Lcom/univocity/parsers/fixed/FixedWidthFormat;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    .line 33
    invoke-virtual {p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldLengths()[I

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/fixed/Lookup;->lengths:[I

    .line 34
    invoke-virtual {p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldAlignments()[Lcom/univocity/parsers/fixed/FieldAlignment;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/fixed/Lookup;->alignments:[Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 35
    invoke-virtual {p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldNames()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/fixed/Lookup;->fieldNames:[Ljava/lang/String;

    .line 36
    invoke-virtual {p2, p3}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldPaddings(Lcom/univocity/parsers/fixed/FixedWidthFormat;)[C

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/fixed/Lookup;->paddings:[C

    .line 37
    invoke-virtual {p3}, Lcom/univocity/parsers/fixed/FixedWidthFormat;->getLookupWildcard()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/fixed/Lookup;->wildcard:C

    .line 38
    invoke-virtual {p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldsToIgnore()[Z

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/fixed/Lookup;->ignore:[Z

    return-void
.end method

.method static calculateMaxFieldLengths(Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;Ljava/util/Map;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            ">;)[I"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldLengths()[I

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/fixed/FixedWidthFields;

    .line 118
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldLengths()[I

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/fixed/FixedWidthFields;

    .line 122
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldLengths()[I

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 131
    array-length v1, p2

    if-ge p0, v1, :cond_3

    .line 132
    array-length p0, p2

    goto :goto_2

    .line 136
    :cond_4
    new-array p1, p0, [I

    const/4 p2, 0x0

    .line 137
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_5

    .line 140
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 141
    aget v3, v1, v2

    .line 142
    aget v4, p1, v2

    if-ge v4, v3, :cond_6

    .line 143
    aput v3, p1, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-object p1

    .line 126
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot determine field lengths to use."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static varargs calculateMaxLookupLength([[Lcom/univocity/parsers/fixed/Lookup;)I
    .locals 9

    .line 98
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    if-eqz v4, :cond_1

    .line 100
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 101
    iget-object v7, v7, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 102
    array-length v3, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method static getLookupFormats(Ljava/util/Map;Lcom/univocity/parsers/fixed/FixedWidthFormat;)[Lcom/univocity/parsers/fixed/Lookup;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            ">;",
            "Lcom/univocity/parsers/fixed/FixedWidthFormat;",
            ")[",
            "Lcom/univocity/parsers/fixed/Lookup;"
        }
    .end annotation

    .line 75
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/univocity/parsers/fixed/Lookup;

    const/4 v1, 0x0

    .line 80
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 81
    new-instance v4, Lcom/univocity/parsers/fixed/Lookup;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/univocity/parsers/fixed/FixedWidthFields;

    invoke-direct {v4, v5, v2, p1}, Lcom/univocity/parsers/fixed/Lookup;-><init>(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Lcom/univocity/parsers/fixed/FixedWidthFormat;)V

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 84
    :cond_1
    new-instance p0, Lcom/univocity/parsers/fixed/Lookup$1;

    invoke-direct {p0}, Lcom/univocity/parsers/fixed/Lookup$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method static registerLookahead(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ahead"

    .line 55
    invoke-static {v0, p0, p1, p2}, Lcom/univocity/parsers/fixed/Lookup;->registerLookup(Ljava/lang/String;Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;)V

    return-void
.end method

.method static registerLookbehind(Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            ">;)V"
        }
    .end annotation

    const-string v0, "behind"

    .line 59
    invoke-static {v0, p0, p1, p2}, Lcom/univocity/parsers/fixed/Lookup;->registerLookup(Ljava/lang/String;Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;)V

    return-void
.end method

.method private static registerLookup(Ljava/lang/String;Ljava/lang/String;Lcom/univocity/parsers/fixed/FixedWidthFields;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/fixed/FixedWidthFields;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 71
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 68
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Lengths of fields associated to look"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be null"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Look"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value cannot be null"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method matches([C)Z
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    array-length v0, v0

    array-length v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/fixed/Lookup;->value:[C

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 46
    aget-char v1, v1, v0

    .line 47
    iget-char v3, p0, Lcom/univocity/parsers/fixed/Lookup;->wildcard:C

    if-eq v1, v3, :cond_1

    aget-char v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
