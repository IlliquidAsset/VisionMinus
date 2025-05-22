.class public Lcom/powervision/base/nationmap/model/NationLatLng;
.super Ljava/lang/Object;
.source "NationLatLng.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/base/nationmap/model/NationLatLng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final latitude:D

.field public final longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/powervision/base/nationmap/model/NationLatLng$1;

    invoke-direct {v0}, Lcom/powervision/base/nationmap/model/NationLatLng$1;-><init>()V

    sput-object v0, Lcom/powervision/base/nationmap/model/NationLatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->latitude:D

    .line 17
    iput-wide p3, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->longitude:D

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->latitude:D

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->longitude:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->longitude:D

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 36
    iget-wide v0, p0, Lcom/powervision/base/nationmap/model/NationLatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
