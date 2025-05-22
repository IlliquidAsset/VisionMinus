.class Lcom/univocity/parsers/fixed/FixedWidthParser$1;
.super Lcom/univocity/parsers/common/ParsingContextWrapper;
.source "FixedWidthParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/fixed/FixedWidthParser;-><init>(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/fixed/FixedWidthParser;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/fixed/FixedWidthParser;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthParser$1;->this$0:Lcom/univocity/parsers/fixed/FixedWidthParser;

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/ParsingContextWrapper;-><init>(Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method


# virtual methods
.method public headers()[Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser$1;->this$0:Lcom/univocity/parsers/fixed/FixedWidthParser;

    invoke-static {v0}, Lcom/univocity/parsers/fixed/FixedWidthParser;->access$000(Lcom/univocity/parsers/fixed/FixedWidthParser;)Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthParser$1;->this$0:Lcom/univocity/parsers/fixed/FixedWidthParser;

    invoke-static {v0}, Lcom/univocity/parsers/fixed/FixedWidthParser;->access$000(Lcom/univocity/parsers/fixed/FixedWidthParser;)Lcom/univocity/parsers/fixed/Lookup;

    move-result-object v0

    iget-object v0, v0, Lcom/univocity/parsers/fixed/Lookup;->fieldNames:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/univocity/parsers/common/ParsingContextWrapper;->headers()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
