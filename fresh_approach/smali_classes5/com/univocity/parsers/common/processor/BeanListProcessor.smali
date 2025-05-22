.class public Lcom/univocity/parsers/common/processor/BeanListProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;
.source "BeanListProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor<",
        "TT;",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
