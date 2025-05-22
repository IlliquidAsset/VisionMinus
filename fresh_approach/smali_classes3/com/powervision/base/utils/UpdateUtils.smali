.class public Lcom/powervision/base/utils/UpdateUtils;
.super Ljava/lang/Object;
.source "UpdateUtils.java"


# static fields
.field private static lastStorageTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lowFrequencyUpdate(J)Z
    .locals 5

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13
    sget-wide v2, Lcom/powervision/base/utils/UpdateUtils;->lastStorageTime:J

    sub-long v2, v0, v2

    cmp-long v4, v2, p0

    if-lez v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    sput-wide v0, Lcom/powervision/base/utils/UpdateUtils;->lastStorageTime:J

    return p0
.end method
