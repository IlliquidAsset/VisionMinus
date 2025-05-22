.class public Lcom/univocity/parsers/conversions/CharacterConversion;
.super Lcom/univocity/parsers/conversions/ObjectConversion;
.source "CharacterConversion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/conversions/ObjectConversion<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected fromString(Ljava/lang/String;)Ljava/lang/Character;
    .locals 2

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    const-string v1, "\'{value}\' is not a character"

    invoke-direct {v0, v1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 52
    throw v0
.end method

.method protected bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/CharacterConversion;->fromString(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
