.class public abstract Lcom/univocity/parsers/common/processor/MasterDetailListProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;
.source "MasterDetailListProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/processor/RowPlacement;Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;-><init>(Lcom/univocity/parsers/common/processor/RowPlacement;Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;-><init>(Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
