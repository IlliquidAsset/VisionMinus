.class public Lcom/univocity/parsers/common/input/LookaheadCharInputReader;
.super Ljava/lang/Object;
.source "LookaheadCharInputReader.java"

# interfaces
.implements Lcom/univocity/parsers/common/input/CharInputReader;


# instance fields
.field private delimiter:C

.field private length:I

.field private lookahead:[C

.field private final newLine:C

.field private final reader:Lcom/univocity/parsers/common/input/CharInputReader;

.field private start:I

.field private final whitespaceRangeStart:I


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/input/CharInputReader;CI)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 29
    iput-object v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    .line 30
    iput v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    .line 31
    iput v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    .line 46
    iput-object p1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    .line 47
    iput-char p2, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->newLine:C

    .line 48
    iput p3, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->whitespaceRangeStart:I

    return-void
.end method


# virtual methods
.method public charCount()J
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->charCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentParsedContent()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->currentParsedContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentParsedContentLength()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->currentParsedContentLength()I

    move-result v0

    return v0
.end method

.method public enableNormalizeLineEndings(Z)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/input/CharInputReader;->enableNormalizeLineEndings(Z)V

    return-void
.end method

.method public final getChar()C
    .locals 2

    .line 207
    iget v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    if-lt v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->getChar()C

    move-result v0

    return v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    return v0
.end method

.method public getLineSeparator()[C
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->getLineSeparator()[C

    move-result-object v0

    return-object v0
.end method

.method public getLookahead()Ljava/lang/String;
    .locals 4

    .line 108
    iget v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    if-lt v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    iget v2, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    iget v3, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getLookahead(C)Ljava/lang/String;
    .locals 4

    .line 122
    iget v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    if-lt v0, v1, :cond_0

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    iget v2, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    iget v3, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p1, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getQuotedString(CCCICCZZZZ)Ljava/lang/String;
    .locals 12

    move-object v0, p0

    .line 239
    iget-object v1, v0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/univocity/parsers/common/input/CharInputReader;->getQuotedString(CCCICCZZZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getString(CCZLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 234
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/univocity/parsers/common/input/CharInputReader;->getString(CCZLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lineCount()J
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->lineCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public lookahead(I)V
    .locals 3

    .line 134
    iget v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 136
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 137
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    .line 140
    :cond_0
    iget v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    .line 142
    iput v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    .line 146
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    sub-int/2addr p1, v0

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    iget-object v2, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v2}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v2

    aput-char v2, p1, v1

    .line 149
    iget p1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I
    :try_end_0
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method public markRecordStart()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->markRecordStart()V

    return-void
.end method

.method public matches(C[CC)Z
    .locals 6

    .line 61
    array-length v0, p2

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    iget v2, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 65
    :cond_0
    aget-char v0, p2, v2

    if-eq v0, p1, :cond_1

    aget-char p1, p2, v2

    if-eq p1, p3, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x1

    .line 69
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 70
    aget-char v1, p2, v0

    if-eq v1, p3, :cond_2

    .line 71
    iget-object v3, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    add-int/2addr v4, v5

    aget-char v3, v3, v4

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public matches([CC)Z
    .locals 5

    .line 88
    array-length v0, p1

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    iget v2, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 93
    aget-char v1, p1, v0

    if-eq v1, p2, :cond_1

    .line 94
    aget-char v1, p1, v0

    iget-object v3, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    iget v4, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    add-int/2addr v4, v0

    aget-char v3, v3, v4

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public nextChar()C
    .locals 3

    .line 168
    iget v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    if-lt v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->nextChar()C

    move-result v0

    return v0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    aget-char v0, v1, v0

    return v0
.end method

.method public readComment()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->readComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipLines(J)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0, p1, p2}, Lcom/univocity/parsers/common/input/CharInputReader;->skipLines(J)V

    return-void
.end method

.method public skipWhitespace(CCC)C
    .locals 2

    .line 216
    :goto_0
    iget v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->length:I

    if-ge v0, v1, :cond_0

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    if-eq p1, p2, :cond_0

    iget-char v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->newLine:C

    if-eq p1, v1, :cond_0

    if-eq p1, p3, :cond_0

    iget v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->whitespaceRangeStart:I

    if-ge v1, p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->lookahead:[C

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->start:I

    aget-char p1, p1, v0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0, p1, p2, p3}, Lcom/univocity/parsers/common/input/CharInputReader;->skipWhitespace(CCC)C

    move-result p1

    return p1
.end method

.method public start(Ljava/io/Reader;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/input/CharInputReader;->start(Ljava/io/Reader;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/univocity/parsers/common/input/LookaheadCharInputReader;->reader:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->stop()V

    return-void
.end method
