.class public Lcom/powervision/gcs/utils/DecimalFormatUtil;
.super Ljava/lang/Object;
.source "DecimalFormatUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecimalFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 1

    .line 20
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDotSeparatorDecimalFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 2

    .line 29
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance p0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {p0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v1, 0x2e

    .line 31
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 32
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    return-object v0
.end method
