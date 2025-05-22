.class public Lcom/univocity/parsers/common/DataProcessingException;
.super Lcom/univocity/parsers/common/TextParsingException;
.source "DataProcessingException.java"


# static fields
.field private static final serialVersionUID:J = 0x1394cac42a104607L


# instance fields
.field private columnIndex:I

.field private columnName:Ljava/lang/String;

.field private fatal:Z

.field private handled:Z

.field private row:[Ljava/lang/Object;

.field private value:Ljava/lang/Object;

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0, p1, p4}, Lcom/univocity/parsers/common/TextParsingException;-><init>(Lcom/univocity/parsers/common/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/univocity/parsers/common/DataProcessingException;->values:Ljava/util/Map;

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/univocity/parsers/common/DataProcessingException;->fatal:Z

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/univocity/parsers/common/DataProcessingException;->handled:Z

    .line 102
    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setColumnIndex(I)V

    .line 103
    iput-object p3, p0, Lcom/univocity/parsers/common/DataProcessingException;->row:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, -0x1

    .line 78
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private getExtractedColumnIndex()I
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->extractedIndexes:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->columnIndex:I

    iget-object v1, p0, Lcom/univocity/parsers/common/DataProcessingException;->extractedIndexes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->columnIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->extractedIndexes:[I

    iget v1, p0, Lcom/univocity/parsers/common/DataProcessingException;->columnIndex:I

    aget v0, v0, v1

    return v0

    .line 220
    :cond_0
    iget v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->columnIndex:I

    return v0
.end method


# virtual methods
.method public final getColumnIndex()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->columnIndex:I

    return v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->columnName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/univocity/parsers/common/DataProcessingException;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/univocity/parsers/common/DataProcessingException;->getExtractedColumnIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/univocity/parsers/common/DataProcessingException;->getExtractedColumnIndex()I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/univocity/parsers/common/DataProcessingException;->getExtractedColumnIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDetails()Ljava/lang/String;
    .locals 4

    .line 113
    invoke-super {p0}, Lcom/univocity/parsers/common/TextParsingException;->getDetails()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/univocity/parsers/common/DataProcessingException;->getRow()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 117
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 118
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/univocity/parsers/common/DataProcessingException;->restrictContent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "row"

    .line 121
    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/DataProcessingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/univocity/parsers/common/DataProcessingException;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/DataProcessingException;->restrictContent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/DataProcessingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/univocity/parsers/common/DataProcessingException;->getColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "columnName"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/DataProcessingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/univocity/parsers/common/DataProcessingException;->getColumnIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "columnIndex"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/DataProcessingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Error processing parsed input"

    return-object v0
.end method

.method public final getRow()[Ljava/lang/Object;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->row:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/DataProcessingException;->restrictContent([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 4

    .line 195
    iget v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->errorContentLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    return-object v0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->row:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/univocity/parsers/common/DataProcessingException;->columnIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 202
    aget-object v0, v0, v2

    return-object v0

    :cond_2
    return-object v1
.end method

.method final isFatal()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->fatal:Z

    return v0
.end method

.method public isHandled()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->handled:Z

    return v0
.end method

.method public final markAsHandled(Lcom/univocity/parsers/common/ProcessorErrorHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 265
    instance-of v0, p1, Lcom/univocity/parsers/common/NoopProcessorErrorHandler;

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/univocity/parsers/common/NoopRowProcessorErrorHandler;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/univocity/parsers/common/DataProcessingException;->handled:Z

    return-void
.end method

.method public final markAsNonFatal()V
    .locals 1

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->fatal:Z

    return-void
.end method

.method public final setColumnIndex(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/univocity/parsers/common/DataProcessingException;->columnIndex:I

    return-void
.end method

.method public final setColumnName(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/univocity/parsers/common/DataProcessingException;->columnName:Ljava/lang/String;

    return-void
.end method

.method public final setRow([Ljava/lang/Object;)V
    .locals 1

    .line 238
    iget v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->errorContentLength:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/univocity/parsers/common/DataProcessingException;->row:[Ljava/lang/Object;

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1

    .line 169
    iget v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->errorContentLength:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/univocity/parsers/common/DataProcessingException;->value:Ljava/lang/Object;

    return-void
.end method

.method public final setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 183
    iget v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->errorContentLength:I

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final updateMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 280
    iget v0, p0, Lcom/univocity/parsers/common/DataProcessingException;->errorContentLength:I

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_4

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x7b

    .line 289
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x7d

    .line 294
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v4, :cond_3

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 314
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v4, v2, 0x1

    .line 299
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "value"

    .line 301
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 302
    iget-object v6, p0, Lcom/univocity/parsers/common/DataProcessingException;->value:Ljava/lang/Object;

    goto :goto_3

    .line 303
    :cond_4
    iget-object v7, p0, Lcom/univocity/parsers/common/DataProcessingException;->values:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 304
    iget-object v6, p0, Lcom/univocity/parsers/common/DataProcessingException;->values:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 307
    invoke-virtual {p0, v6}, Lcom/univocity/parsers/common/DataProcessingException;->restrictContent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-virtual {v0, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    :cond_6
    move v2, v5

    goto :goto_0

    :cond_7
    :goto_4
    return-object p1
.end method
