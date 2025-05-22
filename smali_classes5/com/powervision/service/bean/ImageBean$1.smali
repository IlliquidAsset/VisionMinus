.class final Lcom/powervision/service/bean/ImageBean$1;
.super Ljava/lang/Object;
.source "ImageBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/service/bean/ImageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/powervision/service/bean/ImageBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/powervision/service/bean/ImageBean;
    .locals 1

    .line 59
    new-instance v0, Lcom/powervision/service/bean/ImageBean;

    invoke-direct {v0, p1}, Lcom/powervision/service/bean/ImageBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/powervision/service/bean/ImageBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/powervision/service/bean/ImageBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/powervision/service/bean/ImageBean;
    .locals 0

    .line 64
    new-array p1, p1, [Lcom/powervision/service/bean/ImageBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/powervision/service/bean/ImageBean$1;->newArray(I)[Lcom/powervision/service/bean/ImageBean;

    move-result-object p1

    return-object p1
.end method
