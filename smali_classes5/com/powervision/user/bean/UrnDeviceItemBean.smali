.class public Lcom/powervision/user/bean/UrnDeviceItemBean;
.super Ljava/lang/Object;
.source "UrnDeviceItemBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/user/bean/UrnDeviceItemBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private status:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/powervision/user/bean/UrnDeviceItemBean$1;

    invoke-direct {v0}, Lcom/powervision/user/bean/UrnDeviceItemBean$1;-><init>()V

    sput-object v0, Lcom/powervision/user/bean/UrnDeviceItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->code:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->id:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->name:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->status:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->type:Ljava/lang/String;

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

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    check-cast p1, Lcom/powervision/user/bean/UrnDeviceItemBean;

    .line 105
    iget v2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->id:I

    iget p1, p1, Lcom/powervision/user/bean/UrnDeviceItemBean;->id:I

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

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->status:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 110
    iget v1, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->status:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserRnDeviceBean{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->type:Ljava/lang/String;

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

    .line 41
    iget-object p2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget p2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget p2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object p2, p0, Lcom/powervision/user/bean/UrnDeviceItemBean;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
