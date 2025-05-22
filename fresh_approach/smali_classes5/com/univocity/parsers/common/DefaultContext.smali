.class public Lcom/univocity/parsers/common/DefaultContext;
.super Ljava/lang/Object;
.source "DefaultContext.java"

# interfaces
.implements Lcom/univocity/parsers/common/Context;


# instance fields
.field final columnMap:Lcom/univocity/parsers/common/ColumnMap;

.field final errorContentLength:I

.field final output:Lcom/univocity/parsers/common/ParserOutput;

.field private recordFactory:Lcom/univocity/parsers/common/record/RecordFactory;

.field protected stopped:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/DefaultContext;-><init>(Lcom/univocity/parsers/common/ParserOutput;I)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/ParserOutput;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/univocity/parsers/common/DefaultContext;->stopped:Z

    .line 38
    iput-object p1, p0, Lcom/univocity/parsers/common/DefaultContext;->output:Lcom/univocity/parsers/common/ParserOutput;

    .line 39
    iput p2, p0, Lcom/univocity/parsers/common/DefaultContext;->errorContentLength:I

    .line 40
    new-instance p2, Lcom/univocity/parsers/common/ColumnMap;

    invoke-direct {p2, p0, p1}, Lcom/univocity/parsers/common/ColumnMap;-><init>(Lcom/univocity/parsers/common/Context;Lcom/univocity/parsers/common/ParserOutput;)V

    iput-object p2, p0, Lcom/univocity/parsers/common/DefaultContext;->columnMap:Lcom/univocity/parsers/common/ColumnMap;

    return-void
.end method


# virtual methods
.method public columnsReordered()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->isColumnReorderingEnabled()Z

    move-result v0

    return v0
.end method

.method public currentColumn()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->getCurrentColumn()I

    move-result v0

    return v0
.end method

.method public currentRecord()J
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->getCurrentRecord()J

    move-result-wide v0

    return-wide v0
.end method

.method public errorContentLength()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/univocity/parsers/common/DefaultContext;->errorContentLength:I

    return v0
.end method

.method public extractedFieldIndexes()[I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->getSelectedIndexes()[I

    move-result-object v0

    return-object v0
.end method

.method public headers()[Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Enum;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->columnMap:Lcom/univocity/parsers/common/ColumnMap;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/ColumnMap;->indexOf(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->columnMap:Lcom/univocity/parsers/common/ColumnMap;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/ColumnMap;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isStopped()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/univocity/parsers/common/DefaultContext;->stopped:Z

    return v0
.end method

.method public recordMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->recordFactory:Lcom/univocity/parsers/common/record/RecordFactory;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/univocity/parsers/common/record/RecordFactory;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/record/RecordFactory;-><init>(Lcom/univocity/parsers/common/Context;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->recordFactory:Lcom/univocity/parsers/common/record/RecordFactory;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->recordFactory:Lcom/univocity/parsers/common/record/RecordFactory;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/record/RecordFactory;->getRecordMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;

    move-result-object v0

    return-object v0
.end method

.method reset()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->output:Lcom/univocity/parsers/common/ParserOutput;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/univocity/parsers/common/ParserOutput;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->recordFactory:Lcom/univocity/parsers/common/record/RecordFactory;

    .line 95
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->columnMap:Lcom/univocity/parsers/common/ColumnMap;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/ColumnMap;->reset()V

    return-void
.end method

.method public selectedHeaders()[Ljava/lang/String;
    .locals 5

    .line 52
    invoke-virtual {p0}, Lcom/univocity/parsers/common/DefaultContext;->extractedFieldIndexes()[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/univocity/parsers/common/DefaultContext;->headers()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 56
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 57
    aget v4, v0, v3

    aget-object v4, v2, v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/univocity/parsers/common/DefaultContext;->headers()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/univocity/parsers/common/DefaultContext;->stopped:Z

    return-void
.end method

.method public toRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->recordFactory:Lcom/univocity/parsers/common/record/RecordFactory;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/univocity/parsers/common/record/RecordFactory;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/record/RecordFactory;-><init>(Lcom/univocity/parsers/common/Context;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->recordFactory:Lcom/univocity/parsers/common/record/RecordFactory;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/DefaultContext;->recordFactory:Lcom/univocity/parsers/common/record/RecordFactory;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/record/RecordFactory;->newRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;

    move-result-object p1

    return-object p1
.end method
