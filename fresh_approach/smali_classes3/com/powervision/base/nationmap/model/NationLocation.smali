.class public Lcom/powervision/base/nationmap/model/NationLocation;
.super Ljava/lang/Object;
.source "NationLocation.java"


# instance fields
.field public final latitude:D

.field public final longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/powervision/base/nationmap/model/NationLocation;->latitude:D

    .line 14
    iput-wide p3, p0, Lcom/powervision/base/nationmap/model/NationLocation;->longitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/powervision/base/nationmap/model/NationLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/powervision/base/nationmap/model/NationLocation;->longitude:D

    return-wide v0
.end method
