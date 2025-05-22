.class public Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;
.super Lcom/univocity/parsers/common/fields/FieldSet;
.source "ExcludeFieldNameSelector.java"

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

    .line 33
    invoke-direct {p0}, Lcom/univocity/parsers/common/fields/FieldSet;-><init>()V

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "undesired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/univocity/parsers/common/fields/FieldSet;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldIndexes([Ljava/lang/String;)[I
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/fields/ExcludeFieldNameSelector;->get()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-static {v0}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize(Ljava/util/Collection;)V

    .line 51
    invoke-static {p1, v0}, Lcom/univocity/parsers/common/ArgumentUtils;->findMissingElements([Ljava/lang/Object;Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v1

    .line 52
    array-length v2, v1

    if-gtz v2, :cond_3

    .line 56
    array-length v1, p1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 59
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 60
    aget-object v4, p1, v2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 61
    aput v2, v1, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field names: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
