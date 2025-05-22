.class public Lcom/powervision/user/bean/UrnRegisterItemBean;
.super Ljava/lang/Object;
.source "UrnRegisterItemBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/user/bean/UrnRegisterItemBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addTime:Ljava/lang/String;

.field private deviceId:I

.field private deviceName:Ljava/lang/String;

.field private devicePsn:Ljava/lang/String;

.field private id:I

.field private realRegisterNumber:Ljava/lang/String;

.field private status:I

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/powervision/user/bean/UrnRegisterItemBean$1;

    invoke-direct {v0}, Lcom/powervision/user/bean/UrnRegisterItemBean$1;-><init>()V

    sput-object v0, Lcom/powervision/user/bean/UrnRegisterItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->addTime:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceId:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->devicePsn:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->id:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->realRegisterNumber:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->status:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    check-cast p1, Lcom/powervision/user/bean/UrnRegisterItemBean;

    .line 141
    iget v2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->id:I

    iget p1, p1, Lcom/powervision/user/bean/UrnRegisterItemBean;->id:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceId:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePsn()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->devicePsn:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->id:I

    return v0
.end method

.method public getRealRegisterNumber()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->realRegisterNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->status:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 146
    iget v1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->addTime:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceId:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDevicePsn(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->devicePsn:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->id:I

    return-void
.end method

.method public setRealRegisterNumber(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->realRegisterNumber:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->status:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserRealNameBean{addTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->addTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", devicePsn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->devicePsn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", realRegisterNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->realRegisterNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->userId:Ljava/lang/String;

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

    .line 50
    iget-object p2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->addTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget p2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object p2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->devicePsn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget p2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object p2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->realRegisterNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget p2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/powervision/user/bean/UrnRegisterItemBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
