.class public Lcom/univocity/parsers/common/processor/CompositeRowProcessor;
.super Lcom/univocity/parsers/common/processor/core/CompositeProcessor;
.source "CompositeRowProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/CompositeProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>([Lcom/univocity/parsers/common/processor/core/Processor;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/CompositeProcessor;-><init>([Lcom/univocity/parsers/common/processor/core/Processor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/CompositeProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/CompositeProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/CompositeProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
