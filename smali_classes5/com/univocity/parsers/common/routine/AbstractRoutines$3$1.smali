.class Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;
.super Ljava/lang/Object;
.source "AbstractRoutines.java"

# interfaces
.implements Lcom/univocity/parsers/common/ResultIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->iterator()Lcom/univocity/parsers/common/ResultIterator;
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
.field row:[Ljava/lang/String;

.field final synthetic this$1:Lcom/univocity/parsers/common/routine/AbstractRoutines$3;

.field final synthetic val$parser:Lcom/univocity/parsers/common/AbstractParser;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/routine/AbstractRoutines$3;Lcom/univocity/parsers/common/AbstractParser;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->this$1:Lcom/univocity/parsers/common/routine/AbstractRoutines$3;

    iput-object p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->val$parser:Lcom/univocity/parsers/common/AbstractParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Lcom/univocity/parsers/common/Context;
    .locals 1

    .line 844
    invoke-virtual {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->getContext()Lcom/univocity/parsers/common/ParsingContext;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/univocity/parsers/common/ParsingContext;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->this$1:Lcom/univocity/parsers/common/routine/AbstractRoutines$3;

    invoke-static {v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->access$300(Lcom/univocity/parsers/common/routine/AbstractRoutines$3;)Lcom/univocity/parsers/common/ParsingContext;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->this$1:Lcom/univocity/parsers/common/routine/AbstractRoutines$3;

    iget-object v0, v0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->val$beanHolder:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->row:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->val$parser:Lcom/univocity/parsers/common/AbstractParser;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->parseNext()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->row:[Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->this$1:Lcom/univocity/parsers/common/routine/AbstractRoutines$3;

    iget-object v0, v0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->val$beanHolder:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->this$1:Lcom/univocity/parsers/common/routine/AbstractRoutines$3;

    iget-object v0, v0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->val$beanHolder:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 859
    :cond_0
    iget-object v2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->this$1:Lcom/univocity/parsers/common/routine/AbstractRoutines$3;

    iget-object v2, v2, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->val$beanHolder:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 860
    iput-object v3, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;->row:[Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 866
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove beans"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
