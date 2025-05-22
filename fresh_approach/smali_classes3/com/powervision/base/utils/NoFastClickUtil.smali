.class public final Lcom/powervision/base/utils/NoFastClickUtil;
.super Ljava/lang/Object;
.source "NoFastClickUtil.java"


# static fields
.field private static final TIME:I = 0x320

.field private static sLastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFastClick()Z
    .locals 7

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    sget-wide v2, Lcom/powervision/base/utils/NoFastClickUtil;->sLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v2, 0x0

    .line 30
    sput-wide v0, Lcom/powervision/base/utils/NoFastClickUtil;->sLastClickTime:J

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public static isFastClick(I)Z
    .locals 6

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    sget-wide v2, Lcom/powervision/base/utils/NoFastClickUtil;->sLastClickTime:J

    sub-long v2, v0, v2

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 41
    :goto_0
    sput-wide v0, Lcom/powervision/base/utils/NoFastClickUtil;->sLastClickTime:J

    return p0
.end method
