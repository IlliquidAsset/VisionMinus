.class public Lcom/univocity/parsers/tsv/TsvRoutines;
.super Lcom/univocity/parsers/common/routine/AbstractRoutines;
.source "TsvRoutines.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/routine/AbstractRoutines<",
        "Lcom/univocity/parsers/tsv/TsvParserSettings;",
        "Lcom/univocity/parsers/tsv/TsvWriterSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0}, Lcom/univocity/parsers/tsv/TsvRoutines;-><init>(Lcom/univocity/parsers/tsv/TsvParserSettings;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/tsv/TsvParserSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/tsv/TsvRoutines;-><init>(Lcom/univocity/parsers/tsv/TsvParserSettings;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/tsv/TsvParserSettings;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 1

    const-string v0, "TSV parsing/writing routine"

    .line 60
    invoke-direct {p0, v0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;-><init>(Ljava/lang/String;Lcom/univocity/parsers/common/CommonParserSettings;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/tsv/TsvWriterSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/tsv/TsvRoutines;-><init>(Lcom/univocity/parsers/tsv/TsvParserSettings;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDefaultParserSettings()Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvRoutines;->createDefaultParserSettings()Lcom/univocity/parsers/tsv/TsvParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultParserSettings()Lcom/univocity/parsers/tsv/TsvParserSettings;
    .locals 1

    .line 75
    new-instance v0, Lcom/univocity/parsers/tsv/TsvParserSettings;

    invoke-direct {v0}, Lcom/univocity/parsers/tsv/TsvParserSettings;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createDefaultWriterSettings()Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvRoutines;->createDefaultWriterSettings()Lcom/univocity/parsers/tsv/TsvWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultWriterSettings()Lcom/univocity/parsers/tsv/TsvWriterSettings;
    .locals 1

    .line 80
    new-instance v0, Lcom/univocity/parsers/tsv/TsvWriterSettings;

    invoke-direct {v0}, Lcom/univocity/parsers/tsv/TsvWriterSettings;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createParser(Lcom/univocity/parsers/common/CommonParserSettings;)Lcom/univocity/parsers/common/AbstractParser;
    .locals 0

    .line 26
    check-cast p1, Lcom/univocity/parsers/tsv/TsvParserSettings;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/tsv/TsvRoutines;->createParser(Lcom/univocity/parsers/tsv/TsvParserSettings;)Lcom/univocity/parsers/tsv/TsvParser;

    move-result-object p1

    return-object p1
.end method

.method protected createParser(Lcom/univocity/parsers/tsv/TsvParserSettings;)Lcom/univocity/parsers/tsv/TsvParser;
    .locals 1

    .line 65
    new-instance v0, Lcom/univocity/parsers/tsv/TsvParser;

    invoke-direct {v0, p1}, Lcom/univocity/parsers/tsv/TsvParser;-><init>(Lcom/univocity/parsers/tsv/TsvParserSettings;)V

    return-object v0
.end method

.method protected bridge synthetic createWriter(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)Lcom/univocity/parsers/common/AbstractWriter;
    .locals 0

    .line 26
    check-cast p2, Lcom/univocity/parsers/tsv/TsvWriterSettings;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/tsv/TsvRoutines;->createWriter(Ljava/io/Writer;Lcom/univocity/parsers/tsv/TsvWriterSettings;)Lcom/univocity/parsers/tsv/TsvWriter;

    move-result-object p1

    return-object p1
.end method

.method protected createWriter(Ljava/io/Writer;Lcom/univocity/parsers/tsv/TsvWriterSettings;)Lcom/univocity/parsers/tsv/TsvWriter;
    .locals 1

    .line 70
    new-instance v0, Lcom/univocity/parsers/tsv/TsvWriter;

    invoke-direct {v0, p1, p2}, Lcom/univocity/parsers/tsv/TsvWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/tsv/TsvWriterSettings;)V

    return-object v0
.end method
