.class public abstract Lcom/univocity/parsers/common/iterators/RowIterator;
.super Lcom/univocity/parsers/common/iterators/ParserIterator;
.source "RowIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/iterators/ParserIterator<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/AbstractParser;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/iterators/ParserIterator;-><init>(Lcom/univocity/parsers/common/AbstractParser;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic nextResult()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/univocity/parsers/common/iterators/RowIterator;->nextResult()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final nextResult()[Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/univocity/parsers/common/iterators/RowIterator;->parser:Lcom/univocity/parsers/common/AbstractParser;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->parseNext()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
