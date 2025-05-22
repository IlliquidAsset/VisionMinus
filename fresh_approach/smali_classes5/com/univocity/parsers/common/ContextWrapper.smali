.class public abstract Lcom/univocity/parsers/common/ContextWrapper;
.super Ljava/lang/Object;
.source "ContextWrapper.java"

# interfaces
.implements Lcom/univocity/parsers/common/Context;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/Context;"
    }
.end annotation


# instance fields
.field protected final context:Lcom/univocity/parsers/common/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    return-void
.end method


# virtual methods
.method public columnsReordered()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->columnsReordered()Z

    move-result v0

    return v0
.end method

.method public currentColumn()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->currentColumn()I

    move-result v0

    return v0
.end method

.method public currentRecord()J
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->currentRecord()J

    move-result-wide v0

    return-wide v0
.end method

.method public errorContentLength()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->errorContentLength()I

    move-result v0

    return v0
.end method

.method public extractedFieldIndexes()[I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->extractedFieldIndexes()[I

    move-result-object v0

    return-object v0
.end method

.method public headers()[Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

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

    .line 60
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/Context;->indexOf(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/Context;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isStopped()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->isStopped()Z

    move-result v0

    return v0
.end method

.method public recordMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->recordMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;

    move-result-object v0

    return-object v0
.end method

.method public selectedHeaders()[Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->selectedHeaders()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stop()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->stop()V

    return-void
.end method

.method public toRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/univocity/parsers/common/ContextWrapper;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/Context;->toRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;

    move-result-object p1

    return-object p1
.end method
