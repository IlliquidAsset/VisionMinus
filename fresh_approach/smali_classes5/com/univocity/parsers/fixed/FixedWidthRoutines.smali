.class public Lcom/univocity/parsers/fixed/FixedWidthRoutines;
.super Lcom/univocity/parsers/common/routine/AbstractRoutines;
.source "FixedWidthRoutines.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/routine/AbstractRoutines<",
        "Lcom/univocity/parsers/fixed/FixedWidthParserSettings;",
        "Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0, v0}, Lcom/univocity/parsers/fixed/FixedWidthRoutines;-><init>(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/fixed/FixedWidthRoutines;-><init>(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 1

    const-string v0, "Fixed-width parsing/writing routine"

    .line 61
    invoke-direct {p0, v0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;-><init>(Ljava/lang/String;Lcom/univocity/parsers/common/CommonParserSettings;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/fixed/FixedWidthRoutines;-><init>(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V

    return-void
.end method


# virtual methods
.method protected adjustColumnLengths([Ljava/lang/String;[I)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthRoutines;->getWriterSettings()Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->getFieldLengths()[I

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthRoutines;->getWriterSettings()Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    new-instance v1, Lcom/univocity/parsers/fixed/FixedWidthFields;

    invoke-direct {v1, p1, p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;->setFieldLengths(Lcom/univocity/parsers/fixed/FixedWidthFields;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createDefaultParserSettings()Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthRoutines;->createDefaultParserSettings()Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultParserSettings()Lcom/univocity/parsers/fixed/FixedWidthParserSettings;
    .locals 1

    .line 82
    new-instance v0, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    invoke-direct {v0}, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createDefaultWriterSettings()Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthRoutines;->createDefaultWriterSettings()Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultWriterSettings()Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;
    .locals 1

    .line 87
    new-instance v0, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    invoke-direct {v0}, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createParser(Lcom/univocity/parsers/common/CommonParserSettings;)Lcom/univocity/parsers/common/AbstractParser;
    .locals 0

    .line 26
    check-cast p1, Lcom/univocity/parsers/fixed/FixedWidthParserSettings;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthRoutines;->createParser(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;)Lcom/univocity/parsers/fixed/FixedWidthParser;

    move-result-object p1

    return-object p1
.end method

.method protected createParser(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;)Lcom/univocity/parsers/fixed/FixedWidthParser;
    .locals 1

    .line 72
    new-instance v0, Lcom/univocity/parsers/fixed/FixedWidthParser;

    invoke-direct {v0, p1}, Lcom/univocity/parsers/fixed/FixedWidthParser;-><init>(Lcom/univocity/parsers/fixed/FixedWidthParserSettings;)V

    return-object v0
.end method

.method protected bridge synthetic createWriter(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)Lcom/univocity/parsers/common/AbstractWriter;
    .locals 0

    .line 26
    check-cast p2, Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/fixed/FixedWidthRoutines;->createWriter(Ljava/io/Writer;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)Lcom/univocity/parsers/fixed/FixedWidthWriter;

    move-result-object p1

    return-object p1
.end method

.method protected createWriter(Ljava/io/Writer;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)Lcom/univocity/parsers/fixed/FixedWidthWriter;
    .locals 1

    .line 77
    new-instance v0, Lcom/univocity/parsers/fixed/FixedWidthWriter;

    invoke-direct {v0, p1, p2}, Lcom/univocity/parsers/fixed/FixedWidthWriter;-><init>(Ljava/io/Writer;Lcom/univocity/parsers/fixed/FixedWidthWriterSettings;)V

    return-object v0
.end method
