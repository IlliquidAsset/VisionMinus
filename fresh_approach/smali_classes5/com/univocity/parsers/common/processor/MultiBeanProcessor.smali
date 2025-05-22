.class public abstract Lcom/univocity/parsers/common/processor/MultiBeanProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;
.source "MultiBeanProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
