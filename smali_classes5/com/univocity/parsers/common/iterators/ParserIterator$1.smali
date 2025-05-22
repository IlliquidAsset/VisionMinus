.class Lcom/univocity/parsers/common/iterators/ParserIterator$1;
.super Ljava/lang/Object;
.source "ParserIterator.java"

# interfaces
.implements Lcom/univocity/parsers/common/ResultIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/iterators/ParserIterator;->iterator()Lcom/univocity/parsers/common/ResultIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/ResultIterator<",
        "TT;",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;"
    }
.end annotation


# instance fields
.field next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field started:Z

.field final synthetic this$0:Lcom/univocity/parsers/common/iterators/ParserIterator;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/iterators/ParserIterator;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->this$0:Lcom/univocity/parsers/common/iterators/ParserIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Lcom/univocity/parsers/common/Context;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->getContext()Lcom/univocity/parsers/common/ParsingContext;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/univocity/parsers/common/ParsingContext;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->this$0:Lcom/univocity/parsers/common/iterators/ParserIterator;

    iget-object v0, v0, Lcom/univocity/parsers/common/iterators/ParserIterator;->parser:Lcom/univocity/parsers/common/AbstractParser;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->getContext()Lcom/univocity/parsers/common/ParsingContext;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 81
    iget-boolean v0, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->started:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 84
    :cond_1
    iput-boolean v2, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->started:Z

    .line 85
    iget-object v0, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->this$0:Lcom/univocity/parsers/common/iterators/ParserIterator;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/iterators/ParserIterator;->beginParsing()V

    .line 86
    iget-object v0, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->this$0:Lcom/univocity/parsers/common/iterators/ParserIterator;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/iterators/ParserIterator;->nextResult()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->next:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->next:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->this$0:Lcom/univocity/parsers/common/iterators/ParserIterator;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/iterators/ParserIterator;->nextResult()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/common/iterators/ParserIterator$1;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove row"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
