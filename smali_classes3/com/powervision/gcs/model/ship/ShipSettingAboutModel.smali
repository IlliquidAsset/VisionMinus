.class public Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;
.super Ljava/lang/Object;
.source "ShipSettingAboutModel.java"


# instance fields
.field private firmwareFileUrl:Ljava/lang/String;

.field public isShow:Z

.field public name:Ljava/lang/String;

.field private updateRemindMessage:Ljava/lang/String;

.field private updatingTitle:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;->name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;->value:Ljava/lang/String;

    .line 32
    iput-boolean p3, p0, Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;->isShow:Z

    return-void
.end method


# virtual methods
.method public getFirmwareFileUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;->firmwareFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRemindMessage()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;->updateRemindMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatingTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;->updatingTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setFirmwareFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;->firmwareFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setUpdateRemindMessage(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;->updateRemindMessage:Ljava/lang/String;

    return-void
.end method

.method public setUpdatingTitle(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipSettingAboutModel;->updatingTitle:Ljava/lang/String;

    return-void
.end method
