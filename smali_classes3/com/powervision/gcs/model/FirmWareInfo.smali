.class public Lcom/powervision/gcs/model/FirmWareInfo;
.super Ljava/lang/Object;
.source "FirmWareInfo.java"


# instance fields
.field private equipment_model:Ljava/lang/String;

.field private firmware_description:Ljava/lang/String;

.field private firmware_download_addr:Ljava/lang/String;

.field private firmware_latest_version_code:Ljava/lang/String;

.field private hardware_model:Ljava/lang/String;

.field private hardware_type:Ljava/lang/String;

.field private info_entry_time:Ljava/lang/String;

.field private is_mandatory_upgrade:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private ur_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEquipment_model()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->equipment_model:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_description()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->firmware_description:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_download_addr()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->firmware_download_addr:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_latest_version_code()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->firmware_latest_version_code:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_model()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->hardware_model:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_type()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->hardware_type:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo_entry_time()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->info_entry_time:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_mandatory_upgrade()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->is_mandatory_upgrade:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUr_id()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/powervision/gcs/model/FirmWareInfo;->ur_id:Ljava/lang/String;

    return-object v0
.end method

.method public setEquipment_model(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->equipment_model:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_description(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->firmware_description:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_download_addr(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->firmware_download_addr:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_latest_version_code(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->firmware_latest_version_code:Ljava/lang/String;

    return-void
.end method

.method public setHardware_model(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->hardware_model:Ljava/lang/String;

    return-void
.end method

.method public setHardware_type(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->hardware_type:Ljava/lang/String;

    return-void
.end method

.method public setInfo_entry_time(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->info_entry_time:Ljava/lang/String;

    return-void
.end method

.method public setIs_mandatory_upgrade(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->is_mandatory_upgrade:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public setUr_id(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->ur_id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirmWareInfo{equipment_model=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/model/FirmWareInfo;->equipment_model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmware_description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/FirmWareInfo;->firmware_description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmware_download_addr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/FirmWareInfo;->firmware_download_addr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmware_latest_version_code=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/FirmWareInfo;->firmware_latest_version_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hardware_model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/FirmWareInfo;->hardware_model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hardware_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/FirmWareInfo;->hardware_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", info_entry_time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/FirmWareInfo;->info_entry_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_mandatory_upgrade=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/FirmWareInfo;->is_mandatory_upgrade:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/FirmWareInfo;->status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ur_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/FirmWareInfo;->ur_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
