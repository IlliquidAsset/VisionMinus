.class public Lcom/powervision/sdk/dto/MapLocationDto;
.super Ljava/lang/Object;
.source "MapLocationDto.java"


# instance fields
.field public alt:F

.field public lat:F

.field public lon:F

.field public mapType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/powervision/sdk/dto/MapLocationDto;->mapType:I

    .line 10
    iput p2, p0, Lcom/powervision/sdk/dto/MapLocationDto;->lat:F

    .line 11
    iput p3, p0, Lcom/powervision/sdk/dto/MapLocationDto;->lon:F

    .line 12
    iput p4, p0, Lcom/powervision/sdk/dto/MapLocationDto;->alt:F

    return-void
.end method
