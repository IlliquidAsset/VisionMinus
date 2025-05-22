.class public interface abstract Lcom/univocity/parsers/common/Context;
.super Ljava/lang/Object;
.source "Context.java"


# virtual methods
.method public abstract columnsReordered()Z
.end method

.method public abstract currentColumn()I
.end method

.method public abstract currentRecord()J
.end method

.method public abstract errorContentLength()I
.end method

.method public abstract extractedFieldIndexes()[I
.end method

.method public abstract headers()[Ljava/lang/String;
.end method

.method public abstract indexOf(Ljava/lang/Enum;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract indexOf(Ljava/lang/String;)I
.end method

.method public abstract isStopped()Z
.end method

.method public abstract recordMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;
.end method

.method public abstract selectedHeaders()[Ljava/lang/String;
.end method

.method public abstract stop()V
.end method

.method public abstract toRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;
.end method
