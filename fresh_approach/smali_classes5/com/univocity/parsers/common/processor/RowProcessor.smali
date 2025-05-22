.class public interface abstract Lcom/univocity/parsers/common/processor/RowProcessor;
.super Ljava/lang/Object;
.source "RowProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
.end method

.method public abstract processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
.end method

.method public abstract rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
.end method
