.class Lcom/univocity/parsers/common/routine/AbstractRoutines$2;
.super Lcom/univocity/parsers/common/processor/BeanProcessor;
.source "AbstractRoutines.java"


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
        "Lcom/univocity/parsers/common/processor/BeanProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

.field final synthetic val$beanHolder:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/routine/AbstractRoutines;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$2;->this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

    iput-object p3, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$2;->val$beanHolder:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/processor/BeanProcessor;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic beanProcessed(Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 816
    check-cast p2, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines$2;->beanProcessed(Ljava/lang/Object;Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method

.method public beanProcessed(Ljava/lang/Object;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ")V"
        }
    .end annotation

    .line 819
    iget-object p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$2;->val$beanHolder:[Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    return-void
.end method

.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 816
    check-cast p1, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines$2;->processEnded(Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method

.method public processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 1

    .line 824
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/BeanProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    .line 825
    iget-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$2;->this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

    invoke-static {p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->access$200(Lcom/univocity/parsers/common/routine/AbstractRoutines;)Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/CommonParserSettings;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    return-void
.end method
