.class interface abstract Lcom/univocity/parsers/common/processor/core/BatchedColumnReader;
.super Ljava/lang/Object;
.source "BatchedColumnReader.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/ColumnReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/core/ColumnReader<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract batchProcessed(I)V
.end method

.method public abstract getBatchesProcessed()I
.end method

.method public abstract getRowsPerBatch()I
.end method
