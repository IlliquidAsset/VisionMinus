.class public Lcom/univocity/parsers/common/ParsingContextSnapshot;
.super Lcom/univocity/parsers/common/ParsingContextWrapper;
.source "ParsingContextSnapshot.java"


# instance fields
.field private final comments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final currentChar:J

.field private final currentColumn:I

.field private final currentLine:J

.field private final currentParsedContent:Ljava/lang/String;

.field private final currentRecord:J

.field private final lastComment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/ParsingContextWrapper;-><init>(Lcom/univocity/parsers/common/ParsingContext;)V

    .line 44
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->currentLine()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentLine:J

    .line 45
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->currentChar()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentChar:J

    .line 46
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->comments()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->comments()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->comments:Ljava/util/Map;

    .line 47
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->lastComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->lastComment:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->currentColumn()I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentColumn:I

    .line 49
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->currentParsedContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentParsedContent:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Lcom/univocity/parsers/common/ParsingContext;->currentRecord()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentRecord:J

    return-void
.end method


# virtual methods
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

    .line 66
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->comments:Ljava/util/Map;

    return-object v0
.end method

.method public currentChar()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentChar:J

    return-wide v0
.end method

.method public currentColumn()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentColumn:I

    return v0
.end method

.method public currentLine()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentLine:J

    return-wide v0
.end method

.method public currentParsedContent()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentParsedContent:Ljava/lang/String;

    return-object v0
.end method

.method public currentRecord()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->currentRecord:J

    return-wide v0
.end method

.method public lastComment()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/univocity/parsers/common/ParsingContextSnapshot;->lastComment:Ljava/lang/String;

    return-object v0
.end method
