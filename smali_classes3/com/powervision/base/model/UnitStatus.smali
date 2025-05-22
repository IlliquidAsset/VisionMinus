.class public Lcom/powervision/base/model/UnitStatus;
.super Ljava/lang/Object;
.source "UnitStatus.java"


# instance fields
.field private unit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnit()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/powervision/base/model/UnitStatus;->unit:I

    return v0
.end method

.method public setUnit(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/powervision/base/model/UnitStatus;->unit:I

    return-void
.end method
