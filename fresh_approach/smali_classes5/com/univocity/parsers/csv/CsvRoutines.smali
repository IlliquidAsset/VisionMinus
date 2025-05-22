.class public Lcom/univocity/parsers/csv/CsvRoutines;
.super Lcom/univocity/parsers/common/routine/AbstractRoutines;
.source "CsvRoutines.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/routine/AbstractRoutines<",
        "Lcom/univocity/parsers/csv/CsvParserSettings;",
        "Lcom/univocity/parsers/csv/CsvWriterSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0}, Lcom/univocity/parsers/csv/CsvRoutines;-><init>(Lcom/univocity/parsers/csv/CsvParserSettings;Lcom/univocity/parsers/csv/CsvWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/csv/CsvParserSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/csv/CsvRoutines;-><init>(Lcom/univocity/parsers/csv/CsvParserSettings;Lcom/univocity/parsers/csv/CsvWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/csv/CsvParserSettings;Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 1

    const-string v0, "CSV parsing/writing routine"

    .line 60
    invoke-direct {p0, v0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;-><init>(Ljava/lang/String;Lcom/univocity/parsers/common/CommonParserSettings;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/csv/CsvWriterSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/csv/CsvRoutines;-><init>(Lcom/univocity/parsers/csv/CsvParserSettings;Lcom/univocity/parsers/csv/CsvWriterSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDefaultParserSettings()Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvRoutines;->createDefaultParserSettings()Lcom/univocity/parsers/csv/CsvParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultParserSettings()Lcom/univocity/parsers/csv/CsvParserSettings;
    .locals 1

    .line 75
    new-instance v0, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-direct {v0}, Lcom/univocity/parsers/csv/CsvParserSettings;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createDefaultWriterSettings()Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/univocity/parsers/csv/CsvRoutines;->createDefaultWriterSettings()Lcom/univocity/parsers/csv/CsvWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultWriterSettings()Lcom/univocity/parsers/csv/CsvWriterSettings;
    .locals 1

    .line 80
    new-instance v0, Lcom/univocity/parsers/csv/CsvWriterSettings;

    invoke-direct {v0}, Lcom/univocity/parsers/csv/CsvWriterSettings;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createParser(Lcom/univocity/parsers/common/CommonParserSettings;)Lcom/univocity/parsers/common/AbstractParser;
    .locals 0

    .line 26
    check-cast p1, Lcom/univocity/parsers/csv/CsvParserSettings;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/csv/CsvRoutines;->createParser(Lcom/univocity/parsers/csv/CsvParserSettings;)Lcom/univocity/parsers/csv/CsvParser;

    move-result-object p1

    return-object p1
.end method

.method protected createParser(Lcom/univocity/parsers/csv/CsvParserSettings;)Lcom/univocity/parsers/csv/CsvParser;
    .locals 1

    .line 65
    new-instance v0, Lcom/univocity/parsers/csv/CsvParser;

    invoke-direct {v0, p1}, Lcom/univocity/parsers/csv/CsvParser;-><init>(Lcom/univocity/parsers/csv/CsvParserSettings;)V

    return-object v0
.end method

.method protected bridge synthetic createWriter(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)Lcom/univocity/parsers/common/AbstractWriter;
    .locals 0

    .line 26
    check-cast p2, Lcom/univocity/parsers/csv/CsvWriterSettings;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/csv/CsvRoutines;->createWriter(Ljava/io/Writer;Lcom/univocity/parsers/csv/CsvWriterSettings;)Lcom/univocity/parsers/csv/CsvWriter;

    move-result-object p1

    return-object p1
.end method

.method protected createWriter(Ljava/io/Writer;Lcom/univocity/parsers/csv/CsvWriterSettings;)Lcom/univocity/parsers/csv/CsvWriter;
    .locals 1

    .line 70
    new-instance v0, Lcom/univocity/parsers/csv/CsvWriter;

    invoke-direct {v0, p1, p2}, Lcom/univocity/parsers/csv/CsvWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/csv/CsvWriterSettings;)V

    return-object v0
.end method
