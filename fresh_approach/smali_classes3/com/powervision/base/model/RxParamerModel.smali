.class public Lcom/powervision/base/model/RxParamerModel;
.super Ljava/lang/Object;
.source "RxParamerModel.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private isOnBarrier:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnBarrier()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/powervision/base/model/RxParamerModel;->isOnBarrier:Z

    return v0
.end method

.method public setOnBarrier(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/powervision/base/model/RxParamerModel;->isOnBarrier:Z

    return-void
.end method
