.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;
.source "AbstractMultiBeanRowProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private record:J

.field private final row:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;-><init>([Ljava/lang/Class;)V

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->row:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->record:J

    return-void
.end method

.method private submitRow(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->row:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->row:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->rowProcessed(Ljava/util/Map;Lcom/univocity/parsers/common/Context;)V

    .line 73
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->row:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final beanProcessed(Ljava/lang/Class;Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "TC;)V"
        }
    .end annotation

    .line 63
    iget-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->record:J

    invoke-interface {p3}, Lcom/univocity/parsers/common/Context;->currentRecord()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->record:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 64
    invoke-direct {p0, p3}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->submitRow(Lcom/univocity/parsers/common/Context;)V

    .line 66
    :cond_0
    invoke-interface {p3}, Lcom/univocity/parsers/common/Context;->currentRecord()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->record:J

    .line 67
    iget-object p3, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->row:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->submitRow(Lcom/univocity/parsers/common/Context;)V

    .line 80
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->record:J

    .line 57
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanRowProcessor;->row:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method protected abstract rowProcessed(Ljava/util/Map;Lcom/univocity/parsers/common/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;TC;)V"
        }
    .end annotation
.end method
