.class abstract Lcom/univocity/parsers/common/iterators/ParserIterator;
.super Ljava/lang/Object;
.source "ParserIterator.java"

# interfaces
.implements Lcom/univocity/parsers/common/IterableResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/IterableResult<",
        "TT;",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;"
    }
.end annotation


# instance fields
.field protected final parser:Lcom/univocity/parsers/common/AbstractParser;


# direct methods
.method protected constructor <init>(Lcom/univocity/parsers/common/AbstractParser;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/univocity/parsers/common/iterators/ParserIterator;->parser:Lcom/univocity/parsers/common/AbstractParser;

    return-void
.end method


# virtual methods
.method protected abstract beginParsing()V
.end method

.method public bridge synthetic getContext()Lcom/univocity/parsers/common/Context;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/univocity/parsers/common/iterators/ParserIterator;->getContext()Lcom/univocity/parsers/common/ParsingContext;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lcom/univocity/parsers/common/ParsingContext;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/univocity/parsers/common/iterators/ParserIterator;->parser:Lcom/univocity/parsers/common/AbstractParser;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->getContext()Lcom/univocity/parsers/common/ParsingContext;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Lcom/univocity/parsers/common/ResultIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/univocity/parsers/common/ResultIterator<",
            "TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/iterators/ParserIterator$1;-><init>(Lcom/univocity/parsers/common/iterators/ParserIterator;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/univocity/parsers/common/iterators/ParserIterator;->iterator()Lcom/univocity/parsers/common/ResultIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract nextResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
