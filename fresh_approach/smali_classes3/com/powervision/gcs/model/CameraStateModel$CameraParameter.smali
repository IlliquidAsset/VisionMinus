.class public Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;
.super Ljava/lang/Object;
.source "CameraStateModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/CameraStateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraParameter"
.end annotation


# instance fields
.field private SDOK:Ljava/lang/String;

.field private total:Ljava/lang/String;

.field private used:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSDOK()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;->SDOK:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;->used:Ljava/lang/String;

    return-object v0
.end method

.method public setSDOK(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;->SDOK:Ljava/lang/String;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;->total:Ljava/lang/String;

    return-void
.end method

.method public setUsed(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;->used:Ljava/lang/String;

    return-void
.end method
