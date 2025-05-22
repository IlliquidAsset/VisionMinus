.class public Lcom/powervision/gcs/model/net/FirmwareQueryModel;
.super Ljava/lang/Object;
.source "FirmwareQueryModel.java"


# instance fields
.field public firmware_description:Ljava/lang/String;

.field public firmware_download_addr:Ljava/lang/String;

.field public firmware_latest_version_code:Ljava/lang/String;

.field public firmware_size:Ljava/lang/String;

.field public is_mandatory_upgrade:I

.field public merge_version:Ljava/lang/String;

.field public row_id:Ljava/lang/String;

.field public update_method:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/powervision/gcs/model/net/FirmwareQueryModel;->update_method:I

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lcom/powervision/gcs/model/net/FirmwareQueryModel;->firmware_size:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/powervision/gcs/model/net/FirmwareQueryModel;->firmware_description:Ljava/lang/String;

    .line 11
    iput v0, p0, Lcom/powervision/gcs/model/net/FirmwareQueryModel;->is_mandatory_upgrade:I

    .line 12
    iput-object v1, p0, Lcom/powervision/gcs/model/net/FirmwareQueryModel;->merge_version:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/powervision/gcs/model/net/FirmwareQueryModel;->firmware_download_addr:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/powervision/gcs/model/net/FirmwareQueryModel;->row_id:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/powervision/gcs/model/net/FirmwareQueryModel;->firmware_latest_version_code:Ljava/lang/String;

    return-void
.end method
