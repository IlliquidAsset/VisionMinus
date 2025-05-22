.class public abstract Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;
.super Ljava/lang/Object;
.source "RowWriterProcessorSwitch.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowWriterProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private minimumRowLength:I

.field private selectedRowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->selectedRowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    const/high16 v0, -0x80000000

    .line 38
    iput v0, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->minimumRowLength:I

    return-void
.end method


# virtual methods
.method protected abstract describeSwitch()Ljava/lang/String;
.end method

.method protected getHeaders()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getHeaders(Ljava/lang/Object;)[Ljava/lang/String;
.end method

.method public abstract getHeaders(Ljava/util/Map;Ljava/util/Map;)[Ljava/lang/String;
.end method

.method protected getIndexes()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMinimumRowLength()I
    .locals 5

    .line 111
    iget v0, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->minimumRowLength:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->minimumRowLength:I

    .line 113
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->getHeaders()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->getHeaders()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->minimumRowLength:I

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->getIndexes()[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->getIndexes()[I

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    .line 118
    iget v4, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->minimumRowLength:I

    if-le v3, v4, :cond_1

    .line 119
    iput v3, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->minimumRowLength:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_2
    iget v0, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->minimumRowLength:I

    return v0
.end method

.method public rowProcessorSwitched(Lcom/univocity/parsers/common/processor/RowWriterProcessor;Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "*>;",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract switchRowProcessor(Ljava/lang/Object;)Lcom/univocity/parsers/common/processor/RowWriterProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "*>;"
        }
    .end annotation
.end method

.method public write(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;
    .locals 3

    .line 129
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->switchRowProcessor(Ljava/lang/Object;)Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 136
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->selectedRowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    if-eq v0, v1, :cond_0

    .line 137
    invoke-virtual {p0, v1, v0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->rowProcessorSwitched(Lcom/univocity/parsers/common/processor/RowWriterProcessor;Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V

    .line 138
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->selectedRowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->getIndexes()[I

    move-result-object v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p3, v1

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->selectedRowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/univocity/parsers/common/processor/RowWriterProcessor;->write(Ljava/lang/Object;[Ljava/lang/String;[I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 131
    :cond_3
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find switch for input. Headers: {headers}, indices to write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/RowWriterProcessorSwitch;->describeSwitch()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "headers"

    invoke-virtual {v0, p3, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 134
    throw v0
.end method
