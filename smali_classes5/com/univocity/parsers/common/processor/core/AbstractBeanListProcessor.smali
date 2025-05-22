.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;
.source "AbstractBeanListProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor<",
        "TT;TC;>;"
    }
.end annotation


# instance fields
.field private beans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final expectedBeanCount:I

.field private headers:[Ljava/lang/String;


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

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    if-gtz p2, :cond_0

    const/16 p2, 0x2710

    .line 67
    :cond_0
    iput p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->expectedBeanCount:I

    return-void
.end method


# virtual methods
.method public beanProcessed(Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TC;)V"
        }
    .end annotation

    .line 80
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->beans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->beans:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHeaders()[Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->headers:[Ljava/lang/String;

    .line 101
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 94
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->expectedBeanCount:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBeanListProcessor;->beans:Ljava/util/List;

    return-void
.end method
