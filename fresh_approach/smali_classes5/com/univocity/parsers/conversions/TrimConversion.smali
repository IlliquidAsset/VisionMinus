.class public Lcom/univocity/parsers/conversions/TrimConversion;
.super Ljava/lang/Object;
.source "TrimConversion.java"

# interfaces
.implements Lcom/univocity/parsers/conversions/Conversion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/conversions/Conversion<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/univocity/parsers/conversions/TrimConversion;->length:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 46
    iput p1, p0, Lcom/univocity/parsers/conversions/TrimConversion;->length:I

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maximum trim length must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/TrimConversion;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 65
    :cond_1
    iget v0, p0, Lcom/univocity/parsers/conversions/TrimConversion;->length:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    .line 67
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    const-string p1, ""

    return-object p1

    .line 74
    :cond_3
    iget v1, p0, Lcom/univocity/parsers/conversions/TrimConversion;->length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget v1, p0, Lcom/univocity/parsers/conversions/TrimConversion;->length:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 79
    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_6

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 83
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/TrimConversion;->revert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/TrimConversion;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
