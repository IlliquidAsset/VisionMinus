.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;
.source "AbstractObjectListProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private expectedRowCount:I

.field private headers:[Ljava/lang/String;

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;-><init>()V

    if-gtz p1, :cond_0

    const/16 p1, 0x2710

    .line 66
    :cond_0
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->expectedRowCount:I

    return-void
.end method


# virtual methods
.method public getHeaders()[Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->rows:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    .line 90
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->headers:[Ljava/lang/String;

    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->expectedRowCount:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->rows:Ljava/util/List;

    return-void
.end method

.method public rowProcessed([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 84
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->rows:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
