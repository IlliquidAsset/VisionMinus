.class Lcom/univocity/parsers/common/routine/AbstractRoutines$4;
.super Lcom/univocity/parsers/common/processor/AbstractRowProcessor;
.source "AbstractRoutines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/routine/AbstractRoutines;->getInputDimension(Ljava/io/Reader;)Lcom/univocity/parsers/common/routine/InputDimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastColumn:I

.field final synthetic this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

.field final synthetic val$out:Lcom/univocity/parsers/common/routine/InputDimension;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/routine/AbstractRoutines;Lcom/univocity/parsers/common/routine/InputDimension;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;->this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

    iput-object p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;->val$out:Lcom/univocity/parsers/common/routine/InputDimension;

    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/AbstractRowProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 940
    check-cast p1, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;->processEnded(Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method

.method public processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 3

    .line 952
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;->val$out:Lcom/univocity/parsers/common/routine/InputDimension;

    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->currentRecord()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/univocity/parsers/common/routine/InputDimension;->rows:J

    .line 953
    iget-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;->val$out:Lcom/univocity/parsers/common/routine/InputDimension;

    iget v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;->lastColumn:I

    iput v0, p1, Lcom/univocity/parsers/common/routine/InputDimension;->columns:I

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 940
    check-cast p2, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method

.method public rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 1

    .line 945
    iget p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;->lastColumn:I

    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 946
    array-length p1, p1

    iput p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;->lastColumn:I

    :cond_0
    return-void
.end method
