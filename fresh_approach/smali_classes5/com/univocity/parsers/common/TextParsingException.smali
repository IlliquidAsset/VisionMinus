.class public Lcom/univocity/parsers/common/TextParsingException;
.super Lcom/univocity/parsers/common/AbstractException;
.source "TextParsingException.java"


# static fields
.field private static final serialVersionUID:J = 0x1394cac42a104606L


# instance fields
.field private charIndex:J

.field private columnIndex:I

.field private content:Ljava/lang/String;

.field protected extractedIndexes:[I

.field private headers:[Ljava/lang/String;

.field private lineIndex:J

.field private recordNumber:J


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p2, p3}, Lcom/univocity/parsers/common/AbstractException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/TextParsingException;->setContext(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0, v0}, Lcom/univocity/parsers/common/TextParsingException;-><init>(Lcom/univocity/parsers/common/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/ParsingContext;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/univocity/parsers/common/TextParsingException;-><init>(Lcom/univocity/parsers/common/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/ParsingContext;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/univocity/parsers/common/TextParsingException;-><init>(Lcom/univocity/parsers/common/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private setParsingContext(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->currentLine()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/univocity/parsers/common/TextParsingException;->lineIndex:J

    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    .line 62
    :cond_1
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->currentChar()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/univocity/parsers/common/TextParsingException;->charIndex:J

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 63
    :cond_2
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->fieldContentOnError()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/univocity/parsers/common/TextParsingException;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharIndex()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/univocity/parsers/common/TextParsingException;->charIndex:J

    return-wide v0
.end method

.method public getColumnIndex()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/univocity/parsers/common/TextParsingException;->columnIndex:I

    return v0
.end method

.method protected getDetails()Ljava/lang/String;
    .locals 6

    .line 103
    iget-wide v0, p0, Lcom/univocity/parsers/common/TextParsingException;->lineIndex:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, ""

    const-string v2, "line"

    invoke-static {v1, v2, v0}, Lcom/univocity/parsers/common/TextParsingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/univocity/parsers/common/TextParsingException;->columnIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "column"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/TextParsingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-wide v1, p0, Lcom/univocity/parsers/common/TextParsingException;->recordNumber:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "record"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/TextParsingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-wide v1, p0, Lcom/univocity/parsers/common/TextParsingException;->charIndex:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "charIndex"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/TextParsingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/TextParsingException;->headers:[Ljava/lang/String;

    const-string v2, "headers"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/TextParsingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/univocity/parsers/common/TextParsingException;->content:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/TextParsingException;->restrictContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content parsed"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/TextParsingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Error parsing input"

    return-object v0
.end method

.method public final getHeaders()[Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/univocity/parsers/common/TextParsingException;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method public getLineIndex()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/univocity/parsers/common/TextParsingException;->lineIndex:J

    return-wide v0
.end method

.method public final getParsedContent()Ljava/lang/String;
    .locals 1

    .line 157
    iget v0, p0, Lcom/univocity/parsers/common/TextParsingException;->errorContentLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/TextParsingException;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/univocity/parsers/common/TextParsingException;->lineIndex:J

    return-wide v0
.end method

.method protected setContext(Lcom/univocity/parsers/common/Context;)V
    .locals 4

    .line 47
    instance-of v0, p1, Lcom/univocity/parsers/common/ParsingContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/TextParsingException;->setParsingContext(Lcom/univocity/parsers/common/ParsingContext;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/TextParsingException;->setParsingContext(Lcom/univocity/parsers/common/ParsingContext;)V

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    .line 52
    :cond_1
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->currentColumn()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/univocity/parsers/common/TextParsingException;->columnIndex:I

    if-nez p1, :cond_2

    const-wide/16 v2, -0x1

    goto :goto_2

    .line 53
    :cond_2
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->currentRecord()J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lcom/univocity/parsers/common/TextParsingException;->recordNumber:J

    .line 54
    iget-object v0, p0, Lcom/univocity/parsers/common/TextParsingException;->headers:[Ljava/lang/String;

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    move-object v0, v1

    goto :goto_3

    .line 55
    :cond_3
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/univocity/parsers/common/TextParsingException;->headers:[Ljava/lang/String;

    :cond_4
    if-nez p1, :cond_5

    goto :goto_4

    .line 57
    :cond_5
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->extractedFieldIndexes()[I

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/univocity/parsers/common/TextParsingException;->extractedIndexes:[I

    return-void
.end method

.method public bridge synthetic setErrorContentLength(I)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/AbstractException;->setErrorContentLength(I)V

    return-void
.end method
