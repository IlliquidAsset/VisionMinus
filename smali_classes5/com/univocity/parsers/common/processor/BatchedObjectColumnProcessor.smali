.class public abstract Lcom/univocity/parsers/common/processor/BatchedObjectColumnProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;
.source "BatchedObjectColumnProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
