.class public Lcom/univocity/parsers/conversions/RegexConversion;
.super Ljava/lang/Object;
.source "RegexConversion.java"

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
.field private final replaceRegex:Ljava/lang/String;

.field private final replacement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/univocity/parsers/conversions/RegexConversion;->replaceRegex:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/univocity/parsers/conversions/RegexConversion;->replacement:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/RegexConversion;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/conversions/RegexConversion;->replaceRegex:Ljava/lang/String;

    iget-object v1, p0, Lcom/univocity/parsers/conversions/RegexConversion;->replacement:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/RegexConversion;->revert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/RegexConversion;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
