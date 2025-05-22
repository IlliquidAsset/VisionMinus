.class public Lcom/univocity/parsers/tsv/TsvWriterSettings;
.super Lcom/univocity/parsers/common/CommonWriterSettings;
.source "TsvWriterSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/CommonWriterSettings<",
        "Lcom/univocity/parsers/tsv/TsvFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private lineJoiningEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvWriterSettings;->lineJoiningEnabled:Z

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

    .line 97
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->addConfiguration(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonSettings;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->clone()Lcom/univocity/parsers/tsv/TsvWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonSettings;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->clone(Z)Lcom/univocity/parsers/tsv/TsvWriterSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->clone()Lcom/univocity/parsers/tsv/TsvWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->clone(Z)Lcom/univocity/parsers/tsv/TsvWriterSettings;

    move-result-object p1

    return-object p1
.end method

.method public final clone()Lcom/univocity/parsers/tsv/TsvWriterSettings;
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;->clone()Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/tsv/TsvWriterSettings;

    return-object v0
.end method

.method public final clone(Z)Lcom/univocity/parsers/tsv/TsvWriterSettings;
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->clone(Z)Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/tsv/TsvWriterSettings;

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->clone()Lcom/univocity/parsers/tsv/TsvWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createDefaultFormat()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/univocity/parsers/tsv/TsvWriterSettings;->createDefaultFormat()Lcom/univocity/parsers/tsv/TsvFormat;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultFormat()Lcom/univocity/parsers/tsv/TsvFormat;
    .locals 1

    .line 92
    new-instance v0, Lcom/univocity/parsers/tsv/TsvFormat;

    invoke-direct {v0}, Lcom/univocity/parsers/tsv/TsvFormat;-><init>()V

    return-object v0
.end method

.method public isLineJoiningEnabled()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/univocity/parsers/tsv/TsvWriterSettings;->lineJoiningEnabled:Z

    return v0
.end method

.method public setLineJoiningEnabled(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/univocity/parsers/tsv/TsvWriterSettings;->lineJoiningEnabled:Z

    return-void
.end method
