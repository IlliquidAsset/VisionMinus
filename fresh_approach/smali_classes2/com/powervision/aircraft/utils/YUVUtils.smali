.class public Lcom/powervision/aircraft/utils/YUVUtils;
.super Ljava/lang/Object;
.source "YUVUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static YUV420pMirrorX([B[BII)V
    .locals 10

    .line 364
    div-int/lit8 v0, p2, 0x2

    .line 365
    div-int/lit8 v1, p3, 0x2

    mul-int v2, p2, p3

    const/4 v3, 0x0

    move v5, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    sub-int/2addr v5, p2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, p2, :cond_0

    add-int/lit8 v8, v6, 0x1

    add-int v9, v5, v7

    .line 371
    aget-byte v9, p1, v9

    aput-byte v9, p0, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_1
    div-int/lit8 p2, v2, 0x4

    add-int/2addr p2, v2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, v1, :cond_3

    sub-int/2addr p2, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_2

    add-int/lit8 v5, v6, 0x1

    add-int v7, p2, v4

    .line 379
    aget-byte v7, p1, v7

    aput-byte v7, p0, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 383
    :cond_3
    div-int/lit8 p2, v2, 0x2

    add-int/2addr v2, p2

    const/4 p2, 0x0

    :goto_4
    if-ge p2, v1, :cond_5

    sub-int/2addr v2, v0

    const/4 p3, 0x0

    :goto_5
    if-ge p3, v0, :cond_4

    add-int/lit8 v4, v6, 0x1

    add-int v5, v2, p3

    .line 387
    aget-byte v5, p1, v5

    aput-byte v5, p0, v6

    add-int/lit8 p3, p3, 0x1

    move v6, v4

    goto :goto_5

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static YUV420pMirrorY([B[BII)V
    .locals 8

    .line 335
    div-int/lit8 v0, p2, 0x2

    .line 336
    div-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    add-int/lit8 v5, p2, -0x1

    :goto_1
    if-ltz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    mul-int v7, p2, v3

    add-int/2addr v7, v5

    .line 340
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v5, v5, -0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    mul-int p2, p2, p3

    const/4 p3, 0x0

    :goto_2
    if-ge p3, v1, :cond_3

    add-int/lit8 v3, v0, -0x1

    :goto_3
    if-ltz v3, :cond_2

    add-int/lit8 v5, v4, 0x1

    mul-int v6, v0, p3

    add-int/2addr v6, p2

    add-int/2addr v6, v3

    .line 348
    aget-byte v6, p1, v6

    aput-byte v6, p0, v4

    add-int/lit8 v3, v3, -0x1

    move v4, v5

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 353
    :cond_3
    div-int/lit8 p3, p2, 0x4

    add-int/2addr p2, p3

    :goto_4
    if-ge v2, v1, :cond_5

    add-int/lit8 p3, v0, -0x1

    :goto_5
    if-ltz p3, :cond_4

    add-int/lit8 v3, v4, 0x1

    mul-int v5, v0, v2

    add-int/2addr v5, p2

    add-int/2addr v5, p3

    .line 356
    aget-byte v5, p1, v5

    aput-byte v5, p0, v4

    add-int/lit8 p3, p3, -0x1

    move v4, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static YUV420pRotate180([B[BII)V
    .locals 7

    .line 277
    div-int/lit8 v0, p2, 0x2

    .line 278
    div-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p3, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_1

    move v4, p2

    :goto_1
    if-lez v4, :cond_0

    add-int/lit8 v5, v3, 0x1

    mul-int v6, p2, v2

    add-int/2addr v6, v4

    .line 282
    aget-byte v6, p1, v6

    aput-byte v6, p0, v3

    add-int/lit8 v4, v4, -0x1

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    mul-int p2, p2, p3

    add-int/lit8 v1, v1, -0x1

    move p3, v1

    :goto_2
    if-ltz p3, :cond_3

    move v2, v0

    :goto_3
    if-lez v2, :cond_2

    add-int/lit8 v4, v3, 0x1

    mul-int v5, v0, v2

    add-int/2addr v5, p2

    add-int/2addr v5, p3

    .line 290
    aget-byte v5, p1, v5

    aput-byte v5, p0, v3

    add-int/lit8 v2, v2, -0x1

    move v3, v4

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 295
    :cond_3
    div-int/lit8 p3, p2, 0x4

    add-int/2addr p2, p3

    :goto_4
    if-ltz v1, :cond_5

    move p3, v0

    :goto_5
    if-lez p3, :cond_4

    add-int/lit8 v2, v3, 0x1

    mul-int v4, v0, p3

    add-int/2addr v4, p2

    add-int/2addr v4, v1

    .line 298
    aget-byte v4, p1, v4

    aput-byte v4, p0, v3

    add-int/lit8 p3, p3, -0x1

    move v3, v2

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static YUV420pRotate270([B[BII)V
    .locals 8

    .line 306
    div-int/lit8 v0, p2, 0x2

    .line 307
    div-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ltz v2, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p3, :cond_0

    add-int/lit8 v6, v4, 0x1

    mul-int v7, p2, v5

    add-int/2addr v7, v2

    .line 311
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    mul-int p2, p2, p3

    add-int/lit8 p3, v0, -0x1

    move v2, p3

    :goto_2
    if-ltz v2, :cond_3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_2

    add-int/lit8 v6, v4, 0x1

    mul-int v7, v0, v5

    add-int/2addr v7, p2

    add-int/2addr v7, v2

    .line 319
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 324
    :cond_3
    div-int/lit8 v2, p2, 0x4

    add-int/2addr p2, v2

    :goto_4
    if-ltz p3, :cond_5

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_4

    add-int/lit8 v5, v4, 0x1

    mul-int v6, v0, v2

    add-int/2addr v6, p2

    add-int/2addr v6, p3

    .line 327
    aget-byte v6, p1, v6

    aput-byte v6, p0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_5

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static YUV420pRotate90([B[BII)V
    .locals 8

    .line 227
    div-int/lit8 v0, p2, 0x2

    .line 228
    div-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    add-int/lit8 v5, p3, -0x1

    :goto_1
    if-ltz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    mul-int v7, p2, v5

    add-int/2addr v7, v3

    .line 232
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v5, v5, -0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    mul-int p2, p2, p3

    const/4 p3, 0x0

    :goto_2
    if-ge p3, v0, :cond_3

    add-int/lit8 v3, v1, -0x1

    :goto_3
    if-ltz v3, :cond_2

    add-int/lit8 v5, v4, 0x1

    mul-int v6, v0, v3

    add-int/2addr v6, p2

    add-int/2addr v6, p3

    .line 240
    aget-byte v6, p1, v6

    aput-byte v6, p0, v4

    add-int/lit8 v3, v3, -0x1

    move v4, v5

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 245
    :cond_3
    div-int/lit8 p3, p2, 0x4

    add-int/2addr p2, p3

    :goto_4
    if-ge v2, v0, :cond_5

    add-int/lit8 p3, v1, -0x1

    :goto_5
    if-ltz p3, :cond_4

    add-int/lit8 v3, v4, 0x1

    mul-int v5, v0, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v2

    .line 248
    aget-byte v5, p1, v5

    aput-byte v5, p0, v4

    add-int/lit8 p3, p3, -0x1

    move v4, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static YUV420spMirrorY([B[BII)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    add-int/2addr v1, p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_0

    sub-int v5, v1, v4

    .line 208
    aget-byte v5, p1, v5

    aput-byte v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    shr-int/lit8 p3, p3, 0x1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p3, :cond_3

    add-int/2addr v1, p2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, p2, :cond_2

    sub-int v5, v1, v4

    add-int/lit8 v6, v5, -0x1

    .line 217
    aget-byte v6, p1, v6

    aput-byte v6, p0, v3

    add-int/lit8 v6, v3, 0x1

    .line 218
    aget-byte v5, p1, v5

    aput-byte v5, p0, v6

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static YUV420spRotate90([B[BII)V
    .locals 7

    .line 256
    div-int/lit8 v0, p2, 0x2

    .line 257
    div-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    add-int/lit8 v4, p3, -0x1

    :goto_1
    if-ltz v4, :cond_0

    add-int/lit8 v5, v3, 0x1

    mul-int v6, p2, v4

    add-int/2addr v6, v2

    .line 261
    aget-byte v6, p1, v6

    aput-byte v6, p0, v3

    add-int/lit8 v4, v4, -0x1

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    mul-int p3, p3, p2

    :goto_2
    if-ge v1, p2, :cond_3

    add-int/lit8 v2, v0, -0x1

    :goto_3
    if-ltz v2, :cond_2

    add-int/lit8 v4, v3, 0x1

    mul-int v5, p2, v2

    add-int/2addr v5, p3

    add-int/2addr v5, v1

    .line 268
    aget-byte v6, p1, v5

    aput-byte v6, p0, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 269
    aget-byte v5, p1, v5

    aput-byte v5, p0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static YUV420spRotateNegative90([B[BII)V
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    mul-int v1, p2, p3

    shr-int/lit8 v2, p3, 0x1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, p2, :cond_3

    add-int/lit8 v5, p2, -0x1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, p3, :cond_2

    sub-int v7, v5, v3

    .line 181
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_4
    if-ge p3, p2, :cond_5

    add-int v3, v1, p2

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_4

    sub-int v6, v3, p3

    add-int/lit8 v7, v6, -0x1

    .line 190
    aget-byte v7, p1, v7

    aput-byte v7, p0, v4

    add-int/lit8 v7, v4, 0x1

    .line 191
    aget-byte v6, p1, v6

    aput-byte v6, p0, v7

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v3, p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 p3, p3, 0x2

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static YUVMirrorY([B[BII)V
    .locals 10

    mul-int v0, p2, p3

    .line 78
    new-array v1, v0, [B

    .line 79
    div-int/lit8 v2, v0, 0x4

    new-array v3, v2, [B

    .line 80
    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 82
    invoke-static {p1, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    invoke-static {p1, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    .line 84
    invoke-static {p1, v0, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p1, p3, :cond_1

    .line 88
    new-array v6, p2, [B

    .line 89
    invoke-static {v1, v0, v6, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, p2, :cond_0

    add-int/lit8 v8, v2, 0x1

    sub-int v9, p2, v7

    add-int/lit8 v9, v9, -0x1

    .line 92
    aget-byte v9, v6, v9

    aput-byte v9, p0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_1

    :cond_0
    add-int/2addr v0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 98
    :goto_2
    div-int/lit8 v1, p3, 0x2

    if-ge p1, v1, :cond_3

    .line 99
    div-int/lit8 v1, p2, 0x2

    new-array v6, v1, [B

    .line 100
    invoke-static {v3, v0, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v1, :cond_2

    add-int/lit8 v8, v2, 0x1

    sub-int v9, v1, v7

    add-int/lit8 v9, v9, -0x1

    .line 103
    aget-byte v9, v6, v9

    aput-byte v9, p0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_3

    :cond_2
    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_4
    if-ge p1, v1, :cond_5

    .line 109
    div-int/lit8 v0, p2, 0x2

    new-array v3, v0, [B

    .line 110
    invoke-static {v4, p3, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v0, :cond_4

    add-int/lit8 v7, v2, 0x1

    sub-int v8, v0, v6

    add-int/lit8 v8, v8, -0x1

    .line 113
    aget-byte v8, v3, v8

    aput-byte v8, p0, v2

    add-int/lit8 v6, v6, 0x1

    move v2, v7

    goto :goto_5

    :cond_4
    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public static YUVRotate180([B[BII)V
    .locals 7

    mul-int p2, p2, p3

    .line 18
    new-array p3, p2, [B

    .line 19
    div-int/lit8 v0, p2, 0x4

    new-array v1, v0, [B

    .line 20
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 22
    invoke-static {p1, v3, p3, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, p2, v0

    .line 24
    invoke-static {p1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v5, v4, 0x1

    sub-int v6, p2, p1

    add-int/lit8 v6, v6, -0x1

    .line 28
    aget-byte v6, p3, v6

    aput-byte v6, p0, v4

    add-int/lit8 p1, p1, 0x1

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_1

    add-int/lit8 p2, v4, 0x1

    sub-int p3, v0, p1

    add-int/lit8 p3, p3, -0x1

    .line 32
    aget-byte p3, v1, p3

    aput-byte p3, p0, v4

    add-int/lit8 p1, p1, 0x1

    move v4, p2

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v0, :cond_2

    add-int/lit8 p1, v4, 0x1

    sub-int p2, v0, v3

    add-int/lit8 p2, p2, -0x1

    .line 35
    aget-byte p2, v2, p2

    aput-byte p2, p0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, p1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static YUVSPMirrorY([B[BII)V
    .locals 9

    mul-int v0, p2, p3

    .line 127
    new-array v1, v0, [B

    .line 128
    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 130
    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    new-array p1, v2, [B

    const/4 v2, 0x0

    .line 133
    :goto_0
    div-int/lit8 v5, v0, 0x4

    if-ge v2, v5, :cond_0

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v5, 0x1

    .line 134
    aget-byte v7, v3, v6

    aput-byte v7, p1, v5

    .line 135
    aget-byte v5, v3, v5

    aput-byte v5, p1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    .line 140
    new-array v5, p2, [B

    .line 141
    invoke-static {v1, v2, v5, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, p2, :cond_1

    add-int/lit8 v7, v3, 0x1

    sub-int v8, p2, v6

    add-int/lit8 v8, v8, -0x1

    .line 144
    aget-byte v8, v5, v8

    aput-byte v8, p0, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_2

    :cond_1
    add-int/2addr v2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    :goto_3
    div-int/lit8 v2, p3, 0x2

    if-ge v0, v2, :cond_4

    .line 150
    new-array v2, p2, [B

    .line 151
    invoke-static {p1, v1, v2, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, p2, :cond_3

    add-int/lit8 v6, v3, 0x1

    sub-int v7, p2, v5

    add-int/lit8 v7, v7, -0x1

    .line 154
    aget-byte v7, v2, v7

    aput-byte v7, p0, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_4

    :cond_3
    add-int/2addr v1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static YUVSPRotate180([B[BII)V
    .locals 7

    mul-int p2, p2, p3

    .line 47
    new-array p3, p2, [B

    .line 48
    div-int/lit8 v0, p2, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 49
    invoke-static {p1, v2, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    new-array p1, v0, [B

    const/4 v3, 0x0

    .line 52
    :goto_0
    div-int/lit8 v4, p2, 0x4

    if-ge v3, v4, :cond_0

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x1

    .line 53
    aget-byte v6, v1, v5

    aput-byte v6, p1, v4

    .line 54
    aget-byte v4, v1, v4

    aput-byte v4, p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    add-int/lit8 v4, v3, 0x1

    sub-int v5, p2, v1

    add-int/lit8 v5, v5, -0x1

    .line 60
    aget-byte v5, p3, v5

    aput-byte v5, p0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    add-int/lit8 p2, v3, 0x1

    sub-int p3, v0, v2

    add-int/lit8 p3, p3, -0x1

    .line 64
    aget-byte p3, p1, p3

    aput-byte p3, p0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    return-void
.end method
