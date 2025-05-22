.class Lcom/univocity/parsers/common/AbstractParser$9;
.super Lcom/univocity/parsers/common/iterators/RecordIterator;
.source "AbstractParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/AbstractParser;->iterateRecords(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/AbstractParser;

.field final synthetic val$encoding:Ljava/nio/charset/Charset;

.field final synthetic val$input:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/AbstractParser;Lcom/univocity/parsers/common/AbstractParser;Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractParser$9;->this$0:Lcom/univocity/parsers/common/AbstractParser;

    iput-object p3, p0, Lcom/univocity/parsers/common/AbstractParser$9;->val$input:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/univocity/parsers/common/AbstractParser$9;->val$encoding:Ljava/nio/charset/Charset;

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/iterators/RecordIterator;-><init>(Lcom/univocity/parsers/common/AbstractParser;)V

    return-void
.end method


# virtual methods
.method protected beginParsing()V
    .locals 3

    .line 1410
    iget-object v0, p0, Lcom/univocity/parsers/common/AbstractParser$9;->parser:Lcom/univocity/parsers/common/AbstractParser;

    iget-object v1, p0, Lcom/univocity/parsers/common/AbstractParser$9;->val$input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/univocity/parsers/common/AbstractParser$9;->val$encoding:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1, v2}, Lcom/univocity/parsers/common/AbstractParser;->beginParsing(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method
