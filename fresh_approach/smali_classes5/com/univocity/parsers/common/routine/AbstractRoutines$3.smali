.class Lcom/univocity/parsers/common/routine/AbstractRoutines$3;
.super Ljava/lang/Object;
.source "AbstractRoutines.java"

# interfaces
.implements Lcom/univocity/parsers/common/IterableResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/routine/AbstractRoutines;->iterate(Ljava/lang/Class;Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/IterableResult<",
        "TT;",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Lcom/univocity/parsers/common/ParsingContext;

.field final synthetic this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

.field final synthetic val$beanHolder:[Ljava/lang/Object;

.field final synthetic val$input:Ljava/io/Reader;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/routine/AbstractRoutines;Ljava/io/Reader;[Ljava/lang/Object;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

    iput-object p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->val$input:Ljava/io/Reader;

    iput-object p3, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->val$beanHolder:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/univocity/parsers/common/routine/AbstractRoutines$3;)Lcom/univocity/parsers/common/ParsingContext;
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->context:Lcom/univocity/parsers/common/ParsingContext;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getContext()Lcom/univocity/parsers/common/Context;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->getContext()Lcom/univocity/parsers/common/ParsingContext;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/univocity/parsers/common/ParsingContext;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->context:Lcom/univocity/parsers/common/ParsingContext;

    return-object v0
.end method

.method public iterator()Lcom/univocity/parsers/common/ResultIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/univocity/parsers/common/ResultIterator<",
            "TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

    invoke-static {v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->access$200(Lcom/univocity/parsers/common/routine/AbstractRoutines;)Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createParser(Lcom/univocity/parsers/common/CommonParserSettings;)Lcom/univocity/parsers/common/AbstractParser;

    move-result-object v0

    .line 841
    iget-object v1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->val$input:Ljava/io/Reader;

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    .line 842
    invoke-virtual {v0}, Lcom/univocity/parsers/common/AbstractParser;->getContext()Lcom/univocity/parsers/common/ParsingContext;

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->context:Lcom/univocity/parsers/common/ParsingContext;

    .line 844
    new-instance v1, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;

    invoke-direct {v1, p0, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines$3$1;-><init>(Lcom/univocity/parsers/common/routine/AbstractRoutines$3;Lcom/univocity/parsers/common/AbstractParser;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;->iterator()Lcom/univocity/parsers/common/ResultIterator;

    move-result-object v0

    return-object v0
.end method
