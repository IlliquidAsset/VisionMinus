.class public Lcom/univocity/parsers/common/processor/ColumnProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;
.source "ColumnProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    .line 44
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
