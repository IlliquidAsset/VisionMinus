.class public Lcom/powervision/camera/model/bean/CameraGeneraGroup3;
.super Ljava/lang/Object;
.source "CameraGeneraGroup3.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private mItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->mItemName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
