.class public Lcom/univocity/parsers/common/DefaultParsingContext;
.super Lcom/univocity/parsers/common/DefaultContext;
.source "DefaultParsingContext.java"

# interfaces
.implements Lcom/univocity/parsers/common/ParsingContext;


# instance fields
.field private final input:Lcom/univocity/parsers/common/input/CharInputReader;

.field private final parser:Lcom/univocity/parsers/common/AbstractParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/AbstractParser<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/AbstractParser;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/AbstractParser<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p1, Lcom/univocity/parsers/common/AbstractParser;->output:Lcom/univocity/parsers/common/ParserOutput;

    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/univocity/parsers/common/DefaultContext;-><init>(Lcom/univocity/parsers/common/ParserOutput;I)V

    .line 39
    iput-object p1, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->parser:Lcom/univocity/parsers/common/AbstractParser;

    if-nez p1, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p1, Lcom/univocity/parsers/common/AbstractParser;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    :goto_1
    iput-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    return-void
.end method


# virtual methods
.method public comments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->parser:Lcom/univocity/parsers/common/AbstractParser;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->getComments()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public currentChar()J
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->charCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentLine()J
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->lineCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentParsedContent()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->currentParsedContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentParsedContentLength()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->currentParsedContentLength()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fieldContentOnError()Ljava/lang/String;
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v0, v0, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharAppender;->getChars()[C

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->output:Lcom/univocity/parsers/common/ParserOutput;

    iget-object v1, v1, Lcom/univocity/parsers/common/ParserOutput;->appender:Lcom/univocity/parsers/common/input/CharAppender;

    invoke-interface {v1}, Lcom/univocity/parsers/common/input/CharAppender;->length()I

    move-result v1

    .line 63
    array-length v2, v0

    if-le v1, v2, :cond_0

    .line 64
    array-length v1, v0

    :cond_0
    if-lez v1, :cond_1

    .line 67
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public lastComment()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->parser:Lcom/univocity/parsers/common/AbstractParser;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->getLastComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lineSeparator()[C
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0}, Lcom/univocity/parsers/common/input/CharInputReader;->getLineSeparator()[C

    move-result-object v0

    return-object v0
.end method

.method public parsedHeaders()[Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->parser:Lcom/univocity/parsers/common/AbstractParser;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->getParsedHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipLines(J)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultParsingContext;->input:Lcom/univocity/parsers/common/input/CharInputReader;

    invoke-interface {v0, p1, p2}, Lcom/univocity/parsers/common/input/CharInputReader;->skipLines(J)V

    return-void
.end method
