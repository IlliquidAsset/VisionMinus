.class public Lcn/powervision/upgrade/model/entity/FirmwareInfo;
.super Ljava/lang/Object;
.source "FirmwareInfo.java"


# instance fields
.field private add_time:Ljava/lang/String;

.field private add_user:Ljava/lang/String;

.field private equipment_model:Ljava/lang/String;

.field private firmware_description:Ljava/lang/String;

.field private firmware_download_addr:Ljava/lang/String;

.field private firmware_latest_version_code:Ljava/lang/String;

.field private firmware_size:Ljava/lang/String;

.field private hardware_model:Ljava/lang/String;

.field private hardware_type:Ljava/lang/String;

.field private id:I

.field private is_mandatory_upgrade:I

.field private merge_version:Ljava/lang/String;

.field private row_id:Ljava/lang/String;

.field private status:I

.field private update_method:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->update_method:I

    const-string v1, ""

    .line 63
    iput-object v1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_size:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_description:Ljava/lang/String;

    .line 65
    iput v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->is_mandatory_upgrade:I

    .line 66
    iput-object v1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->merge_version:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->row_id:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->hardware_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->add_time:Ljava/lang/String;

    return-object v0
.end method

.method public getAdd_user()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->add_user:Ljava/lang/String;

    return-object v0
.end method

.method public getEquipment_model()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->equipment_model:Ljava/lang/String;

    return-object v0
.end method

.method public getFile(ILjava/lang/String;)Ljava/io/File;
    .locals 4

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_mandatory_upgrade:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->is_mandatory_upgrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqDown"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "#"

    const/4 v1, 0x1

    const-string v2, "/"

    if-ne p1, v1, :cond_0

    .line 204
    iget-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->hardware_type:Ljava/lang/String;

    const-string v3, "DL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->is_mandatory_upgrade:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "DL01_C.zip"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_download_addr:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 209
    array-length v3, p1

    sub-int/2addr v3, v1

    aget-object p1, p1, v3

    .line 210
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->is_mandatory_upgrade:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public getFirmware_description()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_description:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_download_addr()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_download_addr:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_latest_version_code()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_latest_version_code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_latest_version_code:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getFirmware_size()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_size:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_model()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->hardware_model:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_type()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->hardware_type:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 188
    iget v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->id:I

    return v0
.end method

.method public getIs_mandatory_upgrade()I
    .locals 1

    .line 124
    iget v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->is_mandatory_upgrade:I

    return v0
.end method

.method public getMerge_version()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->merge_version:Ljava/lang/String;

    return-object v0
.end method

.method public getRow_id()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->row_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 180
    iget v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->status:I

    return v0
.end method

.method public getUpdate_method()I
    .locals 1

    .line 100
    iget v0, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->update_method:I

    return v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->add_time:Ljava/lang/String;

    return-void
.end method

.method public setAdd_user(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->add_user:Ljava/lang/String;

    return-void
.end method

.method public setEquipment_model(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->equipment_model:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_description(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_description:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_download_addr(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_download_addr:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_latest_version_code(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_latest_version_code:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_size(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_size:Ljava/lang/String;

    return-void
.end method

.method public setHardware_model(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->hardware_model:Ljava/lang/String;

    return-void
.end method

.method public setHardware_type(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->hardware_type:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->id:I

    return-void
.end method

.method public setIs_mandatory_upgrade(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->is_mandatory_upgrade:I

    return-void
.end method

.method public setMerge_version(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->merge_version:Ljava/lang/String;

    return-void
.end method

.method public setRow_id(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->row_id:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->status:I

    return-void
.end method

.method public setUpdate_method(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->update_method:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirmwareInfo{add_time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->add_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", add_user=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->add_user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", equipment_model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->equipment_model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", update_method="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->update_method:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", firmware_size=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmware_description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_mandatory_upgrade="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->is_mandatory_upgrade:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", merge_version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->merge_version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmware_download_addr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_download_addr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", row_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->row_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmware_latest_version_code=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->firmware_latest_version_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hardware_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->hardware_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hardware_model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->hardware_model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
