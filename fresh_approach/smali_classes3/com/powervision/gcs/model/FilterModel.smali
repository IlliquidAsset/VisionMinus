.class public Lcom/powervision/gcs/model/FilterModel;
.super Ljava/lang/Object;
.source "FilterModel.java"


# instance fields
.field private status:J

.field private time:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/powervision/gcs/model/FilterModel;->status:J

    .line 12
    iput-wide p3, p0, Lcom/powervision/gcs/model/FilterModel;->time:J

    return-void
.end method


# virtual methods
.method public getStatus()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/powervision/gcs/model/FilterModel;->status:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/powervision/gcs/model/FilterModel;->time:J

    return-wide v0
.end method

.method public setStatus(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/powervision/gcs/model/FilterModel;->status:J

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/powervision/gcs/model/FilterModel;->time:J

    return-void
.end method
