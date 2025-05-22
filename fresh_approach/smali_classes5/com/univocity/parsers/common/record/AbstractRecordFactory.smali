.class public abstract Lcom/univocity/parsers/common/record/AbstractRecordFactory;
.super Ljava/lang/Object;
.source "AbstractRecordFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/univocity/parsers/common/record/Record;",
        "M::",
        "Lcom/univocity/parsers/common/record/RecordMetaData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final metaData:Lcom/univocity/parsers/common/record/RecordMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/record/AbstractRecordFactory;->createMetaData(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/record/RecordMetaData;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/record/AbstractRecordFactory;->metaData:Lcom/univocity/parsers/common/record/RecordMetaData;

    return-void
.end method


# virtual methods
.method public abstract createMetaData(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/record/RecordMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/Context;",
            ")TM;"
        }
    .end annotation
.end method

.method public final getRecordMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/univocity/parsers/common/record/AbstractRecordFactory;->metaData:Lcom/univocity/parsers/common/record/RecordMetaData;

    return-object v0
.end method

.method public abstract newRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method
