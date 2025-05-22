.class public Lcom/univocity/parsers/conversions/FormattedBigDecimalConversion;
.super Lcom/univocity/parsers/conversions/NumericConversion;
.source "FormattedBigDecimalConversion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/conversions/NumericConversion<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/univocity/parsers/conversions/NumericConversion;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/conversions/NumericConversion;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/univocity/parsers/conversions/NumericConversion;-><init>(Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, v0, p1}, Lcom/univocity/parsers/conversions/NumericConversion;-><init>(Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/text/DecimalFormat;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/univocity/parsers/conversions/NumericConversion;-><init>([Ljava/text/DecimalFormat;)V

    return-void
.end method


# virtual methods
.method protected configureFormatter(Ljava/text/DecimalFormat;)V
    .locals 1

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    return-void
.end method
