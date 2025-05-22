.class public Lcom/powervision/gcs/manager/BodyFirmWareModel;
.super Ljava/lang/Object;
.source "BodyFirmWareModel.java"


# instance fields
.field public firmware_description:Ljava/lang/String;

.field public firmware_download_addr:Ljava/lang/String;

.field public firmware_latest_version_code:Ljava/lang/String;

.field public firmware_size:Ljava/lang/String;

.field public hardware_type:Ljava/lang/String;

.field public is_mandatory_upgrade:I

.field public merge_version:Ljava/lang/String;

.field public row_id:Ljava/lang/String;

.field public update_method:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->update_method:I

    const-string v1, ""

    .line 81
    iput-object v1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_size:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_description:Ljava/lang/String;

    .line 83
    iput v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->is_mandatory_upgrade:I

    .line 84
    iput-object v1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->merge_version:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_download_addr:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->row_id:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_latest_version_code:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->hardware_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFirmware_description()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_description:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_download_addr()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_download_addr:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_latest_version_code()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_latest_version_code:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_size()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_size:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_type()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->hardware_type:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_mandatory_upgrade()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->is_mandatory_upgrade:I

    return v0
.end method

.method public getMerge_version()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->merge_version:Ljava/lang/String;

    return-object v0
.end method

.method public getRow_id()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->row_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_method()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->update_method:I

    return v0
.end method

.method public setFirmware_description(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_description:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_download_addr(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_download_addr:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_latest_version_code(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_latest_version_code:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_size(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->firmware_size:Ljava/lang/String;

    return-void
.end method

.method public setHardware_type(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->hardware_type:Ljava/lang/String;

    return-void
.end method

.method public setIs_mandatory_upgrade(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->is_mandatory_upgrade:I

    return-void
.end method

.method public setMerge_version(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->merge_version:Ljava/lang/String;

    return-void
.end method

.method public setRow_id(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->row_id:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_method(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/powervision/gcs/manager/BodyFirmWareModel;->update_method:I

    return-void
.end method
