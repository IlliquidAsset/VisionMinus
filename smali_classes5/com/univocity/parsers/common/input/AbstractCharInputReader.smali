.class public abstract Lcom/univocity/parsers/common/input/AbstractCharInputReader;
.super Ljava/lang/Object;
.source "AbstractCharInputReader.java"

# interfaces
.implements Lcom/univocity/parsers/common/input/CharInputReader;


# instance fields
.field public buffer:[C

.field private ch:C

.field private charCount:J

.field private commentProcessing:Z

.field private final detectLineSeparator:Z

.field public i:I

.field private incrementLineCount:Z

.field private inputAnalysisProcesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/input/InputAnalysisProcess;",
            ">;"
        }
    .end annotation
.end field

.field public length:I

.field private lineCount:J

.field private lineSeparator1:C

.field private lineSeparator2:C

.field private lineSeparatorDetected:Z

.field private normalizeLineEndings:Z

.field private final normalizedLineSeparator:C

.field private recordStart:I

.field private skipping:Z

.field private final tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

.field final whitespaceRangeStart:I


# direct methods
.method public constructor <init>(CI)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0, p1, p2}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;-><init>([CCI)V

    return-void
.end method

.method public constructor <init>([CCI)V
    .locals 5

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->skipping:Z

    .line 51
    iput-boolean v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->commentProcessing:Z

    const/4 v1, -0x1

    .line 68
    iput v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizeLineEndings:Z

    .line 90
    iput p3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->whitespaceRangeStart:I

    .line 91
    new-instance v2, Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    const/16 v3, 0x1000

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p3}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;-><init>(ILjava/lang/String;I)V

    iput-object v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    if-nez p1, :cond_0

    .line 93
    iput-boolean v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->detectLineSeparator:Z

    .line 94
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->submitLineSeparatorDetector()V

    .line 95
    iput-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator1:C

    .line 96
    iput-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator2:C

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->setLineSeparator([C)V

    .line 99
    iput-boolean v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->detectLineSeparator:Z

    .line 102
    :goto_0
    iput-char p2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizedLineSeparator:C

    return-void
.end method

.method static synthetic access$002(Lcom/univocity/parsers/common/input/AbstractCharInputReader;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparatorDetected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/univocity/parsers/common/input/AbstractCharInputReader;C)C
    .locals 0

    .line 36
    iput-char p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator1:C

    return p1
.end method

.method static synthetic access$202(Lcom/univocity/parsers/common/input/AbstractCharInputReader;C)C
    .locals 0

    .line 36
    iput-char p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator2:C

    return p1
.end method

.method static synthetic access$300(Lcom/univocity/parsers/common/input/AbstractCharInputReader;[C)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->setLineSeparator([C)V

    return-void
.end method

.method private setLineSeparator([C)V
    .locals 3

    if-eqz p1, :cond_2

    .line 124
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 127
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 130
    aget-char v2, p1, v0

    iput-char v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator1:C

    .line 131
    array-length v2, p1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    aget-char v0, p1, v0

    :cond_0
    iput-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator2:C

    return-void

    .line 128
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

    .line 125
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid line separator. Expected 1 to 2 characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private submitLineSeparatorDetector()V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->detectLineSeparator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparatorDetected:Z

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/univocity/parsers/common/input/AbstractCharInputReader$1;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader$1;-><init>(Lcom/univocity/parsers/common/input/AbstractCharInputReader;)V

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->addInputAnalysisProcess(Lcom/univocity/parsers/common/input/InputAnalysisProcess;)V

    :cond_0
    return-void
.end method

.method private throwEOFException()V
    .locals 4

    .line 253
    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->incrementLineCount:Z

    if-eqz v0, :cond_0

    .line 254
    iget-wide v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    :cond_0
    const/4 v0, 0x0

    .line 256
    iput-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->ch:C

    .line 257
    new-instance v0, Lcom/univocity/parsers/common/input/EOFException;

    invoke-direct {v0}, Lcom/univocity/parsers/common/input/EOFException;-><init>()V

    throw v0
.end method

.method private updateBuffer()V
    .locals 7

    .line 188
    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->commentProcessing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    iget v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->recordStart:I

    sub-int v2, v0, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->skipping:Z

    if-nez v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    sub-int/2addr v0, v1

    invoke-virtual {v3, v2, v1, v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->append([CII)V

    :cond_0
    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->recordStart:I

    .line 192
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->reloadBuffer()V

    .line 194
    iget-wide v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->charCount:J

    iget v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->charCount:J

    .line 195
    iput v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    .line 197
    iget v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->stop()V

    const/4 v1, 0x1

    .line 199
    iput-boolean v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->incrementLineCount:Z

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 203
    iget v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-lez v1, :cond_3

    if-gt v1, v4, :cond_3

    .line 205
    iget-object v5, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    add-int/lit8 v6, v1, 0x1

    invoke-static {v5, v0, v6}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v5

    .line 208
    iget-object v6, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    .line 209
    iput-object v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    .line 210
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->reloadBuffer()V

    .line 211
    iput-object v6, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    .line 213
    iget v6, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-eq v6, v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    array-length v2, v2

    add-int/2addr v2, v1

    new-array v2, v2, [C

    .line 215
    invoke-static {v5, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v5, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    iget v6, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    invoke-static {v5, v0, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iput-object v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    .line 218
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    goto :goto_0

    .line 220
    :cond_2
    iput-object v5, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    .line 221
    iput v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    .line 225
    :cond_3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/input/InputAnalysisProcess;

    .line 226
    iget-object v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    iget v5, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    invoke-interface {v1, v2, v5}, Lcom/univocity/parsers/common/input/InputAnalysisProcess;->execute([CI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 229
    :cond_4
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-le v0, v4, :cond_6

    .line 230
    iput-object v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 229
    iget v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-le v1, v4, :cond_5

    .line 230
    iput-object v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    :cond_5
    throw v0

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final addInputAnalysisProcess(Lcom/univocity/parsers/common/input/InputAnalysisProcess;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->inputAnalysisProcesses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final charCount()J
    .locals 4

    .line 356
    iget-wide v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->charCount:J

    iget v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final currentParsedContent()Ljava/lang/String;
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    iget v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->recordStart:I

    if-le v0, v1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    iget v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->recordStart:I

    iget v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 394
    :cond_1
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    iget v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->recordStart:I

    if-le v0, v1, :cond_2

    .line 395
    iget-object v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    iget-object v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->append([CII)V

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final currentParsedContentLength()I
    .locals 2

    .line 383
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    iget v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->recordStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final enableNormalizeLineEndings(Z)V
    .locals 0

    .line 361
    iput-boolean p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizeLineEndings:Z

    return-void
.end method

.method public final getChar()C
    .locals 1

    .line 294
    iget-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->ch:C

    return v0
.end method

.method public getLineSeparator()[C
    .locals 5

    .line 366
    iget-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator2:C

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [C

    .line 367
    iget-char v4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator1:C

    aput-char v4, v3, v1

    aput-char v0, v3, v2

    return-object v3

    :cond_0
    new-array v0, v2, [C

    .line 369
    iget-char v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator1:C

    aput-char v2, v0, v1

    return-object v0
.end method

.method public final getQuotedString(CCCICCZZZZ)Ljava/lang/String;
    .locals 5

    .line 452
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 459
    :cond_0
    :goto_0
    iget v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-lt v0, v2, :cond_1

    return-object v1

    .line 462
    :cond_1
    iget-object v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    aget-char v4, v3, v0

    iput-char v4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->ch:C

    if-ne v4, p1, :cond_c

    add-int/lit8 v4, v0, -0x1

    .line 464
    aget-char v4, v3, v4

    if-ne v4, p2, :cond_3

    if-eqz p8, :cond_2

    goto/16 :goto_5

    :cond_2
    return-object v1

    :cond_3
    add-int/lit8 p1, v0, 0x1

    if-ge p1, v2, :cond_b

    .line 472
    aget-char p2, v3, p1

    if-eq p2, p5, :cond_4

    if-ne p2, p6, :cond_b

    .line 492
    :cond_4
    iget p2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    sub-int/2addr v0, p2

    if-le v0, p4, :cond_5

    return-object v1

    :cond_5
    if-eqz p7, :cond_6

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_6
    const/16 p3, 0x20

    if-eqz p10, :cond_7

    :goto_1
    if-lez v0, :cond_7

    .line 503
    iget-object p4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    add-int p5, p2, v0

    add-int/lit8 p5, p5, -0x1

    aget-char p4, p4, p5

    if-gt p4, p3, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    if-eqz p9, :cond_8

    :goto_2
    if-lez v0, :cond_8

    .line 508
    iget-object p4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    aget-char p4, p4, p2

    if-gt p4, p3, :cond_8

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 515
    :cond_8
    :goto_3
    iput p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    if-gtz v0, :cond_9

    const-string p1, ""

    goto :goto_4

    .line 521
    :cond_9
    new-instance p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    invoke-direct {p1, p3, p2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 524
    :goto_4
    iget p2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    iget p3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-lt p2, p3, :cond_a

    .line 525
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->updateBuffer()V

    :cond_a
    return-object p1

    :cond_b
    return-object v1

    :cond_c
    if-ne v4, p2, :cond_e

    if-nez p8, :cond_e

    add-int/lit8 v4, v0, 0x1

    if-ge v4, v2, :cond_10

    .line 481
    aget-char v2, v3, v4

    if-eq v2, p1, :cond_d

    if-ne v2, p3, :cond_10

    :cond_d
    return-object v1

    .line 486
    :cond_e
    iget-char v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator1:C

    iget-char v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->ch:C

    if-ne v2, v3, :cond_10

    iget-boolean v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizeLineEndings:Z

    if-eqz v2, :cond_10

    iget-char v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator2:C

    if-eqz v2, :cond_f

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-ge v3, v4, :cond_10

    iget-object v4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    aget-char v3, v4, v3

    if-ne v2, v3, :cond_10

    :cond_f
    return-object v1

    :cond_10
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public final getString(CCZLjava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 409
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    if-eq p1, p2, :cond_3

    .line 414
    iget v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-lt v0, v2, :cond_1

    return-object v1

    .line 417
    :cond_1
    iget-char v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator1:C

    if-ne v2, p1, :cond_2

    iget-char p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator2:C

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    aget-char v2, v2, v0

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 413
    :cond_2
    iget-object p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    add-int/lit8 v2, v0, 0x1

    aget-char p1, p1, v0

    move v0, v2

    goto :goto_0

    .line 422
    :cond_3
    :goto_1
    iget p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    add-int/lit8 p2, p1, -0x1

    sub-int p1, v0, p1

    if-le p1, p5, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 p5, v0, -0x1

    .line 428
    iput p5, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    if-eqz p3, :cond_5

    add-int/lit8 v0, v0, -0x2

    .line 432
    :goto_2
    iget-object p3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    aget-char p5, p3, v0

    const/16 v1, 0x20

    if-gt p5, v1, :cond_5

    iget p5, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->whitespaceRangeStart:I

    aget-char p3, p3, v0

    if-ge p5, p3, :cond_5

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    if-gtz p1, :cond_6

    goto :goto_3

    .line 442
    :cond_6
    new-instance p4, Ljava/lang/String;

    iget-object p3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    invoke-direct {p4, p3, p2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 445
    :goto_3
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->nextChar()C

    return-object p4
.end method

.method public final lineCount()J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    return-wide v0
.end method

.method public final markRecordStart()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->reset()V

    .line 404
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    iget v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->recordStart:I

    return-void
.end method

.method public final nextChar()C
    .locals 6

    .line 262
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->throwEOFException()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    iget v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->ch:C

    .line 268
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-lt v3, v0, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->updateBuffer()V

    .line 272
    :cond_1
    iget-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator1:C

    iget-char v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->ch:C

    if-ne v0, v2, :cond_5

    iget-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator2:C

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-eq v2, v1, :cond_5

    iget-object v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    iget v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_5

    .line 273
    :cond_2
    iget-wide v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    .line 274
    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizeLineEndings:Z

    if-eqz v0, :cond_5

    .line 275
    iget-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizedLineSeparator:C

    iput-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->ch:C

    .line 276
    iget-char v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparator2:C

    if-nez v2, :cond_3

    return v0

    .line 279
    :cond_3
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    iget v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-lt v0, v2, :cond_5

    if-eq v2, v1, :cond_4

    .line 281
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->updateBuffer()V

    goto :goto_0

    .line 283
    :cond_4
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->throwEOFException()V

    .line 289
    :cond_5
    :goto_0
    iget-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->ch:C

    return v0
.end method

.method public readComment()Ljava/lang/String;
    .locals 7

    .line 328
    iget-wide v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const/4 v2, 0x1

    .line 329
    iput-boolean v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->commentProcessing:Z

    .line 330
    iget-object v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {v2}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->reset()V

    :goto_0
    const/4 v2, 0x0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->nextChar()C

    move-result v3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_0

    .line 334
    iget v4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->whitespaceRangeStart:I

    if-ge v4, v3, :cond_0

    .line 335
    iget-char v4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizedLineSeparator:C

    iget-char v5, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizedLineSeparator:C

    invoke-virtual {p0, v3, v4, v5}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->skipWhitespace(CCC)C

    move-result v3

    .line 337
    :cond_0
    iget-object v4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    iget-char v5, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizedLineSeparator:C

    iget-char v6, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizedLineSeparator:C

    invoke-virtual {v4, v3, p0, v5, v6}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C

    .line 339
    iget-wide v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    .line 340
    iget-object v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->nextChar()C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->appendIgnoringWhitespace(C)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->updateWhitespace()V

    .line 343
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iput-boolean v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->commentProcessing:Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 347
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->updateWhitespace()V

    .line 348
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->tmp:Lcom/univocity/parsers/common/input/ExpandingCharAppender;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/ExpandingCharAppender;->getAndReset()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    iput-boolean v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->commentProcessing:Z

    return-object v0

    :goto_1
    iput-boolean v2, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->commentProcessing:Z

    throw v0
.end method

.method protected abstract reloadBuffer()V
.end method

.method protected abstract setReader(Ljava/io/Reader;)V
.end method

.method public final skipLines(J)V
    .locals 10

    const-string v0, ". End of input reached"

    const-string v1, " lines from line "

    const-string v2, "Unable to skip "

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    .line 306
    iput-boolean v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->skipping:Z

    return-void

    :cond_0
    const/4 v4, 0x1

    .line 309
    iput-boolean v4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->skipping:Z

    .line 310
    iget-wide v4, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    add-long/2addr v4, p1

    .line 314
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->nextChar()C

    .line 315
    iget-wide v6, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    cmp-long v8, v6, v4

    if-ltz v8, :cond_1

    .line 316
    iput-boolean v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->skipping:Z

    .line 317
    iget-wide v6, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    cmp-long v8, v6, p1

    if-ltz v8, :cond_2

    return-void

    .line 318
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v4, p1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/univocity/parsers/common/input/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :catch_0
    iput-boolean v3, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->skipping:Z

    .line 322
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, p1

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final skipWhitespace(CCC)C
    .locals 1

    :goto_0
    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    if-eq p1, p2, :cond_0

    .line 375
    iget-char v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->normalizedLineSeparator:C

    if-eq p1, v0, :cond_0

    if-eq p1, p3, :cond_0

    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->whitespaceRangeStart:I

    if-ge v0, p1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->nextChar()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final start(Ljava/io/Reader;)V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->stop()V

    .line 167
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->setReader(Ljava/io/Reader;)V

    const-wide/16 v0, 0x0

    .line 168
    iput-wide v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineCount:J

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->lineSeparatorDetected:Z

    .line 171
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->submitLineSeparatorDetector()V

    .line 173
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->updateBuffer()V

    .line 176
    iget v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    aget-char p1, v0, p1

    const v0, 0xfeff

    if-ne p1, v0, :cond_0

    .line 177
    iget p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->i:I

    :cond_0
    return-void
.end method

.method protected final unwrapInputStream(Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;)V
    .locals 2

    .line 149
    iget-object v0, p1, Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;->input:Ljava/io/InputStream;

    .line 150
    iget-object p1, p1, Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 154
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->start(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, -0x1

    .line 159
    iput p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I

    .line 160
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->start(Ljava/io/Reader;)V

    :goto_0
    return-void
.end method
