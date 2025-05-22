.class public Lcom/powervision/gcs/utils/appupgrade/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/gcs/utils/appupgrade/Version;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appName:Ljava/lang/String;

.field public app_description:Ljava/lang/String;

.field public app_down_addr:Ljava/lang/String;

.field public app_latest_version_code:I

.field public app_version_name:Ljava/lang/String;

.field private info_entry_time:Ljava/lang/String;

.field private is_mandatory_upgrade:Z

.field public mApkSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/powervision/gcs/utils/appupgrade/Version$1;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/appupgrade/Version$1;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/appupgrade/Version;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->appName:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_description:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_down_addr:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->mApkSize:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_latest_version_code:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->is_mandatory_upgrade:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->info_entry_time:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_version_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_description()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_description:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_down_addr()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_down_addr:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_latest_version_code()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_latest_version_code:I

    return v0
.end method

.method public getApp_version_name()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_version_name:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo_entry_time()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->info_entry_time:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_mandatory_upgrade()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->is_mandatory_upgrade:Z

    return v0
.end method

.method public getmApkSize()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->mApkSize:I

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->appName:Ljava/lang/String;

    return-void
.end method

.method public setApp_description(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_description:Ljava/lang/String;

    return-void
.end method

.method public setApp_down_addr(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_down_addr:Ljava/lang/String;

    return-void
.end method

.method public setApp_latest_version_code(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_latest_version_code:I

    return-void
.end method

.method public setApp_version_name(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_version_name:Ljava/lang/String;

    return-void
.end method

.method public setInfo_entry_time(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->info_entry_time:Ljava/lang/String;

    return-void
.end method

.method public setIs_mandatory_upgrade(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->is_mandatory_upgrade:Z

    return-void
.end method

.method public setmApkSize(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->mApkSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version{appName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", app_description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", app_down_addr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_down_addr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mApkSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->mApkSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", app_latest_version_code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_latest_version_code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is_mandatory_upgrade=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->is_mandatory_upgrade:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", info_entry_time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->info_entry_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", app_version_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_version_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 136
    iget-object p2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_down_addr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget p2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->mApkSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget p2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_latest_version_code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean p2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->is_mandatory_upgrade:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    iget-object p2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->info_entry_time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/powervision/gcs/utils/appupgrade/Version;->app_version_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
