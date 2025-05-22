.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;
.super Ljava/lang/Object;
.source "AbstractBatchedColumnProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;
.implements Lcom/univocity/parsers/common/processor/core/BatchedColumnReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TT;>;",
        "Lcom/univocity/parsers/common/processor/core/BatchedColumnReader<",
        "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-direct {v0, p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;-><init>(I)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    .line 53
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->rowsPerBatch:I

    return-void
.end method


# virtual methods
.method public abstract batchProcessed(I)V
.end method

.method public getBatchesProcessed()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchesProcessed:I

    return v0
.end method

.method public getColumn(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValues(ILjava/lang/Class;)Ljava/util/List;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValues(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

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
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValuesAsMapOfNames()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders()[Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowsPerBatch()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->rowsPerBatch:I

    return v0
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    iget p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchCount:I

    if-lez p1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchProcessed(I)V

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

    .line 58
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->reset()V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchCount:I

    .line 60
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchesProcessed:I

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
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->putColumnValuesInMapOfNames(Ljava/util/Map;)V

    return-void
.end method

.method public rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0, p1, p2}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->addValuesToColumns([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    .line 66
    iget p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchCount:I

    .line 68
    iget p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->rowsPerBatch:I

    if-lt p1, p2, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchProcessed(I)V

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchCount:I

    .line 71
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->clearValues()V

    .line 72
    iget p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchesProcessed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractBatchedColumnProcessor;->batchesProcessed:I

    :cond_0
    return-void
.end method
