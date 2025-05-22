.class Lcom/univocity/parsers/common/NoopParsingContext;
.super Ljava/lang/Object;
.source "NoopParsingContext.java"

# interfaces
.implements Lcom/univocity/parsers/common/ParsingContext;


# static fields
.field static final instance:Lcom/univocity/parsers/common/NoopParsingContext;


# instance fields
.field private recordMetaData:Lcom/univocity/parsers/common/record/RecordMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/univocity/parsers/common/NoopParsingContext;

    invoke-direct {v0}, Lcom/univocity/parsers/common/NoopParsingContext;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/NoopParsingContext;->instance:Lcom/univocity/parsers/common/NoopParsingContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public columnsReordered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public comments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public currentChar()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public currentColumn()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public currentLine()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public currentParsedContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public currentParsedContentLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public currentRecord()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public errorContentLength()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public extractedFieldIndexes()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fieldContentOnError()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public headers()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Enum;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public isStopped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastComment()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public lineSeparator()[C
    .locals 1

    .line 96
    invoke-static {}, Lcom/univocity/parsers/common/Format;->getSystemLineSeparator()[C

    move-result-object v0

    return-object v0
.end method

.method public parsedHeaders()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public recordMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/univocity/parsers/common/NoopParsingContext;->recordMetaData:Lcom/univocity/parsers/common/record/RecordMetaData;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/univocity/parsers/common/record/RecordFactory;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/record/RecordFactory;-><init>(Lcom/univocity/parsers/common/Context;)V

    invoke-virtual {v0}, Lcom/univocity/parsers/common/record/RecordFactory;->getRecordMetaData()Lcom/univocity/parsers/common/record/RecordMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/NoopParsingContext;->recordMetaData:Lcom/univocity/parsers/common/record/RecordMetaData;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/NoopParsingContext;->recordMetaData:Lcom/univocity/parsers/common/record/RecordMetaData;

    return-object v0
.end method

.method public selectedHeaders()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public skipLines(J)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public toRecord([Ljava/lang/String;)Lcom/univocity/parsers/common/record/Record;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
