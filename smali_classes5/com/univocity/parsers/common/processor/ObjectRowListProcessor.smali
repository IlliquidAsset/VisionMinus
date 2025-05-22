.class public Lcom/univocity/parsers/common/processor/ObjectRowListProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;
.source "ObjectRowListProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
