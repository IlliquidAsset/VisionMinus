.class public Lcom/powervision/gcs/model/ship/ShipMediaFileCount$ParameterBean;
.super Ljava/lang/Object;
.source "ShipMediaFileCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipMediaFileCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaFileCount$ParameterBean;->count:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaFileCount$ParameterBean;->count:I

    return-void
.end method
