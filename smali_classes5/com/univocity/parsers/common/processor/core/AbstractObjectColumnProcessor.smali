.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;
.source "AbstractObjectColumnProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/ColumnReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor<",
        "TT;>;",
        "Lcom/univocity/parsers/common/processor/core/ColumnReader<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/processor/core/ColumnSplitter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    .line 53
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;-><init>()V

    .line 62
    new-instance v0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-direct {v0, p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;-><init>(I)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    return-void
.end method


# virtual methods
.method public getColumn(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValues(ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getColumn(ILjava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0, p1, p2}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValues(ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getColumn(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValues(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getColumn(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0, p1, p2}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValues(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getColumnValuesAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnValuesAsMapOfIndexes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValuesAsMapOfIndexes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnValuesAsMapOfNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValuesAsMapOfNames()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders()[Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 102
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    .line 103
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->reset()V

    return-void
.end method

.method public final putColumnValuesInMapOfIndexes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->putColumnValuesInMapOfIndexes(Ljava/util/Map;)V

    return-void
.end method

.method public final putColumnValuesInMapOfNames(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->putColumnValuesInMapOfNames(Ljava/util/Map;)V

    return-void
.end method

.method public rowProcessed([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0, p1, p2}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->addValuesToColumns([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
