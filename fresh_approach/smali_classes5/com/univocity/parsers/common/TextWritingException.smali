.class public Lcom/univocity/parsers/common/TextWritingException;
.super Lcom/univocity/parsers/common/AbstractException;
.source "TextWritingException.java"


# static fields
.field private static final serialVersionUID:J = 0x63e61397f1df655fL


# instance fields
.field private final recordCharacters:Ljava/lang/String;

.field private final recordCount:J

.field private final recordData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 79
    invoke-direct/range {v0 .. v6}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 110
    invoke-direct/range {v0 .. v6}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object v6, p5

    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 99
    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p6}, Lcom/univocity/parsers/common/AbstractException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-wide p2, p0, Lcom/univocity/parsers/common/TextWritingException;->recordCount:J

    .line 45
    iput-object p4, p0, Lcom/univocity/parsers/common/TextWritingException;->recordData:[Ljava/lang/Object;

    .line 46
    iput-object p5, p0, Lcom/univocity/parsers/common/TextWritingException;->recordCharacters:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    .line 70
    invoke-direct/range {v0 .. v6}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/univocity/parsers/common/TextWritingException;-><init>(Ljava/lang/String;J[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected getDetails()Ljava/lang/String;
    .locals 3

    .line 146
    iget-wide v0, p0, Lcom/univocity/parsers/common/TextWritingException;->recordCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, ""

    const-string v2, "recordCount"

    invoke-static {v1, v2, v0}, Lcom/univocity/parsers/common/TextWritingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/univocity/parsers/common/TextWritingException;->recordData:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/TextWritingException;->restrictContent([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "recordData"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/TextWritingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/univocity/parsers/common/TextWritingException;->recordCharacters:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/common/TextWritingException;->restrictContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recordCharacters"

    invoke-static {v0, v2, v1}, Lcom/univocity/parsers/common/TextWritingException;->printIfNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Error writing data"

    return-object v0
.end method

.method public getRecordCharacters()Ljava/lang/String;
    .locals 1

    .line 137
    iget v0, p0, Lcom/univocity/parsers/common/TextWritingException;->errorContentLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/TextWritingException;->recordCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordCount()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/univocity/parsers/common/TextWritingException;->recordCount:J

    return-wide v0
.end method

.method public getRecordData()[Ljava/lang/Object;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/univocity/parsers/common/TextWritingException;->recordData:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/TextWritingException;->restrictContent([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setErrorContentLength(I)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/AbstractException;->setErrorContentLength(I)V

    return-void
.end method
