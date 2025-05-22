.class public abstract Lcom/univocity/parsers/common/processor/MasterDetailProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;
.source "MasterDetailProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/processor/ObjectRowListProcessor;)V
    .locals 1

    .line 65
    sget-object v0, Lcom/univocity/parsers/common/processor/RowPlacement;->TOP:Lcom/univocity/parsers/common/processor/RowPlacement;

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;-><init>(Lcom/univocity/parsers/common/processor/RowPlacement;Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/processor/RowPlacement;Lcom/univocity/parsers/common/processor/ObjectRowListProcessor;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;-><init>(Lcom/univocity/parsers/common/processor/RowPlacement;Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V

    return-void
.end method
