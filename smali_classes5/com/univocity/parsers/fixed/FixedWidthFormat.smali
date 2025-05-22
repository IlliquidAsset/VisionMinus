.class public Lcom/univocity/parsers/fixed/FixedWidthFormat;
.super Lcom/univocity/parsers/common/Format;
.source "FixedWidthFormat.java"


# instance fields
.field private lookupWildcard:C

.field private padding:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/univocity/parsers/common/Format;-><init>()V

    const/16 v0, 0x20

    .line 36
    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFormat;->padding:C

    const/16 v0, 0x3f

    .line 37
    iput-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFormat;->lookupWildcard:C

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthFormat;->clone()Lcom/univocity/parsers/fixed/FixedWidthFormat;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/univocity/parsers/fixed/FixedWidthFormat;
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/univocity/parsers/common/Format;->clone()Lcom/univocity/parsers/common/Format;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/fixed/FixedWidthFormat;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthFormat;->clone()Lcom/univocity/parsers/fixed/FixedWidthFormat;

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

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 71
    iget-char v1, p0, Lcom/univocity/parsers/fixed/FixedWidthFormat;->padding:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "Padding"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getLookupWildcard()C
    .locals 1

    .line 91
    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFormat;->lookupWildcard:C

    return v0
.end method

.method public getPadding()C
    .locals 1

    .line 45
    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFormat;->padding:C

    return v0
.end method

.method public isPadding(C)Z
    .locals 1

    .line 65
    iget-char v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFormat;->padding:C

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setLookupWildcard(C)V
    .locals 0

    .line 104
    iput-char p1, p0, Lcom/univocity/parsers/fixed/FixedWidthFormat;->lookupWildcard:C

    return-void
.end method

.method public setPadding(C)V
    .locals 0

    .line 54
    iput-char p1, p0, Lcom/univocity/parsers/fixed/FixedWidthFormat;->padding:C

    return-void
.end method
