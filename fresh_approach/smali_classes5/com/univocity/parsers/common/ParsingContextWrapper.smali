.class public Lcom/univocity/parsers/common/ParsingContextWrapper;
.super Lcom/univocity/parsers/common/ContextWrapper;
.source "ParsingContextWrapper.java"

# interfaces
.implements Lcom/univocity/parsers/common/ParsingContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/ContextWrapper<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/ParsingContext;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/ContextWrapper;-><init>(Lcom/univocity/parsers/common/Context;)V

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

    .line 65
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->comments()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public currentChar()J
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->currentChar()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentLine()J
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->currentLine()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentParsedContent()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->currentParsedContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentParsedContentLength()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->currentParsedContentLength()I

    move-result v0

    return v0
.end method

.method public fieldContentOnError()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->fieldContentOnError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lastComment()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->lastComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lineSeparator()[C
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->lineSeparator()[C

    move-result-object v0

    return-object v0
.end method

.method public parsedHeaders()[Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->parsedHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selectedHeaders()[Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0}, Lcom/univocity/parsers/common/ParsingContext;->selectedHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipLines(J)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0, p1, p2}, Lcom/univocity/parsers/common/ParsingContext;->skipLines(J)V

    return-void
.end method

.method public toRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    check-cast v0, Lcom/univocity/parsers/common/ParsingContext;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/ParsingContext;->toRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;

    move-result-object p1

    return-object p1
.end method
