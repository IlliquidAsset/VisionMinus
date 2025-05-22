.class public Lcom/univocity/parsers/common/record/RecordFactory;
.super Lcom/univocity/parsers/common/record/AbstractRecordFactory;
.source "RecordFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/record/AbstractRecordFactory<",
        "Lcom/univocity/parsers/common/record/Record;",
        "Lcom/univocity/parsers/common/record/RecordMetaDataImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/record/AbstractRecordFactory;-><init>(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMetaData(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/record/RecordMetaData;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/record/RecordFactory;->createMetaData(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    move-result-object p1

    return-object p1
.end method

.method public createMetaData(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/record/RecordMetaDataImpl;
    .locals 1

    .line 50
    new-instance v0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    invoke-direct {v0, p1}, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;-><init>(Lcom/univocity/parsers/common/Context;)V

    return-object v0
.end method

.method public newRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;
    .locals 2

    .line 45
    new-instance v0, Lcom/univocity/parsers/common/record/RecordImpl;

    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordFactory;->metaData:Lcom/univocity/parsers/common/record/RecordMetaData;

    check-cast v1, Lcom/univocity/parsers/common/record/RecordMetaDataImpl;

    invoke-direct {v0, p1, v1}, Lcom/univocity/parsers/common/record/RecordImpl;-><init>([Ljava/lang/String;Lcom/univocity/parsers/common/record/RecordMetaDataImpl;)V

    return-object v0
.end method
