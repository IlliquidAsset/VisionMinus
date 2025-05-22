.class public Lcom/powervision/livestreaming/core/RESFrameRateMeter;
.super Ljava/lang/Object;
.source "RESFrameRateMeter.java"


# static fields
.field private static final GET_TIMETRAVEL_MS:J = 0x7d0L

.field private static final TIMETRAVEL:J = 0x1L

.field private static final TIMETRAVEL_MS:J = 0x3e8L


# instance fields
.field private lastFps:F

.field private lastUpdateTime:J

.field private times:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->times:I

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastFps:F

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastUpdateTime:J

    return-void
.end method


# virtual methods
.method public count()V
    .locals 9

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastUpdateTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 24
    iput-wide v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastUpdateTime:J

    .line 26
    :cond_0
    iget-wide v2, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastUpdateTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 27
    iget v4, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->times:I

    int-to-float v4, v4

    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float/2addr v4, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v4, v4, v2

    iput v4, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastFps:F

    .line 28
    iput-wide v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastUpdateTime:J

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->times:I

    .line 31
    :cond_1
    iget v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->times:I

    return-void
.end method

.method public getFps()F
    .locals 5

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    iget v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastFps:F

    return v0
.end method

.method public reSet()V
    .locals 2

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->times:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastFps:F

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/powervision/livestreaming/core/RESFrameRateMeter;->lastUpdateTime:J

    return-void
.end method
