.class Lcom/univocity/parsers/common/record/RecordImpl;
.super Ljava/lang/Object;
.source "RecordImpl.java"

# interfaces
.implements Lcom/univocity/parsers/common/record/Record;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/record/Record;"
    }
.end annotation


# instance fields
.field private final data:[Ljava/lang/String;

.field private final metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/record/RecordMetaDataImpl<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/String;Lcom/univocity/parsers/common/record/RecordMetaDataImpl;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    return-void
.end method

.method private buildSelection([I)[I
    .locals 2

    .line 358
    array-length v0, p1

    if-nez v0, :cond_0

    .line 359
    iget-object p1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 361
    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private buildSelection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 351
    array-length v0, p1

    if-nez v0, :cond_0

    .line 352
    iget-object p1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->headers()[Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ltz p2, :cond_2

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    .line 146
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum length can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs buildSelection(Ljava/lang/Class;[Ljava/lang/Enum;)[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 368
    array-length v0, p2

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Ljava/lang/Enum;

    :cond_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs fillEnumMap(Ljava/util/Map;[Ljava/lang/Enum;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;[TT;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 410
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 411
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v2}, Lcom/univocity/parsers/common/record/RecordImpl;->getString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public varargs fillEnumObjectMap(Ljava/util/Map;[Ljava/lang/Enum;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;[TT;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 451
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->buildSelection(Ljava/lang/Class;[Ljava/lang/Enum;)[Ljava/lang/Enum;

    move-result-object p2

    const/4 v0, 0x0

    .line 452
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 453
    aget-object v1, p2, v0

    iget-object v2, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v3, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    aget-object v4, p2, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public varargs fillFieldMap(Ljava/util/Map;[Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->buildSelection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 393
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 394
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v2}, Lcom/univocity/parsers/common/record/RecordImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public varargs fillFieldObjectMap(Ljava/util/Map;[Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->buildSelection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 434
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 435
    aget-object v1, p2, v0

    iget-object v2, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v3, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    aget-object v4, p2, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public varargs fillIndexMap(Ljava/util/Map;[I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;[I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->buildSelection([I)[I

    move-result-object p2

    const/4 v0, 0x0

    .line 402
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 403
    aget v1, p2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {p0, v2}, Lcom/univocity/parsers/common/record/RecordImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public varargs fillIndexObjectMap(Ljava/util/Map;[I)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;[I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 442
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->buildSelection([I)[I

    move-result-object p2

    const/4 v0, 0x0

    .line 443
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 444
    aget v1, p2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v3, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    aget v4, p2, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/math/BigDecimal;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public varargs getBigDecimal(ILjava/lang/String;[Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 7

    .line 316
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/math/BigDecimal;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public getBigDecimal(Ljava/lang/Enum;)Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/math/BigDecimal;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public varargs getBigDecimal(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/math/BigDecimal;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/math/BigDecimal;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public varargs getBigDecimal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 7

    .line 306
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/math/BigDecimal;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public getBigInteger(I)Ljava/math/BigInteger;
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/math/BigInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1
.end method

.method public varargs getBigInteger(ILjava/lang/String;[Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 7

    .line 301
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/math/BigInteger;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1
.end method

.method public getBigInteger(Ljava/lang/Enum;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/math/BigInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1
.end method

.method public varargs getBigInteger(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/math/BigInteger;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1
.end method

.method public getBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/math/BigInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1
.end method

.method public varargs getBigInteger(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 7

    .line 291
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/math/BigInteger;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getBoolean(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .line 286
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object p3, v6, v2

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getBoolean(Ljava/lang/Enum;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getBoolean(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object p3, v6, v2

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .line 276
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object p3, v6, v2

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getByte(I)Ljava/lang/Byte;
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Byte;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs getByte(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Byte;
    .locals 7

    .line 166
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Byte;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public getByte(Ljava/lang/Enum;)Ljava/lang/Byte;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Byte;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs getByte(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Byte;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Byte;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public getByte(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Byte;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs getByte(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Byte;
    .locals 7

    .line 156
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Byte;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public getCalendar(I)Ljava/util/Calendar;
    .locals 4

    .line 605
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/util/Calendar;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public varargs getCalendar(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;
    .locals 7

    .line 346
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/util/Calendar;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public getCalendar(Ljava/lang/Enum;)Ljava/util/Calendar;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/util/Calendar;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public varargs getCalendar(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/util/Calendar;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public getCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/util/Calendar;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public varargs getCalendar(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;
    .locals 7

    .line 336
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/util/Calendar;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public getChar(I)Ljava/lang/Character;
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Character;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    return-object p1
.end method

.method public getChar(Ljava/lang/Enum;)Ljava/lang/Character;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Character;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Character;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    return-object p1
.end method

.method public getChar(Ljava/lang/String;)Ljava/lang/Character;
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Character;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    return-object p1
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 4

    .line 590
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/util/Date;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public varargs getDate(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    .line 331
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/util/Date;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public getDate(Ljava/lang/Enum;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/util/Date;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public varargs getDate(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Date;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/util/Date;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .line 580
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/util/Date;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public varargs getDate(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    .line 321
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/util/Date;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public getDouble(I)Ljava/lang/Double;
    .locals 4

    .line 575
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Double;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs getDouble(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Double;
    .locals 7

    .line 241
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Double;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public getDouble(Ljava/lang/Enum;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Double;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs getDouble(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Double;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Double;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4

    .line 565
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Double;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs getDouble(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Double;
    .locals 7

    .line 231
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Double;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public getFloat(I)Ljava/lang/Float;
    .locals 4

    .line 560
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public varargs getFloat(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Float;
    .locals 7

    .line 226
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Float;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public getFloat(Ljava/lang/Enum;)Ljava/lang/Float;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public varargs getFloat(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Float;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Float;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 4

    .line 550
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public varargs getFloat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Float;
    .locals 7

    .line 216
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Float;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public getInt(I)Ljava/lang/Integer;
    .locals 4

    .line 530
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs getInt(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    .line 196
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getInt(Ljava/lang/Enum;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs getInt(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs getInt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    .line 186
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs getLong(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Long;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public getLong(Ljava/lang/Enum;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs getLong(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Long;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs getLong(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 7

    .line 201
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Long;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public getMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    return-object v0
.end method

.method public getShort(I)Ljava/lang/Short;
    .locals 4

    .line 515
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Short;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs getShort(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/Short;
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Short;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public getShort(Ljava/lang/Enum;)Ljava/lang/Short;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Short;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs getShort(Ljava/lang/Enum;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Short;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Short;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public getShort(Ljava/lang/String;)Ljava/lang/Short;
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v2, Ljava/lang/Short;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs getShort(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Short;
    .locals 7

    .line 171
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const-class v3, Ljava/lang/Short;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/Enum;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs getValue(ILjava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;ILjava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs getValue(ILjava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;ILjava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs getValue(Ljava/lang/Enum;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum<",
            "*>;TT;)TT;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs getValue(Ljava/lang/Enum;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum<",
            "*>;TT;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs getValue(Ljava/lang/String;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getObjectValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs getValue(Ljava/lang/String;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;[",
            "Lcom/univocity/parsers/conversions/Conversion;",
            ")TT;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->metaData:Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->getValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Lcom/univocity/parsers/conversions/Conversion;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    return-object v0
.end method

.method public varargs getValues([I)[Ljava/lang/String;
    .locals 4

    .line 647
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 649
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/univocity/parsers/common/record/RecordImpl;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public varargs getValues([Ljava/lang/Enum;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 656
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 658
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/univocity/parsers/common/record/RecordImpl;->getString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public varargs getValues([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 638
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 640
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/univocity/parsers/common/record/RecordImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs toEnumMap(Ljava/lang/Class;[Ljava/lang/Enum;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[TT;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->fillEnumMap(Ljava/util/Map;[Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs toEnumObjectMap(Ljava/lang/Class;[Ljava/lang/Enum;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[TT;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Lcom/univocity/parsers/common/record/RecordImpl;->fillEnumObjectMap(Ljava/util/Map;[Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs toFieldMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/record/RecordImpl;->fillFieldMap(Ljava/util/Map;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs toFieldObjectMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/record/RecordImpl;->fillFieldObjectMap(Ljava/util/Map;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs toIndexMap([I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/record/RecordImpl;->fillIndexMap(Ljava/util/Map;[I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs toIndexObjectMap([I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/record/RecordImpl;->fillIndexObjectMap(Ljava/util/Map;[I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 612
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    const-string v0, "[]"

    return-object v0

    .line 615
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 616
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x2c

    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    :cond_2
    iget-object v2, p0, Lcom/univocity/parsers/common/record/RecordImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
