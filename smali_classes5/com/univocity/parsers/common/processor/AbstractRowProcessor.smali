.class public Lcom/univocity/parsers/common/processor/AbstractRowProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractProcessor;
.source "AbstractRowProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
