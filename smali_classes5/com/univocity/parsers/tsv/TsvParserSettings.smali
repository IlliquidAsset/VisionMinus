.class public Lcom/univocity/parsers/tsv/TsvParserSettings;
.super Lcom/univocity/parsers/common/CommonParserSettings;
.source "TsvParserSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/CommonParserSettings<",
        "Lcom/univocity/parsers/tsv/TsvFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private lineJoiningEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonParserSettings;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvParserSettings;->lineJoiningEnabled:Z

    return-void
.end method


# virtual methods
.method protected addConfiguration(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->addConfiguration(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvParserSettings;->clone()Lcom/univocity/parsers/tsv/TsvParserSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonParserSettings;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/tsv/TsvParserSettings;->clone(Z)Lcom/univocity/parsers/tsv/TsvParserSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonSettings;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvParserSettings;->clone()Lcom/univocity/parsers/tsv/TsvParserSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonSettings;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/tsv/TsvParserSettings;->clone(Z)Lcom/univocity/parsers/tsv/TsvParserSettings;

    move-result-object p1

    return-object p1
.end method

.method public final clone()Lcom/univocity/parsers/tsv/TsvParserSettings;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonParserSettings;->clone()Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/tsv/TsvParserSettings;

    return-object v0
.end method

.method public final clone(Z)Lcom/univocity/parsers/tsv/TsvParserSettings;
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonParserSettings;->clone(Z)Lcom/univocity/parsers/common/CommonParserSettings;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/tsv/TsvParserSettings;

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvParserSettings;->clone()Lcom/univocity/parsers/tsv/TsvParserSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createDefaultFormat()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvParserSettings;->createDefaultFormat()Lcom/univocity/parsers/tsv/TsvFormat;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultFormat()Lcom/univocity/parsers/tsv/TsvFormat;
    .locals 1

    .line 86
    new-instance v0, Lcom/univocity/parsers/tsv/TsvFormat;

    invoke-direct {v0}, Lcom/univocity/parsers/tsv/TsvFormat;-><init>()V

    return-object v0
.end method

.method public isLineJoiningEnabled()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvParserSettings;->lineJoiningEnabled:Z

    return v0
.end method

.method public setLineJoiningEnabled(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/univocity/parsers/tsv/TsvParserSettings;->lineJoiningEnabled:Z

    return-void
.end method
