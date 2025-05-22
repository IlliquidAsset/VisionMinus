.class Lcom/univocity/parsers/common/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final process([Ljava/lang/String;Lcom/univocity/parsers/common/processor/core/Processor;Lcom/univocity/parsers/common/Context;Lcom/univocity/parsers/common/ProcessorErrorHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/univocity/parsers/common/Context;",
            ">([",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TC;>;TC;",
            "Lcom/univocity/parsers/common/ProcessorErrorHandler<",
            "TC;>;)V"
        }
    .end annotation

    .line 30
    :try_start_0
    invoke-interface {p1, p0, p2}, Lcom/univocity/parsers/common/processor/core/Processor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    :try_end_0
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    .line 57
    invoke-interface {p2}, Lcom/univocity/parsers/common/Context;->errorContentLength()I

    move-result p2

    invoke-static {p1, p3, p0, p2}, Lcom/univocity/parsers/common/Internal;->throwDataProcessingException(Lcom/univocity/parsers/common/processor/core/Processor;Ljava/lang/Throwable;[Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0, p2}, Lcom/univocity/parsers/common/DataProcessingException;->setContext(Lcom/univocity/parsers/common/Context;)V

    .line 34
    invoke-virtual {v0}, Lcom/univocity/parsers/common/DataProcessingException;->isFatal()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/univocity/parsers/common/DataProcessingException;->isHandled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/univocity/parsers/common/DataProcessingException;->getColumnIndex()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    instance-of v1, p3, Lcom/univocity/parsers/common/RetryableErrorHandler;

    if-eqz v1, :cond_0

    .line 35
    move-object v1, p3

    check-cast v1, Lcom/univocity/parsers/common/RetryableErrorHandler;

    .line 36
    invoke-virtual {v0, p3}, Lcom/univocity/parsers/common/DataProcessingException;->markAsHandled(Lcom/univocity/parsers/common/ProcessorErrorHandler;)V

    .line 37
    invoke-virtual {v1, v0, p0, p2}, Lcom/univocity/parsers/common/RetryableErrorHandler;->handleError(Lcom/univocity/parsers/common/DataProcessingException;[Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    .line 38
    invoke-virtual {v1}, Lcom/univocity/parsers/common/RetryableErrorHandler;->isRecordSkipped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    :try_start_1
    invoke-interface {p1, p0, p2}, Lcom/univocity/parsers/common/processor/core/Processor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    :try_end_1
    .catch Lcom/univocity/parsers/common/DataProcessingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    .line 45
    invoke-interface {p2}, Lcom/univocity/parsers/common/Context;->errorContentLength()I

    move-result v2

    invoke-static {p1, v1, p0, v2}, Lcom/univocity/parsers/common/Internal;->throwDataProcessingException(Lcom/univocity/parsers/common/processor/core/Processor;Ljava/lang/Throwable;[Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 50
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/univocity/parsers/common/Context;->errorContentLength()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setErrorContentLength(I)V

    .line 51
    invoke-virtual {v0}, Lcom/univocity/parsers/common/DataProcessingException;->isFatal()Z

    move-result p1

    if-nez p1, :cond_1

    .line 54
    invoke-virtual {v0, p3}, Lcom/univocity/parsers/common/DataProcessingException;->markAsHandled(Lcom/univocity/parsers/common/ProcessorErrorHandler;)V

    .line 55
    invoke-interface {p3, v0, p0, p2}, Lcom/univocity/parsers/common/ProcessorErrorHandler;->handleError(Lcom/univocity/parsers/common/DataProcessingException;[Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    :goto_1
    return-void

    .line 52
    :cond_1
    throw v0
.end method

.method private static final throwDataProcessingException(Lcom/univocity/parsers/common/processor/core/Processor;Ljava/lang/Throwable;[Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/univocity/parsers/common/DataProcessingException;
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error processing input row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/univocity/parsers/common/AbstractException;->restrictContent(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " using Processor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p2}, Lcom/univocity/parsers/common/AbstractException;->restrictContent(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 67
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/univocity/parsers/common/DataProcessingException;->restrictContent(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    throw v0
.end method
