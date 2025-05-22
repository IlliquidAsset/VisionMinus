.class final Lcom/powervision/user/bean/UrnDeviceItemBean$1;
.super Ljava/lang/Object;
.source "UrnDeviceItemBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/user/bean/UrnDeviceItemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/powervision/user/bean/UrnDeviceItemBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/powervision/user/bean/UrnDeviceItemBean;
    .locals 1

    .line 51
    new-instance v0, Lcom/powervision/user/bean/UrnDeviceItemBean;

    invoke-direct {v0, p1}, Lcom/powervision/user/bean/UrnDeviceItemBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/powervision/user/bean/UrnDeviceItemBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/powervision/user/bean/UrnDeviceItemBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/powervision/user/bean/UrnDeviceItemBean;
    .locals 0

    .line 56
    new-array p1, p1, [Lcom/powervision/user/bean/UrnDeviceItemBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/powervision/user/bean/UrnDeviceItemBean$1;->newArray(I)[Lcom/powervision/user/bean/UrnDeviceItemBean;

    move-result-object p1

    return-object p1
.end method
