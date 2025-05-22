.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractListProcessor;
.super Ljava/lang/Object;
.source "AbstractListProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private headers:[Ljava/lang/String;

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()[Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractListProcessor;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractListProcessor;->rows:Ljava/util/List;

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

    .line 69
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractListProcessor;->headers:[Ljava/lang/String;

    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractListProcessor;->rows:Ljava/util/List;

    return-void
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

    .line 64
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractListProcessor;->rows:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
