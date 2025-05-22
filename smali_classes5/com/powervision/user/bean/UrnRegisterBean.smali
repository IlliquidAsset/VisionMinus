.class public Lcom/powervision/user/bean/UrnRegisterBean;
.super Lcom/powervision/user/bean/UrnBaseBean;
.source "UrnRegisterBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/user/bean/UrnRegisterBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private userDeviceList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userDeviceList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnRegisterItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/powervision/user/bean/UrnRegisterBean$1;

    invoke-direct {v0}, Lcom/powervision/user/bean/UrnRegisterBean$1;-><init>()V

    sput-object v0, Lcom/powervision/user/bean/UrnRegisterBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/user/bean/UrnBaseBean;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/powervision/user/bean/UrnBaseBean;-><init>(Landroid/os/Parcel;)V

    .line 21
    sget-object v0, Lcom/powervision/user/bean/UrnRegisterItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/bean/UrnRegisterBean;->userDeviceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnRegisterItemBean;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/powervision/user/bean/UrnRegisterBean;->userDeviceList:Ljava/util/List;

    return-object v0
.end method

.method public setUserDeviceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnRegisterItemBean;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/powervision/user/bean/UrnRegisterBean;->userDeviceList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UrnRegisterBean{userDeviceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/user/bean/UrnRegisterBean;->userDeviceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/powervision/user/bean/UrnBaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget-object p2, p0, Lcom/powervision/user/bean/UrnRegisterBean;->userDeviceList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
