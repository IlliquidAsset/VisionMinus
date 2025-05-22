.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;
.super Lcom/univocity/parsers/common/DefaultConversionProcessor;
.source "AbstractObjectProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/DefaultConversionProcessor;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/univocity/parsers/common/DefaultConversionProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract rowProcessed([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method public rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;->applyConversions([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;->rowProcessed([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    :cond_0
    return-void
.end method
