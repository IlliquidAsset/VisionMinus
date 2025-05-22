.class public abstract Lcom/univocity/parsers/common/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final systemLineSeparator:[C

.field private static final systemLineSeparatorString:Ljava/lang/String;


# instance fields
.field private comment:C

.field private lineSeparator:[C

.field private lineSeparatorString:Ljava/lang/String;

.field private normalizedNewline:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 58
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    .line 60
    sput-object v0, Lcom/univocity/parsers/common/Format;->systemLineSeparatorString:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_0
    sput-object v0, Lcom/univocity/parsers/common/Format;->systemLineSeparatorString:Ljava/lang/String;

    .line 64
    :goto_0
    sget-object v0, Lcom/univocity/parsers/common/Format;->systemLineSeparatorString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/univocity/parsers/common/Format;->systemLineSeparator:[C

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 69
    iput-char v0, p0, Lcom/univocity/parsers/common/Format;->normalizedNewline:C

    const/16 v0, 0x23

    .line 70
    iput-char v0, p0, Lcom/univocity/parsers/common/Format;->comment:C

    .line 73
    sget-object v0, Lcom/univocity/parsers/common/Format;->systemLineSeparator:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/univocity/parsers/common/Format;->lineSeparator:[C

    .line 74
    sget-object v0, Lcom/univocity/parsers/common/Format;->systemLineSeparatorString:Ljava/lang/String;

    iput-object v0, p0, Lcom/univocity/parsers/common/Format;->lineSeparatorString:Ljava/lang/String;

    return-void
.end method

.method private static getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 183
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 184
    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "\\n"

    return-object p0

    :cond_1
    const-string p0, "\\t"

    return-object p0

    :cond_2
    const-string p0, "\\r"

    return-object p0

    :cond_3
    const-string p0, "\\0"

    return-object p0

    .line 198
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 199
    check-cast p0, Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 201
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v2}, Lcom/univocity/parsers/common/Format;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 206
    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 209
    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemLineSeparator()[C
    .locals 1

    .line 90
    sget-object v0, Lcom/univocity/parsers/common/Format;->systemLineSeparator:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method


# virtual methods
.method protected clone()Lcom/univocity/parsers/common/Format;
    .locals 3

    .line 236
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/common/Format;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 238
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error cloning format object"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/univocity/parsers/common/Format;->clone()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public getComment()C
    .locals 1

    .line 161
    iget-char v0, p0, Lcom/univocity/parsers/common/Format;->comment:C

    return v0
.end method

.method protected abstract getConfiguration()Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public getLineSeparator()[C
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/univocity/parsers/common/Format;->lineSeparator:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getLineSeparatorString()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/univocity/parsers/common/Format;->lineSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalizedNewline()C
    .locals 1

    .line 135
    iget-char v0, p0, Lcom/univocity/parsers/common/Format;->normalizedNewline:C

    return v0
.end method

.method public isComment(C)Z
    .locals 1

    .line 179
    iget-char v0, p0, Lcom/univocity/parsers/common/Format;->comment:C

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNewLine(C)Z
    .locals 1

    .line 152
    iget-char v0, p0, Lcom/univocity/parsers/common/Format;->normalizedNewline:C

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setComment(C)V
    .locals 0

    .line 170
    iput-char p1, p0, Lcom/univocity/parsers/common/Format;->comment:C

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/Format;->setLineSeparator([C)V

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Line separator cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineSeparator([C)V
    .locals 3

    if-eqz p1, :cond_2

    .line 117
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 120
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 123
    iput-object p1, p0, Lcom/univocity/parsers/common/Format;->lineSeparator:[C

    .line 124
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/univocity/parsers/common/Format;->lineSeparatorString:Ljava/lang/String;

    .line 125
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 126
    aget-char p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/Format;->setNormalizedNewline(C)V

    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid line separator. Up to 2 characters are expected. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " characters."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid line separator. Expected 1 to 2 characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNormalizedNewline(C)V
    .locals 0

    .line 143
    iput-char p1, p0, Lcom/univocity/parsers/common/Format;->normalizedNewline:C

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Lcom/univocity/parsers/common/Format;->getConfiguration()Ljava/util/TreeMap;

    move-result-object v1

    .line 219
    iget-char v2, p0, Lcom/univocity/parsers/common/Format;->comment:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "Comment character"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v2, p0, Lcom/univocity/parsers/common/Format;->lineSeparatorString:Ljava/lang/String;

    const-string v3, "Line separator sequence"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-char v2, p0, Lcom/univocity/parsers/common/Format;->normalizedNewline:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "Line separator (normalized)"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

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

    const-string v3, "\n\t\t"

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/univocity/parsers/common/Format;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
