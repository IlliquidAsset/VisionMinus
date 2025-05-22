.class public abstract Lcom/univocity/parsers/common/iterators/RecordIterator;
.super Lcom/univocity/parsers/common/iterators/ParserIterator;
.source "RecordIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/iterators/ParserIterator<",
        "Lcom/univocity/parsers/common/record/Record;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/AbstractParser;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/iterators/ParserIterator;-><init>(Lcom/univocity/parsers/common/AbstractParser;)V

    return-void
.end method


# virtual methods
.method protected final nextResult()Lcom/univocity/parsers/common/record/Record;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/univocity/parsers/common/iterators/RecordIterator;->parser:Lcom/univocity/parsers/common/AbstractParser;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->parseNextRecord()Lcom/univocity/parsers/common/record/Record;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic nextResult()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/univocity/parsers/common/iterators/RecordIterator;->nextResult()Lcom/univocity/parsers/common/record/Record;

    move-result-object v0

    return-object v0
.end method
