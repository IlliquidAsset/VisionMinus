.class Lcom/univocity/parsers/csv/CsvParser$1;
.super Lcom/univocity/parsers/csv/CsvFormatDetector;
.source "CsvParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/csv/CsvParser;->getInputAnalysisProcess()Lcom/univocity/parsers/common/input/InputAnalysisProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/csv/CsvParser;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/csv/CsvParser;ILcom/univocity/parsers/csv/CsvParserSettings;I)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/univocity/parsers/csv/CsvParser$1;->this$0:Lcom/univocity/parsers/csv/CsvParser;

    invoke-direct {p0, p2, p3, p4}, Lcom/univocity/parsers/csv/CsvFormatDetector;-><init>(ILcom/univocity/parsers/csv/CsvParserSettings;I)V

    return-void
.end method


# virtual methods
.method apply(CCC)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser$1;->this$0:Lcom/univocity/parsers/csv/CsvParser;

    invoke-static {v0}, Lcom/univocity/parsers/csv/CsvParser;->access$000(Lcom/univocity/parsers/csv/CsvParser;)Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;->isDelimiterDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/univocity/parsers/csv/CsvParser$1;->this$0:Lcom/univocity/parsers/csv/CsvParser;

    invoke-static {v0, p1}, Lcom/univocity/parsers/csv/CsvParser;->access$102(Lcom/univocity/parsers/csv/CsvParser;C)C

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/univocity/parsers/csv/CsvParser$1;->this$0:Lcom/univocity/parsers/csv/CsvParser;

    invoke-static {p1}, Lcom/univocity/parsers/csv/CsvParser;->access$200(Lcom/univocity/parsers/csv/CsvParser;)Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {p1}, Lcom/univocity/parsers/csv/CsvParserSettings;->isQuoteDetectionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 375
    iget-object p1, p0, Lcom/univocity/parsers/csv/CsvParser$1;->this$0:Lcom/univocity/parsers/csv/CsvParser;

    invoke-static {p1, p2}, Lcom/univocity/parsers/csv/CsvParser;->access$302(Lcom/univocity/parsers/csv/CsvParser;C)C

    .line 376
    iget-object p1, p0, Lcom/univocity/parsers/csv/CsvParser$1;->this$0:Lcom/univocity/parsers/csv/CsvParser;

    invoke-static {p1, p3}, Lcom/univocity/parsers/csv/CsvParser;->access$402(Lcom/univocity/parsers/csv/CsvParser;C)C

    :cond_1
    return-void
.end method
