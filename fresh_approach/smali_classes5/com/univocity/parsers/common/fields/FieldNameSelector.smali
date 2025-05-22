.class public Lcom/univocity/parsers/common/fields/FieldNameSelector;
.super Lcom/univocity/parsers/common/fields/FieldSet;
.source "FieldNameSelector.java"

# interfaces
.implements Lcom/univocity/parsers/common/fields/FieldSelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/fields/FieldSet<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/univocity/parsers/common/fields/FieldSelector;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/univocity/parsers/common/fields/FieldSet;-><init>()V

    return-void
.end method


# virtual methods
.method public getFieldIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 39
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/fields/FieldNameSelector;->getFieldIndexes([Ljava/lang/String;)[I

    move-result-object p1

    aget p1, p1, v1

    return p1
.end method

.method public getFieldIndexes([Ljava/lang/String;)[I
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/univocity/parsers/common/fields/FieldNameSelector;->get()Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize(Ljava/util/Collection;)V

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 52
    invoke-static {p1, v1}, Lcom/univocity/parsers/common/ArgumentUtils;->findMissingElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 55
    array-length v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    array-length v0, v2

    array-length v2, v1

    if-ne v0, v2, :cond_1

    new-array p1, v4, [I

    return-object p1

    .line 62
    :cond_1
    array-length v0, v1

    new-array v0, v0, [I

    .line 64
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v6, v1, v3

    .line 65
    invoke-static {p1, v6}, Lcom/univocity/parsers/common/ArgumentUtils;->indexesOf([Ljava/lang/Object;Ljava/lang/Object;)[I

    move-result-object v6

    .line 67
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 68
    array-length v7, v0

    array-length v9, v6

    add-int/2addr v7, v9

    sub-int/2addr v7, v8

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 71
    :cond_2
    array-length v7, v6

    if-nez v7, :cond_3

    add-int/lit8 v6, v5, 0x1

    const/4 v7, -0x1

    .line 72
    aput v7, v0, v5

    move v5, v6

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 74
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    add-int/lit8 v8, v5, 0x1

    .line 75
    aget v9, v6, v7

    aput v9, v0, v5

    add-int/lit8 v7, v7, 0x1

    move v5, v8

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method
