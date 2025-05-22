.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;
.source "AbstractBatchedObjectColumnProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;
.implements Lcom/univocity/parsers/common/processor/core/BatchedColumnReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor<",
        "TT;>;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TT;>;",
        "Lcom/univocity/parsers/common/processor/core/BatchedColumnReader<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private batchCount:I

.field private batchesProcessed:I

.field private final rowsPerBatch:I

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
.method public constructor <init>(I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;-><init>()V

    .line 58
    new-instance v0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-direct {v0, p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;-><init>(I)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    .line 59
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->rowsPerBatch:I

    return-void
.end method


# virtual methods
.method public abstract batchProcessed(I)V
.end method

.method public getBatchesProcessed()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchesProcessed:I

    return v0
.end method

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

    .line 128
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 150
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 123
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 139
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 98
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 118
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 113
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValuesAsMapOfNames()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders()[Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowsPerBatch()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->rowsPerBatch:I

    return v0
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    .line 86
    iget p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchCount:I

    if-lez p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchProcessed(I)V

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

    .line 64
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    .line 65
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->reset()V

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchCount:I

    .line 67
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchesProcessed:I

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

    .line 108
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 103
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 72
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0, p1, p2}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->addValuesToColumns([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    .line 73
    iget p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchCount:I

    .line 75
    iget p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->rowsPerBatch:I

    if-lt p1, p2, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchProcessed(I)V

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchCount:I

    .line 78
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->clearValues()V

    .line 79
    iget p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchesProcessed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedObjectColumnProcessor;->batchesProcessed:I

    :cond_0
    return-void
.end method
