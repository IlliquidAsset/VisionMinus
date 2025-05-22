.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;
.super Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;
.source "AbstractBeanProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor<",
        "TT;>;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-void
.end method


# virtual methods
.method public abstract beanProcessed(Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TC;)V"
        }
    .end annotation
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/BeanConversionProcessor;->initialize([Ljava/lang/String;)V

    return-void
.end method

.method public final rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TC;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->createBean([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->beanProcessed(Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    :cond_0
    return-void
.end method
