.class Lcom/univocity/parsers/common/AbstractParser$3;
.super Lcom/univocity/parsers/common/iterators/RowIterator;
.source "AbstractParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/AbstractParser;->iterate(Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/AbstractParser;

.field final synthetic val$input:Ljava/io/Reader;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/Reader;)V
    .locals 0

    .line 1272
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractParser$3;->this$0:Lcom/univocity/parsers/common/AbstractParser;

    iput-object p3, p0, Lcom/univocity/parsers/common/AbstractParser$3;->val$input:Ljava/io/Reader;

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/iterators/RowIterator;-><init>(Lcom/univocity/parsers/common/AbstractParser;)V

    return-void
.end method


# virtual methods
.method protected beginParsing()V
    .locals 2

    .line 1275
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser$3;->parser:Lcom/univocity/parsers/common/AbstractParser;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser$3;->val$input:Ljava/io/Reader;

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/Reader;)V

    return-void
.end method
