.class final Lcom/powervision/base/model/MedioModel$1;
.super Ljava/lang/Object;
.source "MedioModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/model/MedioModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/powervision/base/model/MedioModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/powervision/base/model/MedioModel;
    .locals 1

    .line 58
    new-instance v0, Lcom/powervision/base/model/MedioModel;

    invoke-direct {v0, p1}, Lcom/powervision/base/model/MedioModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/powervision/base/model/MedioModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/powervision/base/model/MedioModel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/powervision/base/model/MedioModel;
    .locals 0

    .line 63
    new-array p1, p1, [Lcom/powervision/base/model/MedioModel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/powervision/base/model/MedioModel$1;->newArray(I)[Lcom/powervision/base/model/MedioModel;

    move-result-object p1

    return-object p1
.end method
