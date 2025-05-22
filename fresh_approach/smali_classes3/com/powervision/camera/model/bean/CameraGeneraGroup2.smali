.class public Lcom/powervision/camera/model/bean/CameraGeneraGroup2;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraGeneraGroup2.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/entity/AbstractExpandableItem<",
        "Lcom/powervision/camera/model/bean/CameraGeneralChild1;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field private mBackRes:I

.field private mItemName:Ljava/lang/String;

.field private mItemValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->mItemName:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->mBackRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->mItemName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->mItemValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBackRes()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->mBackRes:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->mItemValue:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBackRes(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->mBackRes:I

    return-void
.end method

.method public setItemValue(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->mItemValue:Ljava/lang/String;

    return-void
.end method
