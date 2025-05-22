.class synthetic Lcom/univocity/parsers/csv/CsvParser$2;
.super Ljava/lang/Object;
.source "CsvParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/csv/CsvParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$univocity$parsers$csv$UnescapedQuoteHandling:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 184
    invoke-static {}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->values()[Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/univocity/parsers/csv/CsvParser$2;->$SwitchMap$com$univocity$parsers$csv$UnescapedQuoteHandling:[I

    :try_start_0
    sget-object v1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->SKIP_VALUE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    invoke-virtual {v1}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/univocity/parsers/csv/CsvParser$2;->$SwitchMap$com$univocity$parsers$csv$UnescapedQuoteHandling:[I

    sget-object v1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->RAISE_ERROR:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    invoke-virtual {v1}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/univocity/parsers/csv/CsvParser$2;->$SwitchMap$com$univocity$parsers$csv$UnescapedQuoteHandling:[I

    sget-object v1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_CLOSING_QUOTE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    invoke-virtual {v1}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/univocity/parsers/csv/CsvParser$2;->$SwitchMap$com$univocity$parsers$csv$UnescapedQuoteHandling:[I

    sget-object v1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_DELIMITER:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    invoke-virtual {v1}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
