.class abstract Lcom/univocity/parsers/common/AbstractException;
.super Ljava/lang/RuntimeException;
.source "AbstractException.java"


# static fields
.field private static final serialVersionUID:J = -0x29899dc4e90a6427L


# instance fields
.field protected errorContentLength:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/univocity/parsers/common/AbstractException;->errorContentLength:I

    return-void
.end method

.method protected static printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_4

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    return-object p0

    .line 90
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 94
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 97
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static restrictContent(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->restrictContent(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static restrictContent(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected abstract getDetails()Ljava/lang/String;
.end method

.method protected abstract getErrorDescription()Ljava/lang/String;
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    .line 43
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractException;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/AbstractException;->updateMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractException;->getDetails()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nInternal state when error was thrown: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected restrictContent(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 128
    iget v0, p0, Lcom/univocity/parsers/common/AbstractException;->errorContentLength:I

    invoke-static {v0, p1}, Lcom/univocity/parsers/common/AbstractException;->restrictContent(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected restrictContent(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 132
    iget v0, p0, Lcom/univocity/parsers/common/AbstractException;->errorContentLength:I

    invoke-static {v0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->restrictContent(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected restrictContent([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 136
    iget v0, p0, Lcom/univocity/parsers/common/AbstractException;->errorContentLength:I

    invoke-static {v0, p1}, Lcom/univocity/parsers/common/AbstractException;->restrictContent(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setErrorContentLength(I)V
    .locals 2

    .line 117
    iput p1, p0, Lcom/univocity/parsers/common/AbstractException;->errorContentLength:I

    .line 118
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    instance-of v1, v0, Lcom/univocity/parsers/common/AbstractException;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/univocity/parsers/common/AbstractException;

    .line 121
    iget v1, v0, Lcom/univocity/parsers/common/AbstractException;->errorContentLength:I

    if-eq v1, p1, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/AbstractException;->setErrorContentLength(I)V

    :cond_0
    return-void
.end method

.method protected updateMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
