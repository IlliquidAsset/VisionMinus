.class public abstract Lcom/univocity/parsers/conversions/ObjectConversion;
.super Lcom/univocity/parsers/conversions/NullConversion;
.source "ObjectConversion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/univocity/parsers/conversions/NullConversion<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0, v0}, Lcom/univocity/parsers/conversions/NullConversion;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/conversions/NullConversion;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->execute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Lcom/univocity/parsers/conversions/NullConversion;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic fromInput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->fromInput(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final fromInput(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract fromString(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public getValueIfObjectIsNull()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/univocity/parsers/conversions/ObjectConversion;->getValueOnNullOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValueIfStringIsNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/univocity/parsers/conversions/ObjectConversion;->getValueOnNullInput()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->revert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Lcom/univocity/parsers/conversions/NullConversion;->revert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public setValueIfObjectIsNull(Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->setValueOnNullOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public setValueIfStringIsNull(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->setValueOnNullInput(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic undo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->undo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final undo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
