.class Lcom/univocity/parsers/common/routine/AbstractRoutines$1;
.super Ljava/lang/Object;
.source "AbstractRoutines.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/routine/AbstractRoutines;->createWritingRowProcessor(Ljava/io/Writer;)Lcom/univocity/parsers/common/processor/RowProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

.field final synthetic val$output:Ljava/io/Writer;

.field private writer:Lcom/univocity/parsers/common/AbstractWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/AbstractWriter<",
            "TW;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/routine/AbstractRoutines;Ljava/io/Writer;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

    iput-object p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->val$output:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 361
    check-cast p1, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->processEnded(Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method

.method public processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 1

    .line 376
    iget-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->writer:Lcom/univocity/parsers/common/AbstractWriter;

    invoke-static {p1, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->access$100(Lcom/univocity/parsers/common/routine/AbstractRoutines;Lcom/univocity/parsers/common/AbstractWriter;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 361
    check-cast p1, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->processStarted(Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 2

    .line 366
    iget-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->this$0:Lcom/univocity/parsers/common/routine/AbstractRoutines;

    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->val$output:Ljava/io/Writer;

    invoke-static {p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->access$000(Lcom/univocity/parsers/common/routine/AbstractRoutines;)Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createWriter(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)Lcom/univocity/parsers/common/AbstractWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->writer:Lcom/univocity/parsers/common/AbstractWriter;

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 361
    check-cast p2, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method

.method public rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 371
    iget-object p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;->writer:Lcom/univocity/parsers/common/AbstractWriter;

    invoke-virtual {p2, p1}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/String;)V

    return-void
.end method
