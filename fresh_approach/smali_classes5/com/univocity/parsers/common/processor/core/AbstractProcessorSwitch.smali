.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;
.super Ljava/lang/Object;
.source "AbstractProcessorSwitch.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;
.implements Lcom/univocity/parsers/common/processor/core/ColumnOrderDependent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TT;>;",
        "Lcom/univocity/parsers/common/processor/core/ColumnOrderDependent;"
    }
.end annotation


# instance fields
.field private contextForProcessor:Lcom/univocity/parsers/common/ContextWrapper;

.field private processors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/univocity/parsers/common/processor/core/Processor;",
            "Lcom/univocity/parsers/common/ContextWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private selectedProcessor:Lcom/univocity/parsers/common/processor/core/Processor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexes()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public preventColumnReordering()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 160
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->selectedProcessor:Lcom/univocity/parsers/common/processor/core/Processor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->processorSwitched(Lcom/univocity/parsers/common/processor/core/Processor;Lcom/univocity/parsers/common/processor/core/Processor;)V

    .line 161
    sget-object p1, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->selectedProcessor:Lcom/univocity/parsers/common/processor/core/Processor;

    .line 162
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->processors:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/processor/core/Processor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/common/Context;

    invoke-interface {v1, v0}, Lcom/univocity/parsers/common/processor/core/Processor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->processors:Ljava/util/Map;

    .line 104
    sget-object p1, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->selectedProcessor:Lcom/univocity/parsers/common/processor/core/Processor;

    return-void
.end method

.method public processorSwitched(Lcom/univocity/parsers/common/processor/core/Processor;Lcom/univocity/parsers/common/processor/core/Processor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 80
    instance-of v0, p1, Lcom/univocity/parsers/common/processor/RowProcessor;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 81
    instance-of v0, p2, Lcom/univocity/parsers/common/processor/RowProcessor;

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    check-cast p1, Lcom/univocity/parsers/common/processor/RowProcessor;

    check-cast p2, Lcom/univocity/parsers/common/processor/RowProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->rowProcessorSwitched(Lcom/univocity/parsers/common/processor/RowProcessor;Lcom/univocity/parsers/common/processor/RowProcessor;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 85
    instance-of v0, p2, Lcom/univocity/parsers/common/processor/RowProcessor;

    if-eqz v0, :cond_2

    .line 86
    check-cast p1, Lcom/univocity/parsers/common/processor/RowProcessor;

    check-cast p2, Lcom/univocity/parsers/common/processor/RowProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->rowProcessorSwitched(Lcom/univocity/parsers/common/processor/RowProcessor;Lcom/univocity/parsers/common/processor/RowProcessor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->switchRowProcessor([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/processor/core/Processor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->selectedProcessor:Lcom/univocity/parsers/common/processor/core/Processor;

    if-eq v0, v1, :cond_5

    .line 114
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->processors:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/ContextWrapper;

    iput-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->contextForProcessor:Lcom/univocity/parsers/common/ContextWrapper;

    .line 116
    sget-object v1, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    if-eq v0, v1, :cond_6

    .line 117
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->contextForProcessor:Lcom/univocity/parsers/common/ContextWrapper;

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;

    invoke-direct {v1, p0, p2}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;-><init>(Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;Lcom/univocity/parsers/common/Context;)V

    iput-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->contextForProcessor:Lcom/univocity/parsers/common/ContextWrapper;

    .line 134
    invoke-interface {v0, v1}, Lcom/univocity/parsers/common/processor/core/Processor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    .line 135
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->processors:Ljava/util/Map;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->contextForProcessor:Lcom/univocity/parsers/common/ContextWrapper;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->selectedProcessor:Lcom/univocity/parsers/common/processor/core/Processor;

    invoke-virtual {p0, p2, v0}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->processorSwitched(Lcom/univocity/parsers/common/processor/core/Processor;Lcom/univocity/parsers/common/processor/core/Processor;)V

    .line 139
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->selectedProcessor:Lcom/univocity/parsers/common/processor/core/Processor;

    .line 140
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->getIndexes()[I

    move-result-object p2

    if-eqz p2, :cond_4

    .line 141
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->getIndexes()[I

    move-result-object p2

    .line 142
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 143
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 144
    aget v2, p2, v1

    .line 145
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 146
    aget-object v2, p1, v2

    aput-object v2, v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object p1, v0

    .line 151
    :cond_4
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->selectedProcessor:Lcom/univocity/parsers/common/processor/core/Processor;

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->contextForProcessor:Lcom/univocity/parsers/common/ContextWrapper;

    invoke-interface {p2, p1, v0}, Lcom/univocity/parsers/common/processor/core/Processor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    goto :goto_1

    .line 154
    :cond_5
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->contextForProcessor:Lcom/univocity/parsers/common/ContextWrapper;

    invoke-interface {v1, p1, p2}, Lcom/univocity/parsers/common/processor/core/Processor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public rowProcessorSwitched(Lcom/univocity/parsers/common/processor/RowProcessor;Lcom/univocity/parsers/common/processor/RowProcessor;)V
    .locals 0

    return-void
.end method

.method protected abstract switchRowProcessor([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/processor/core/Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;"
        }
    .end annotation
.end method
