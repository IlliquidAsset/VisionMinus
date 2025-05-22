.class public abstract Lcom/univocity/parsers/common/processor/BatchedColumnProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;
.source "BatchedColumnProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
