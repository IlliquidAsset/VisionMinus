.class public Lcom/univocity/parsers/tsv/TsvFormat;
.super Lcom/univocity/parsers/common/Format;
.source "TsvFormat.java"


# instance fields
.field private escapeChar:C

.field private escapedTabChar:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/univocity/parsers/common/Format;-><init>()V

    const/16 v0, 0x5c

    .line 35
    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvFormat;->escapeChar:C

    const/16 v0, 0x74

    .line 36
    iput-char v0, p0, Lcom/univocity/parsers/tsv/TsvFormat;->escapedTabChar:C

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvFormat;->clone()Lcom/univocity/parsers/tsv/TsvFormat;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/univocity/parsers/tsv/TsvFormat;
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/univocity/parsers/common/Format;->clone()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/tsv/TsvFormat;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvFormat;->clone()Lcom/univocity/parsers/tsv/TsvFormat;

    move-result-object v0

    return-object v0
.end method

.method protected getConfiguration()Ljava/util/TreeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 93
    iget-char v1, p0, Lcom/univocity/parsers/tsv/TsvFormat;->escapeChar:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "Escape character"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getEscapeChar()C
    .locals 1

    .line 52
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvFormat;->escapeChar:C

    return v0
.end method

.method public getEscapedTabChar()C
    .locals 1

    .line 65
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvFormat;->escapedTabChar:C

    return v0
.end method

.method public isEscapeChar(C)Z
    .locals 1

    .line 87
    iget-char v0, p0, Lcom/univocity/parsers/tsv/TsvFormat;->escapeChar:C

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setEscapeChar(C)V
    .locals 0

    .line 43
    iput-char p1, p0, Lcom/univocity/parsers/tsv/TsvFormat;->escapeChar:C

    return-void
.end method

.method public setEscapedTabChar(C)V
    .locals 0

    .line 78
    iput-char p1, p0, Lcom/univocity/parsers/tsv/TsvFormat;->escapedTabChar:C

    return-void
.end method
