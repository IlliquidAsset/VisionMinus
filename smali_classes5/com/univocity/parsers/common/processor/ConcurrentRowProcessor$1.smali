.class Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor$1;
.super Lcom/univocity/parsers/common/ParsingContextWrapper;
.source "ConcurrentRowProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;->wrapContext(Lcom/univocity/parsers/common/ParsingContext;)Lcom/univocity/parsers/common/ParsingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/ParsingContextWrapper;-><init>(Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method


# virtual methods
.method public currentRecord()J
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;

    invoke-static {v0}, Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;->access$000(Lcom/univocity/parsers/common/processor/ConcurrentRowProcessor;)J

    move-result-wide v0

    return-wide v0
.end method
