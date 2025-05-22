.class public Lcom/powervision/gcs/model/CameraModel;
.super Ljava/lang/Object;
.source "CameraModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/CameraModel$CMD;
    }
.end annotation


# instance fields
.field private cmd:Lcom/powervision/gcs/model/CameraModel$CMD;

.field private isShowValues:Z

.field private name:Ljava/lang/String;

.field private orderValues:I

.field private values:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/powervision/gcs/model/CameraModel$CMD;Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraModel;->name:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/powervision/gcs/model/CameraModel;->orderValues:I

    .line 26
    iput-boolean p4, p0, Lcom/powervision/gcs/model/CameraModel;->isShowValues:Z

    .line 27
    iput-object p3, p0, Lcom/powervision/gcs/model/CameraModel;->cmd:Lcom/powervision/gcs/model/CameraModel$CMD;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/model/CameraModel$CMD;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraModel;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/powervision/gcs/model/CameraModel;->values:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/powervision/gcs/model/CameraModel;->cmd:Lcom/powervision/gcs/model/CameraModel$CMD;

    .line 20
    iput-boolean p4, p0, Lcom/powervision/gcs/model/CameraModel;->isShowValues:Z

    return-void
.end method


# virtual methods
.method public getCmd()Lcom/powervision/gcs/model/CameraModel$CMD;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraModel;->cmd:Lcom/powervision/gcs/model/CameraModel$CMD;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderValues()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/powervision/gcs/model/CameraModel;->orderValues:I

    return v0
.end method

.method public getValues()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraModel;->values:Ljava/lang/String;

    return-object v0
.end method

.method public isShowValues()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/powervision/gcs/model/CameraModel;->isShowValues:Z

    return v0
.end method

.method public setCmd(Lcom/powervision/gcs/model/CameraModel$CMD;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraModel;->cmd:Lcom/powervision/gcs/model/CameraModel$CMD;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrderValues(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/powervision/gcs/model/CameraModel;->orderValues:I

    return-void
.end method

.method public setShowValues(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/powervision/gcs/model/CameraModel;->isShowValues:Z

    return-void
.end method

.method public setValues(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraModel;->values:Ljava/lang/String;

    return-void
.end method
