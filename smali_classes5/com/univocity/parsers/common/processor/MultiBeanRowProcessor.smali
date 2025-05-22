.class public abstract Lcom/univocity/parsers/common/processor/MultiBeanRowProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;
.source "MultiBeanRowProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
