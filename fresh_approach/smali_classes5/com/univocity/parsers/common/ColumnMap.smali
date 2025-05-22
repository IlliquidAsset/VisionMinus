.class public Lcom/univocity/parsers/common/ColumnMap;
.super Ljava/lang/Object;
.source "ColumnMap.java"


# instance fields
.field private columnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lcom/univocity/parsers/common/Context;

.field private enumMap:[I

.field private extractedIndexes:[I

.field private normalizedColumnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Lcom/univocity/parsers/common/ParserOutput;


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/Context;Lcom/univocity/parsers/common/ParserOutput;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->extractedIndexes:[I

    .line 37
    iput-object p1, p0, Lcom/univocity/parsers/common/ColumnMap;->context:Lcom/univocity/parsers/common/Context;

    .line 38
    iput-object p2, p0, Lcom/univocity/parsers/common/ColumnMap;->output:Lcom/univocity/parsers/common/ParserOutput;

    return-void
.end method

.method private validateHeader(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/univocity/parsers/common/ColumnMap;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 105
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Header name cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header name cannot be null. Use one of the available column names: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/common/ColumnMap;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public indexOf(Ljava/lang/Enum;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->enumMap:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/ColumnMap;->validateHeader(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->enumMap:[I

    if-nez v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array p1, v2, [I

    .line 127
    iput-object p1, p0, Lcom/univocity/parsers/common/ColumnMap;->enumMap:[I

    return v1

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    .line 133
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 134
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 135
    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 139
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/univocity/parsers/common/ColumnMap;->enumMap:[I

    .line 142
    iget-object v3, p0, Lcom/univocity/parsers/common/ColumnMap;->output:Lcom/univocity/parsers/common/ParserOutput;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/univocity/parsers/common/ParserOutput;->getFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;

    move-result-object v3

    .line 143
    :goto_1
    iget-object v5, p0, Lcom/univocity/parsers/common/ColumnMap;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v5}, Lcom/univocity/parsers/common/Context;->columnsReordered()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v3

    .line 147
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 148
    aget-object v3, v1, v2

    .line 149
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-static {v0, v5, v4}, Lcom/univocity/parsers/common/ArgumentUtils;->indexOf([Ljava/lang/String;Ljava/lang/String;Lcom/univocity/parsers/common/fields/FieldSelector;)I

    move-result v5

    .line 151
    iget-object v6, p0, Lcom/univocity/parsers/common/ColumnMap;->enumMap:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v5, v6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->enumMap:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/ColumnMap;->validateHeader(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 55
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/ColumnMap;->normalizedColumnMap:Ljava/util/Map;

    return v1

    .line 61
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    .line 63
    iget-object v2, p0, Lcom/univocity/parsers/common/ColumnMap;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v2}, Lcom/univocity/parsers/common/Context;->extractedFieldIndexes()[I

    move-result-object v2

    iput-object v2, p0, Lcom/univocity/parsers/common/ColumnMap;->extractedIndexes:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 66
    iget-object v2, p0, Lcom/univocity/parsers/common/ColumnMap;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v2}, Lcom/univocity/parsers/common/Context;->columnsReordered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/common/ColumnMap;->extractedIndexes:[I

    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 68
    aget v2, v2, v3

    .line 69
    aget-object v2, v0, v2

    .line 70
    iget-object v4, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/univocity/parsers/common/ColumnMap;->extractedIndexes:[I

    array-length v2, v2

    if-ge v3, v2, :cond_4

    .line 74
    iget-object v2, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    aget-object v4, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    :cond_3
    :goto_2
    array-length v2, v0

    if-ge v3, v2, :cond_4

    .line 79
    iget-object v2, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    aget-object v4, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 83
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/univocity/parsers/common/ColumnMap;->normalizedColumnMap:Ljava/util/Map;

    .line 84
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 86
    iget-object v3, p0, Lcom/univocity/parsers/common/ColumnMap;->normalizedColumnMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    .line 94
    iget-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->normalizedColumnMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    return v1

    .line 99
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->columnMap:Ljava/util/Map;

    .line 159
    iput-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->normalizedColumnMap:Ljava/util/Map;

    .line 160
    iput-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->enumMap:[I

    .line 161
    iput-object v0, p0, Lcom/univocity/parsers/common/ColumnMap;->extractedIndexes:[I

    return-void
.end method
