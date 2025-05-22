.class public abstract Lcom/univocity/parsers/common/routine/AbstractRoutines;
.super Ljava/lang/Object;
.source "AbstractRoutines.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/univocity/parsers/common/CommonParserSettings<",
        "*>;W:",
        "Lcom/univocity/parsers/common/CommonWriterSettings<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private keepResourcesOpen:Z

.field private parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private previousOutput:Ljava/io/Writer;

.field private final routineDescription:Ljava/lang/String;

.field private writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TW;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;-><init>(Ljava/lang/String;Lcom/univocity/parsers/common/CommonParserSettings;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/univocity/parsers/common/CommonParserSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TP;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;-><init>(Ljava/lang/String;Lcom/univocity/parsers/common/CommonParserSettings;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/univocity/parsers/common/CommonParserSettings;Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TP;TW;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->keepResourcesOpen:Z

    .line 112
    iput-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->routineDescription:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    .line 114
    iput-object p3, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TW;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;-><init>(Ljava/lang/String;Lcom/univocity/parsers/common/CommonParserSettings;Lcom/univocity/parsers/common/CommonWriterSettings;)V

    return-void
.end method

.method static synthetic access$000(Lcom/univocity/parsers/common/routine/AbstractRoutines;)Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    return-object p0
.end method

.method static synthetic access$100(Lcom/univocity/parsers/common/routine/AbstractRoutines;Lcom/univocity/parsers/common/AbstractWriter;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->close(Lcom/univocity/parsers/common/AbstractWriter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/univocity/parsers/common/routine/AbstractRoutines;)Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    return-object p0
.end method

.method private close(Lcom/univocity/parsers/common/AbstractWriter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 383
    iget-boolean v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->keepResourcesOpen:Z

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p1}, Lcom/univocity/parsers/common/AbstractWriter;->close()V

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/univocity/parsers/common/AbstractWriter;->flush()V

    :cond_1
    :goto_0
    return-void
.end method

.method private createWritingRowProcessor(Ljava/io/Writer;)Lcom/univocity/parsers/common/processor/RowProcessor;
    .locals 1

    .line 361
    new-instance v0, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;

    invoke-direct {v0, p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines$1;-><init>(Lcom/univocity/parsers/common/routine/AbstractRoutines;Ljava/io/Writer;)V

    return-object v0
.end method

.method private setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->validateParserSettings()V

    .line 357
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    return-void
.end method

.method private setRowWriterProcessor(Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V
    .locals 1

    .line 351
    invoke-direct {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->validateWriterSettings()V

    .line 352
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->setRowWriterProcessor(Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V

    return-void
.end method

.method private validateParserSettings()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createDefaultParserSettings()Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    :cond_0
    return-void
.end method

.method private validateWriterSettings()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createDefaultWriterSettings()Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustColumnLengths([Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method protected abstract createDefaultParserSettings()Lcom/univocity/parsers/common/CommonParserSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method protected abstract createDefaultWriterSettings()Lcom/univocity/parsers/common/CommonWriterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method protected abstract createParser(Lcom/univocity/parsers/common/CommonParserSettings;)Lcom/univocity/parsers/common/AbstractParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)",
            "Lcom/univocity/parsers/common/AbstractParser<",
            "TP;>;"
        }
    .end annotation
.end method

.method protected abstract createWriter(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)Lcom/univocity/parsers/common/AbstractWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TW;)",
            "Lcom/univocity/parsers/common/AbstractWriter<",
            "TW;>;"
        }
    .end annotation
.end method

.method public getInputDimension(Ljava/io/File;)Lcom/univocity/parsers/common/routine/InputDimension;
    .locals 0

    .line 891
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->getInputDimension(Ljava/io/Reader;)Lcom/univocity/parsers/common/routine/InputDimension;

    move-result-object p1

    return-object p1
.end method

.method public getInputDimension(Ljava/io/File;Ljava/lang/String;)Lcom/univocity/parsers/common/routine/InputDimension;
    .locals 0

    .line 903
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->getInputDimension(Ljava/io/Reader;)Lcom/univocity/parsers/common/routine/InputDimension;

    move-result-object p1

    return-object p1
.end method

.method public getInputDimension(Ljava/io/InputStream;)Lcom/univocity/parsers/common/routine/InputDimension;
    .locals 0

    .line 914
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->getInputDimension(Ljava/io/Reader;)Lcom/univocity/parsers/common/routine/InputDimension;

    move-result-object p1

    return-object p1
.end method

.method public getInputDimension(Ljava/io/InputStream;Ljava/lang/String;)Lcom/univocity/parsers/common/routine/InputDimension;
    .locals 0

    .line 926
    invoke-static {p1, p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->getInputDimension(Ljava/io/Reader;)Lcom/univocity/parsers/common/routine/InputDimension;

    move-result-object p1

    return-object p1
.end method

.method public getInputDimension(Ljava/io/Reader;)Lcom/univocity/parsers/common/routine/InputDimension;
    .locals 4

    .line 938
    new-instance v0, Lcom/univocity/parsers/common/routine/InputDimension;

    invoke-direct {v0}, Lcom/univocity/parsers/common/routine/InputDimension;-><init>()V

    .line 940
    new-instance v1, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;

    invoke-direct {v1, p0, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines$4;-><init>(Lcom/univocity/parsers/common/routine/AbstractRoutines;Lcom/univocity/parsers/common/routine/InputDimension;)V

    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    .line 957
    invoke-virtual {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->getParserSettings()Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v1

    const/4 v2, -0x1

    .line 958
    invoke-virtual {v1, v2}, Lcom/univocity/parsers/common/CommonParserSettings;->setMaxCharsPerColumn(I)V

    .line 960
    invoke-virtual {v1}, Lcom/univocity/parsers/common/CommonParserSettings;->getMaxColumns()I

    move-result v2

    const v3, 0xf4240

    if-ge v2, v3, :cond_0

    .line 961
    invoke-virtual {v1, v3}, Lcom/univocity/parsers/common/CommonParserSettings;->setMaxColumns(I)V

    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Integer;

    .line 966
    invoke-virtual {v1, v3}, Lcom/univocity/parsers/common/CommonParserSettings;->selectIndexes([Ljava/lang/Integer;)Lcom/univocity/parsers/common/fields/FieldSet;

    .line 969
    invoke-virtual {v1, v2}, Lcom/univocity/parsers/common/CommonParserSettings;->setColumnReorderingEnabled(Z)V

    .line 971
    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createParser(Lcom/univocity/parsers/common/CommonParserSettings;)Lcom/univocity/parsers/common/AbstractParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/AbstractParser;->parse(Ljava/io/Reader;)V

    return-object v0
.end method

.method public getKeepResourcesOpen()Z
    .locals 1

    .line 984
    iget-boolean v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->keepResourcesOpen:Z

    return v0
.end method

.method public final getParserSettings()Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->validateParserSettings()V

    .line 136
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    return-object v0
.end method

.method public final getWriterSettings()Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->validateWriterSettings()V

    .line 155
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    return-object v0
.end method

.method public iterate(Ljava/lang/Class;Ljava/io/File;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 731
    invoke-static {p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->iterate(Ljava/lang/Class;Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public iterate(Ljava/lang/Class;Ljava/io/File;Ljava/lang/String;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 745
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->iterate(Ljava/lang/Class;Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public iterate(Ljava/lang/Class;Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 759
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->iterate(Ljava/lang/Class;Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public iterate(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 773
    invoke-static {p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->iterate(Ljava/lang/Class;Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public iterate(Ljava/lang/Class;Ljava/io/InputStream;Ljava/lang/String;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 787
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->iterate(Ljava/lang/Class;Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public iterate(Ljava/lang/Class;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/univocity/parsers/common/IterableResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    .line 801
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->iterate(Ljava/lang/Class;Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;

    move-result-object p1

    return-object p1
.end method

.method public iterate(Ljava/lang/Class;Ljava/io/Reader;)Lcom/univocity/parsers/common/IterableResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/Reader;",
            ")",
            "Lcom/univocity/parsers/common/IterableResult<",
            "TT;",
            "Lcom/univocity/parsers/common/ParsingContext;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 816
    new-instance v1, Lcom/univocity/parsers/common/routine/AbstractRoutines$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines$2;-><init>(Lcom/univocity/parsers/common/routine/AbstractRoutines;Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    .line 829
    new-instance p1, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;

    invoke-direct {p1, p0, p2, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines$3;-><init>(Lcom/univocity/parsers/common/routine/AbstractRoutines;Ljava/io/Reader;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, p1, p2, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/File;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/File;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 519
    invoke-static {p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 648
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/File;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/File;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 535
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 662
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 551
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, p1, p2, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/InputStream;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 567
    invoke-static {p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 690
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/InputStream;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/InputStream;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 583
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/InputStream;Ljava/nio/charset/Charset;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/InputStream;Ljava/nio/charset/Charset;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 599
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/Reader;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 717
    invoke-virtual {p0, p1, p2, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parseAll(Ljava/lang/Class;Ljava/io/Reader;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseAll(Ljava/lang/Class;Ljava/io/Reader;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/Reader;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 614
    new-instance v0, Lcom/univocity/parsers/common/processor/BeanListProcessor;

    invoke-direct {v0, p1, p3}, Lcom/univocity/parsers/common/processor/BeanListProcessor;-><init>(Ljava/lang/Class;I)V

    .line 615
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    const/4 p1, 0x0

    .line 617
    :try_start_0
    iget-object p3, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {p0, p3}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createParser(Lcom/univocity/parsers/common/CommonParserSettings;)Lcom/univocity/parsers/common/AbstractParser;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/univocity/parsers/common/AbstractParser;->parse(Ljava/io/Reader;)V

    .line 618
    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/BeanListProcessor;->getBeans()Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    iget-object p3, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {p3, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    return-object p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {p3, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    throw p2
.end method

.method public final parseAndWrite(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->setRowWriterProcessor(Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V

    .line 341
    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createWritingRowProcessor(Ljava/io/Writer;)Lcom/univocity/parsers/common/processor/RowProcessor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    .line 343
    :try_start_0
    iget-object p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {p0, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createParser(Lcom/univocity/parsers/common/CommonParserSettings;)Lcom/univocity/parsers/common/AbstractParser;

    move-result-object p2

    .line 344
    invoke-virtual {p2, p1}, Lcom/univocity/parsers/common/AbstractParser;->parse(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    iget-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/CommonParserSettings;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    invoke-virtual {p2, v0}, Lcom/univocity/parsers/common/CommonParserSettings;->setRowProcessor(Lcom/univocity/parsers/common/processor/RowProcessor;)V

    throw p1
.end method

.method public setKeepResourcesOpen(Z)V
    .locals 0

    .line 995
    iput-boolean p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->keepResourcesOpen:Z

    return-void
.end method

.method public final setParserSettings(Lcom/univocity/parsers/common/CommonParserSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->parserSettings:Lcom/univocity/parsers/common/CommonParserSettings;

    return-void
.end method

.method public final setWriterSettings(Lcom/univocity/parsers/common/CommonWriterSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->routineDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final write(Ljava/sql/ResultSet;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    check-cast v0, Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->write(Ljava/sql/ResultSet;Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public final write(Ljava/sql/ResultSet;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->write(Ljava/sql/ResultSet;Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public final write(Ljava/sql/ResultSet;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 3

    const-string v0, "\'"

    const-string v1, "Error closing file: \'"

    .line 210
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p3

    .line 212
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->write(Ljava/sql/ResultSet;Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    invoke-virtual {p3}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 217
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catchall_0
    move-exception p1

    .line 215
    :try_start_2
    invoke-virtual {p3}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 217
    throw p1

    :catch_1
    move-exception p1

    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final write(Ljava/sql/ResultSet;Ljava/io/OutputStream;)V
    .locals 0

    .line 230
    invoke-static {p2}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->write(Ljava/sql/ResultSet;Ljava/io/Writer;)V

    return-void
.end method

.method public final write(Ljava/sql/ResultSet;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 242
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->write(Ljava/sql/ResultSet;Ljava/io/Writer;)V

    return-void
.end method

.method public final write(Ljava/sql/ResultSet;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 254
    invoke-static {p2, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->write(Ljava/sql/ResultSet;Ljava/io/Writer;)V

    return-void
.end method

.method public final write(Ljava/sql/ResultSet;Ljava/io/Writer;)V
    .locals 14

    move-object v1, p0

    .line 265
    invoke-direct {p0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->validateWriterSettings()V

    .line 266
    iget-object v0, v1, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/CommonWriterSettings;->getRowWriterProcessor()Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 274
    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v6

    .line 275
    invoke-interface {v6}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v7

    .line 277
    new-array v8, v7, [Ljava/lang/String;

    .line 278
    new-array v9, v7, [I

    const/4 v10, 0x1

    :goto_1
    if-gt v10, v7, :cond_2

    add-int/lit8 v11, v10, -0x1

    .line 280
    invoke-interface {v6, v10}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    .line 282
    invoke-interface {v6, v10}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v12

    .line 283
    invoke-interface {v6, v10}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v13

    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x2

    goto :goto_2

    :cond_1
    add-int/2addr v12, v13

    .line 290
    :goto_2
    aput v12, v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 293
    :cond_2
    iget-object v6, v1, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    invoke-virtual {v6}, Lcom/univocity/parsers/common/CommonWriterSettings;->getHeaders()[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 296
    iget-object v6, v1, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    invoke-virtual {v6, v8}, Lcom/univocity/parsers/common/CommonWriterSettings;->setHeaders([Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v8, v6

    .line 300
    :goto_3
    invoke-virtual {p0, v8, v9}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->adjustColumnLengths([Ljava/lang/String;[I)V

    .line 302
    iget-object v6, v1, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    move-object/from16 v8, p2

    invoke-virtual {p0, v8, v6}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createWriter(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)Lcom/univocity/parsers/common/AbstractWriter;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 304
    :try_start_1
    iget-object v8, v1, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    invoke-virtual {v8}, Lcom/univocity/parsers/common/CommonWriterSettings;->isHeaderWritingEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 305
    invoke-virtual {v6}, Lcom/univocity/parsers/common/AbstractWriter;->writeHeaders()V

    .line 308
    :cond_4
    new-array v5, v7, [Ljava/lang/Object;

    .line 309
    :goto_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_5
    if-gt v8, v7, :cond_5

    add-int/lit8 v9, v8, -0x1

    move-object v10, p1

    .line 311
    :try_start_2
    invoke-interface {p1, v8}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_5
    move-object v10, p1

    if-eqz v0, :cond_6

    .line 314
    invoke-virtual {v6, v5}, Lcom/univocity/parsers/common/AbstractWriter;->processRecord([Ljava/lang/Object;)V

    goto :goto_6

    .line 316
    :cond_6
    invoke-virtual {v6, v5}, Lcom/univocity/parsers/common/AbstractWriter;->writeRow([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    goto :goto_4

    :cond_7
    move-object v10, p1

    .line 321
    :try_start_3
    iget-boolean v0, v1, Lcom/univocity/parsers/common/routine/AbstractRoutines;->keepResourcesOpen:Z

    if-nez v0, :cond_8

    .line 322
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 328
    :cond_8
    invoke-direct {p0, v6}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->close(Lcom/univocity/parsers/common/AbstractWriter;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v10, p1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v10, p1

    move-object v6, v5

    .line 321
    :goto_7
    :try_start_4
    iget-boolean v2, v1, Lcom/univocity/parsers/common/routine/AbstractRoutines;->keepResourcesOpen:Z

    if-nez v2, :cond_9

    .line 322
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_9
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v12, v0

    move-wide v9, v3

    move-object v11, v5

    .line 326
    :try_start_5
    new-instance v0, Lcom/univocity/parsers/common/TextWritingException;

    const-string v8, "Error writing data from result set"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 328
    :goto_8
    invoke-direct {p0, v6}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->close(Lcom/univocity/parsers/common/AbstractWriter;)V

    throw v0
.end method

.method public writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 415
    invoke-static {p3, p4}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/File;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/Writer;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/File;Ljava/nio/charset/Charset;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 429
    invoke-static {p3, p4}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/Writer;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/File;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 401
    invoke-static {p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/File;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/Writer;[Ljava/lang/String;)V

    return-void
.end method

.method public writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 457
    invoke-static {p3, p4}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/Writer;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/OutputStream;Ljava/nio/charset/Charset;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/OutputStream;",
            "Ljava/nio/charset/Charset;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 471
    invoke-static {p3, p4}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/Writer;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/OutputStream;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 443
    invoke-static {p3}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/Writer;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs writeAll(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/io/Writer;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/io/Writer;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/univocity/parsers/common/processor/BeanWriterProcessor;

    invoke-direct {v0, p2}, Lcom/univocity/parsers/common/processor/BeanWriterProcessor;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->setRowWriterProcessor(Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V

    const/4 p2, 0x0

    .line 486
    :try_start_0
    array-length v0, p4

    if-lez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    invoke-virtual {v0, p4}, Lcom/univocity/parsers/common/CommonWriterSettings;->setHeaders([Ljava/lang/String;)V

    .line 488
    iget-object p4, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/univocity/parsers/common/CommonWriterSettings;->setHeaderWritingEnabled(Z)V

    .line 491
    :cond_0
    iget-boolean p4, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->keepResourcesOpen:Z

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->previousOutput:Ljava/io/Writer;

    if-ne p4, p3, :cond_1

    .line 492
    iget-object p4, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/univocity/parsers/common/CommonWriterSettings;->setHeaderWritingEnabled(Z)V

    .line 495
    :cond_1
    iget-object p4, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    invoke-virtual {p0, p3, p4}, Lcom/univocity/parsers/common/routine/AbstractRoutines;->createWriter(Ljava/io/Writer;Lcom/univocity/parsers/common/CommonWriterSettings;)Lcom/univocity/parsers/common/AbstractWriter;

    move-result-object p4

    .line 496
    iget-boolean v0, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->keepResourcesOpen:Z

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {p4, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecords(Ljava/lang/Iterable;)V

    .line 498
    iput-object p3, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->previousOutput:Ljava/io/Writer;

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p4, p1}, Lcom/univocity/parsers/common/AbstractWriter;->processRecordsAndClose(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :goto_0
    iget-object p1, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    invoke-virtual {p1, p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->setRowWriterProcessor(Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p3, p0, Lcom/univocity/parsers/common/routine/AbstractRoutines;->writerSettings:Lcom/univocity/parsers/common/CommonWriterSettings;

    invoke-virtual {p3, p2}, Lcom/univocity/parsers/common/CommonWriterSettings;->setRowWriterProcessor(Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V

    throw p1
.end method
