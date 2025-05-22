.class public abstract Lcom/univocity/parsers/common/processor/BeanProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;
.source "BeanProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor<",
        "TT;",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
