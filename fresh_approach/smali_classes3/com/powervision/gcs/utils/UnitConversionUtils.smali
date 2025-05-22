.class public Lcom/powervision/gcs/utils/UnitConversionUtils;
.super Ljava/lang/Object;
.source "UnitConversionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static celsiusToFahrenheit(D)D
    .locals 2

    const-wide v0, 0x3ffccccccccccccdL    # 1.8

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    add-double/2addr p0, v0

    return-wide p0
.end method
