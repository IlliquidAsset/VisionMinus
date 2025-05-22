.class public Lcom/powervision/gcs/view/dialog/bean/AdInfo;
.super Ljava/lang/Object;
.source "AdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/gcs/view/dialog/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityImg:Ljava/lang/String;

.field private activityImgId:I

.field private adId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/powervision/gcs/view/dialog/bean/AdInfo$1;

    invoke-direct {v0}, Lcom/powervision/gcs/view/dialog/bean/AdInfo$1;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->adId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->title:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->url:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImg:Ljava/lang/String;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImgId:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->adId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->title:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->url:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImg:Ljava/lang/String;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImgId:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->adId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->title:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->url:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImg:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImgId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityImg()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImg:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityImgId()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImgId:I

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityImg(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImg:Ljava/lang/String;

    return-void
.end method

.method public setActivityImgId(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImgId:I

    return-void
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->adId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 65
    iget-object p2, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->adId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget p2, p0, Lcom/powervision/gcs/view/dialog/bean/AdInfo;->activityImgId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
