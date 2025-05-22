.class public Lcom/powervision/camera/model/bean/CameraPhotoGroup3;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraPhotoGroup3.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/entity/AbstractExpandableItem<",
        "Lcom/powervision/camera/model/bean/CameraPhotoChild3;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field private mItemName:Ljava/lang/String;

.field private mItemValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->mItemName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->mItemValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->mItemValue:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->mItemName:Ljava/lang/String;

    return-void
.end method

.method public setItemValue(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup3;->mItemValue:Ljava/lang/String;

    return-void
.end method
