.class public Lcom/powervision/opensource/geo/BubbleModel;
.super Ljava/lang/Object;
.source "BubbleModel.java"


# instance fields
.field startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStartTime()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/powervision/opensource/geo/BubbleModel;->startTime:J

    return-wide v0
.end method

.method public setStartTime(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/powervision/opensource/geo/BubbleModel;->startTime:J

    return-void
.end method
