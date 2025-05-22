.class public Lcom/powervision/aircraft/utils/NotifyMessageUtil;
.super Ljava/lang/Object;
.source "NotifyMessageUtil.java"


# static fields
.field private static mCurTime:J

.field public static promptCount:I

.field public static warningCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearMsgCount()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    sput v0, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->warningCount:I

    .line 58
    sput v0, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->promptCount:I

    return-void
.end method

.method public static getTypeColor(Landroid/content/Context;I)I
    .locals 0

    .line 27
    sget p0, Lcom/powervision/aircraft/R$color;->transparent:I

    return p0
.end method

.method public static isDoubleClick(I)Z
    .locals 4

    .line 67
    sget-wide v0, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->mCurTime:J

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->mCurTime:J

    sub-long/2addr v2, v0

    int-to-long v0, p0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    .line 71
    sput-wide v0, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->mCurTime:J

    :cond_1
    return p0
.end method

.method public static updateMsgCount(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 50
    sget p0, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->warningCount:I

    sub-int/2addr p0, v0

    sput p0, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->warningCount:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 52
    sget p0, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->promptCount:I

    sub-int/2addr p0, v0

    sput p0, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->promptCount:I

    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "error .. message data is null ..."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
