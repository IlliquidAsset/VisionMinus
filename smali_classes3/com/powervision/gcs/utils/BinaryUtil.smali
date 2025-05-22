.class public Lcom/powervision/gcs/utils/BinaryUtil;
.super Ljava/lang/Object;
.source "BinaryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x8

    ushr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intToHexadecimal(I)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toFullBinaryString(I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x1f

    shr-int v4, p0, v2

    and-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 17
    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static toFullBinaryString(J)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x40

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x3f

    shr-long v4, p0, v2

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x30

    add-long/2addr v4, v6

    long-to-int v5, v4

    int-to-char v4, v5

    .line 31
    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 12

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 47
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    int-to-double v5, v3

    int-to-double v3, v4

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    add-int/lit8 v9, v1, -0x1

    int-to-double v10, v1

    .line 48
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v3, v3, v7

    add-double/2addr v5, v3

    double-to-int v3, v5

    add-int/lit8 v2, v2, 0x1

    move v1, v9

    goto :goto_0

    :cond_0
    return v3
.end method
