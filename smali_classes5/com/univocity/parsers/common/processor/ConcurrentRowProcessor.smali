.class public Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;
.source "ConcurrentRowProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/processor/RowProcessor;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/processor/RowProcessor;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;)J
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;->getRowCount()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected bridge synthetic copyContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;
    .locals 0

    .line 29
    check-cast p1, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;->copyContext(Lcom/univocity/parsers/common/ParsingContext;)Lcom/univocity/parsers/common/ParsingContext;

    move-result-object p1

    return-object p1
.end method

.method protected copyContext(Lcom/univocity/parsers/common/ParsingContext;)Lcom/univocity/parsers/common/ParsingContext;
    .locals 1

    .line 53
    new-instance v0, Lcom/univocity/parsers/common/ParsingContextSnapshot;

    invoke-direct {v0, p1}, Lcom/univocity/parsers/common/ParsingContextSnapshot;-><init>(Lcom/univocity/parsers/common/ParsingContext;)V

    return-object v0
.end method

.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method protected bridge synthetic wrapContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;
    .locals 0

    .line 29
    check-cast p1, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;->wrapContext(Lcom/univocity/parsers/common/ParsingContext;)Lcom/univocity/parsers/common/ParsingContext;

    move-result-object p1

    return-object p1
.end method

.method protected wrapContext(Lcom/univocity/parsers/common/ParsingContext;)Lcom/univocity/parsers/common/ParsingContext;
    .locals 1

    .line 58
    new-instance v0, Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor$1;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor$1;-><init>(Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;Lcom/univocity/parsers/common/ParsingContext;)V

    return-object v0
.end method
