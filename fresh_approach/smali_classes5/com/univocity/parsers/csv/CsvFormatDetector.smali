.class abstract Lcom/univocity/parsers/csv/CsvFormatDetector;
.super Ljava/lang/Object;
.source "CsvFormatDetector.java"

# interfaces
.implements Lcom/univocity/parsers/common/input/InputAnalysisProcess;


# instance fields
.field private final MAX_ROW_SAMPLES:I

.field private allowedDelimiters:[C

.field private final comment:C

.field private final normalizedNewLine:C

.field private final suggestedDelimiter:C

.field private final whitespaceRangeStart:I


# direct methods
.method constructor <init>(ILcom/univocity/parsers/csv/CsvParserSettings;I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/univocity/parsers/csv/CsvFormatDetector;->MAX_ROW_SAMPLES:I

    .line 46
    iput p3, p0, Lcom/univocity/parsers/csv/CsvFormatDetector;->whitespaceRangeStart:I

    .line 47
    invoke-virtual {p2}, Lcom/univocity/parsers/csv/CsvParserSettings;->getDelimitersForDetection()[C

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvFormatDetector;->allowedDelimiters:[C

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 49
    array-length v0, p1

    if-lez v0, :cond_0

    .line 50
    aget-char p1, p1, p3

    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvFormatDetector;->suggestedDelimiter:C

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Lcom/univocity/parsers/csv/CsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvFormat;->getDelimiter()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvFormatDetector;->suggestedDelimiter:C

    new-array p1, p3, [C

    .line 53
    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvFormatDetector;->allowedDelimiters:[C

    .line 56
    :goto_0
    invoke-virtual {p2}, Lcom/univocity/parsers/csv/CsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvFormat;->getNormalizedNewline()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvFormatDetector;->normalizedNewLine:C

    .line 57
    invoke-virtual {p2}, Lcom/univocity/parsers/csv/CsvParserSettings;->getFormat()Lcom/univocity/parsers/common/Format;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/csv/CsvFormat;

    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvFormat;->getComment()C

    move-result p1

    iput-char p1, p0, Lcom/univocity/parsers/csv/CsvFormatDetector;->comment:C

    return-void
.end method

.method private calculateTotals(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 65
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 69
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 73
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getChar(Ljava/util/Map;Ljava/util/Map;CZ)C
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;CZ)C"
        }
    .end annotation

    if-eqz p3, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    .line 301
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz p3, :cond_2

    if-le v2, v0, :cond_3

    :cond_2
    if-nez p3, :cond_1

    if-lt v2, v0, :cond_1

    .line 304
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v0, v2, :cond_7

    .line 307
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 308
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-eqz p3, :cond_4

    .line 311
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_6

    :cond_4
    if-nez p3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_1

    goto :goto_2

    .line 314
    :cond_5
    invoke-static {v1}, Lcom/univocity/parsers/csv/CsvFormatDetector;->isSymbol(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    :goto_2
    move p2, v1

    goto :goto_1

    :cond_7
    move p2, v1

    move v0, v2

    goto :goto_1

    :cond_8
    return p2
.end method

.method private static increment(Ljava/util/Map;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;C)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 247
    invoke-static {p0, p1, v0}, Lcom/univocity/parsers/csv/CsvFormatDetector;->increment(Ljava/util/Map;CI)V

    return-void
.end method

.method private static increment(Ljava/util/Map;CI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;CI)V"
        }
    .end annotation

    .line 258
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 262
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static isSymbol(C)Z
    .locals 1

    .line 327
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static max(Ljava/util/Map;Ljava/util/Map;C)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;C)C"
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    invoke-static {p0, p1, p2, v0}, Lcom/univocity/parsers/csv/CsvFormatDetector;->getChar(Ljava/util/Map;Ljava/util/Map;CZ)C

    move-result p0

    return p0
.end method

.method private static min(Ljava/util/Map;Ljava/util/Map;C)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;C)C"
        }
    .end annotation

    const/4 v0, 0x1

    .line 274
    invoke-static {p0, p1, p2, v0}, Lcom/univocity/parsers/csv/CsvFormatDetector;->getChar(Ljava/util/Map;Ljava/util/Map;CZ)C

    move-result p0

    return p0
.end method


# virtual methods
.method abstract apply(CCC)V
.end method

.method public execute([CI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 83
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 84
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 85
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 86
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v9, v2, :cond_10

    .line 96
    aget-char v7, v1, v9

    const/16 v15, 0xd

    if-eqz v10, :cond_2

    .line 98
    iget-char v14, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->comment:C

    if-ne v7, v14, :cond_2

    :cond_0
    add-int/2addr v9, v8

    if-ge v9, v2, :cond_1

    .line 100
    aget-char v7, v1, v9

    if-eq v7, v15, :cond_1

    const/16 v14, 0xa

    if-eq v7, v14, :cond_1

    .line 101
    iget-char v14, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->normalizedNewLine:C

    if-ne v7, v14, :cond_0

    :cond_1
    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_2
    const/16 v14, 0x22

    if-eq v7, v14, :cond_9

    const/16 v14, 0x27

    if-ne v7, v14, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v11, :cond_4

    goto :goto_1

    .line 147
    :cond_4
    invoke-static {v7}, Lcom/univocity/parsers/csv/CsvFormatDetector;->isSymbol(C)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 148
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {v4, v7}, Lcom/univocity/parsers/csv/CsvFormatDetector;->increment(Ljava/util/Map;C)V

    goto :goto_2

    :cond_5
    if-eq v7, v15, :cond_6

    const/16 v10, 0xa

    if-eq v7, v10, :cond_6

    .line 150
    iget-char v10, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->normalizedNewLine:C

    if-ne v7, v10, :cond_8

    :cond_6
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 152
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    iget v10, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->MAX_ROW_SAMPLES:I

    if-ne v7, v10, :cond_7

    const/16 v8, 0x22

    goto/16 :goto_7

    .line 156
    :cond_7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x1

    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    :goto_2
    const/4 v7, 0x1

    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    :goto_3
    const/16 v14, 0x20

    if-ne v11, v7, :cond_d

    const/16 v8, 0x22

    if-ne v7, v8, :cond_a

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v12, v12, 0x1

    :goto_4
    add-int/lit8 v7, v9, 0x1

    if-ge v7, v2, :cond_c

    .line 117
    aget-char v7, v1, v7

    .line 118
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_b

    if-gt v7, v14, :cond_c

    iget v8, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->whitespaceRangeStart:I

    if-ge v8, v7, :cond_c

    const/16 v8, 0xa

    if-eq v7, v8, :cond_c

    if-eq v7, v15, :cond_c

    :cond_b
    add-int/lit8 v7, v9, -0x1

    .line 120
    aget-char v7, v1, v7

    .line 121
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_c

    .line 122
    invoke-static {v5, v7}, Lcom/univocity/parsers/csv/CsvFormatDetector;->increment(Ljava/util/Map;C)V

    :cond_c
    const/4 v7, 0x1

    const/4 v11, 0x0

    goto :goto_6

    :cond_d
    if-nez v11, :cond_1

    move v15, v9

    const/4 v8, 0x0

    :goto_5
    if-gt v8, v14, :cond_e

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_e

    .line 132
    aget-char v8, v1, v15

    goto :goto_5

    :cond_e
    if-ltz v15, :cond_f

    .line 134
    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_f
    move v11, v7

    goto/16 :goto_1

    :goto_6
    add-int/2addr v9, v7

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_10
    const/16 v8, 0x22

    const/16 v14, 0x27

    .line 160
    :goto_7
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_11

    array-length v7, v1

    if-ge v2, v7, :cond_11

    .line 161
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_11
    array-length v1, v1

    if-lt v2, v1, :cond_12

    if-lt v9, v2, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_12

    .line 165
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    :cond_12
    invoke-direct {v0, v6}, Lcom/univocity/parsers/csv/CsvFormatDetector;->calculateTotals(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 171
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 174
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 175
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 176
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/Character;

    .line 177
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 178
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    if-nez v16, :cond_15

    if-nez v17, :cond_15

    .line 181
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v16, :cond_17

    if-nez v17, :cond_16

    goto :goto_9

    .line 188
    :cond_16
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {v2, v8, v14}, Lcom/univocity/parsers/csv/CsvFormatDetector;->increment(Ljava/util/Map;CI)V

    const/16 v8, 0x22

    const/16 v14, 0x27

    goto :goto_8

    :cond_17
    :goto_9
    const/16 v8, 0x22

    goto :goto_8

    .line 193
    :cond_18
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 195
    iget-object v3, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->allowedDelimiters:[C

    array-length v3, v3

    if-lez v3, :cond_1a

    .line 196
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 197
    iget-object v4, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->allowedDelimiters:[C

    array-length v6, v4

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_19

    aget-char v8, v4, v7

    .line 198
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 200
    :cond_19
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 203
    :cond_1a
    iget-char v3, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->suggestedDelimiter:C

    invoke-static {v2, v1, v3}, Lcom/univocity/parsers/csv/CsvFormatDetector;->max(Ljava/util/Map;Ljava/util/Map;C)C

    move-result v3

    .line 204
    iget-char v4, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->suggestedDelimiter:C

    invoke-static {v2, v1, v4}, Lcom/univocity/parsers/csv/CsvFormatDetector;->min(Ljava/util/Map;Ljava/util/Map;C)C

    move-result v4

    if-eq v3, v4, :cond_1f

    .line 209
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_c

    .line 214
    :cond_1b
    iget-object v2, v0, Lcom/univocity/parsers/csv/CsvFormatDetector;->allowedDelimiters:[C

    array-length v6, v2

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v6, :cond_1e

    aget-char v8, v2, v7

    if-ne v8, v4, :cond_1c

    goto :goto_c

    :cond_1c
    if-ne v8, v3, :cond_1d

    goto :goto_d

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 224
    :cond_1e
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v2, v6, :cond_1f

    :goto_c
    move v3, v4

    :cond_1f
    :goto_d
    if-lt v13, v12, :cond_20

    const/16 v14, 0x22

    goto :goto_e

    :cond_20
    const/16 v14, 0x27

    .line 235
    :goto_e
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {v5, v1, v14}, Lcom/univocity/parsers/csv/CsvFormatDetector;->max(Ljava/util/Map;Ljava/util/Map;C)C

    move-result v1

    .line 237
    invoke-virtual {v0, v3, v14, v1}, Lcom/univocity/parsers/csv/CsvFormatDetector;->apply(CCC)V

    return-void
.end method
