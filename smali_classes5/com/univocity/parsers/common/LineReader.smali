.class Lcom/univocity/parsers/common/LineReader;
.super Ljava/io/Reader;
.source "LineReader.java"


# instance fields
.field private length:I

.field private line:Ljava/lang/String;

.field private next:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/univocity/parsers/common/LineReader;->next:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/univocity/parsers/common/LineReader;->line:Ljava/lang/String;

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read([CII)I
    .locals 3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 47
    :cond_0
    iget v0, p0, Lcom/univocity/parsers/common/LineReader;->next:I

    iget v1, p0, Lcom/univocity/parsers/common/LineReader;->length:I

    if-lt v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    sub-int/2addr v1, v0

    .line 50
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 51
    iget-object v0, p0, Lcom/univocity/parsers/common/LineReader;->line:Ljava/lang/String;

    iget v1, p0, Lcom/univocity/parsers/common/LineReader;->next:I

    add-int v2, v1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 52
    iget p1, p0, Lcom/univocity/parsers/common/LineReader;->next:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/univocity/parsers/common/LineReader;->next:I

    return p3
.end method

.method public ready()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/univocity/parsers/common/LineReader;->line:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLine(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/univocity/parsers/common/LineReader;->line:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/univocity/parsers/common/LineReader;->length:I

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/univocity/parsers/common/LineReader;->next:I

    return-void
.end method

.method public skip(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method
