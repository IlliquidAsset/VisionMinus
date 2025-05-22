.class public Lcom/univocity/parsers/common/processor/core/CompositeProcessor;
.super Ljava/lang/Object;
.source "CompositeProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final processors:[Lcom/univocity/parsers/common/processor/core/Processor;


# direct methods
.method public varargs constructor <init>([Lcom/univocity/parsers/common/processor/core/Processor;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/CompositeProcessor;->processors:[Lcom/univocity/parsers/common/processor/core/Processor;

    return-void
.end method


# virtual methods
.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/CompositeProcessor;->processors:[Lcom/univocity/parsers/common/processor/core/Processor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 80
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/univocity/parsers/common/processor/core/Processor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/CompositeProcessor;->processors:[Lcom/univocity/parsers/common/processor/core/Processor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 47
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/univocity/parsers/common/processor/core/Processor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/CompositeProcessor;->processors:[Lcom/univocity/parsers/common/processor/core/Processor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 66
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/univocity/parsers/common/processor/core/Processor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
