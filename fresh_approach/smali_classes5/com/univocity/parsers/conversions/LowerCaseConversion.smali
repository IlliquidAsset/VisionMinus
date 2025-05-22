.class public Lcom/univocity/parsers/conversions/LowerCaseConversion;
.super Ljava/lang/Object;
.source "LowerCaseConversion.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/LowerCaseConversion;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/LowerCaseConversion;->revert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/LowerCaseConversion;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
