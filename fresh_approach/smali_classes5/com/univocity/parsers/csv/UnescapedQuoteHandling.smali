.class public final enum Lcom/univocity/parsers/csv/UnescapedQuoteHandling;
.super Ljava/lang/Enum;
.source "UnescapedQuoteHandling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/univocity/parsers/csv/UnescapedQuoteHandling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

.field public static final enum RAISE_ERROR:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

.field public static final enum SKIP_VALUE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

.field public static final enum STOP_AT_CLOSING_QUOTE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

.field public static final enum STOP_AT_DELIMITER:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    new-instance v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    const-string v1, "STOP_AT_CLOSING_QUOTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_CLOSING_QUOTE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    .line 46
    new-instance v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    const-string v1, "STOP_AT_DELIMITER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_DELIMITER:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    .line 52
    new-instance v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    const-string v1, "SKIP_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->SKIP_VALUE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    .line 57
    new-instance v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    const-string v1, "RAISE_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->RAISE_ERROR:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    .line 34
    sget-object v6, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_CLOSING_QUOTE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    aput-object v6, v1, v2

    sget-object v2, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->STOP_AT_DELIMITER:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    aput-object v2, v1, v3

    sget-object v2, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->SKIP_VALUE:Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->$VALUES:[Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/univocity/parsers/csv/UnescapedQuoteHandling;
    .locals 1

    .line 34
    const-class v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    return-object p0
.end method

.method public static values()[Lcom/univocity/parsers/csv/UnescapedQuoteHandling;
    .locals 1

    .line 34
    sget-object v0, Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->$VALUES:[Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    invoke-virtual {v0}, [Lcom/univocity/parsers/csv/UnescapedQuoteHandling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/csv/UnescapedQuoteHandling;

    return-object v0
.end method
