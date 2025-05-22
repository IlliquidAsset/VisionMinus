.class public Lcom/powervision/gcs/model/ship/ShipInterestModel;
.super Ljava/lang/Object;
.source "ShipInterestModel.java"


# instance fields
.field private imgFile:Ljava/lang/String;

.field private interestAddress:Ljava/lang/String;

.field private interestDesc:Ljava/lang/String;

.field private interestLatlng:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgFile()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->imgFile:Ljava/lang/String;

    return-object v0
.end method

.method public getInterestAddress()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->interestAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterestDesc()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->interestDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getInterestLatlng()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->interestLatlng:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->type:I

    return v0
.end method

.method public setImgFile(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->imgFile:Ljava/lang/String;

    return-void
.end method

.method public setInterestAddress(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->interestAddress:Ljava/lang/String;

    return-void
.end method

.method public setInterestDesc(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->interestDesc:Ljava/lang/String;

    return-void
.end method

.method public setInterestLatlng(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->interestLatlng:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipInterestModel;->type:I

    return-void
.end method
