.class final Lcom/powervision/base/nationmap/model/NationLatLng$1;
.super Ljava/lang/Object;
.source "NationLatLng.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/nationmap/model/NationLatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/powervision/base/nationmap/model/NationLatLng;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 1

    .line 47
    new-instance v0, Lcom/powervision/base/nationmap/model/NationLatLng;

    invoke-direct {v0, p1}, Lcom/powervision/base/nationmap/model/NationLatLng;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/powervision/base/nationmap/model/NationLatLng$1;->createFromParcel(Landroid/os/Parcel;)Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/powervision/base/nationmap/model/NationLatLng;
    .locals 0

    .line 52
    new-array p1, p1, [Lcom/powervision/base/nationmap/model/NationLatLng;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/powervision/base/nationmap/model/NationLatLng$1;->newArray(I)[Lcom/powervision/base/nationmap/model/NationLatLng;

    move-result-object p1

    return-object p1
.end method
