.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;
.super Ljava/lang/Object;
.source "AbstractColumnProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;
.implements Lcom/univocity/parsers/common/processor/core/ColumnReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TT;>;",
        "Lcom/univocity/parsers/common/processor/core/ColumnReader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    .line 46
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-direct {v0, p1}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;-><init>(I)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    return-void
.end method


# virtual methods
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

    .line 108
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 103
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 78
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 98
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 93
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getColumnValuesAsMapOfNames()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders()[Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 83
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

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

    .line 64
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractColumnProcessor;->splitter:Lcom/univocity/parsers/common/processor/core/ColumnSplitter;

    invoke-virtual {v0, p1, p2}, Lcom/univocity/parsers/common/processor/core/ColumnSplitter;->addValuesToColumns([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
