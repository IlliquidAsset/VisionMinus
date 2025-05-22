.class public Lcom/powervision/gcs/model/ActiviteModel;
.super Ljava/lang/Object;
.source "ActiviteModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "gcs_activite"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/gcs/model/ActiviteModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ActiviteCode:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "ActiviteCode"
    .end annotation
.end field

.field private activationTime:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "activationTime"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/powervision/gcs/model/ActiviteModel$1;

    invoke-direct {v0}, Lcom/powervision/gcs/model/ActiviteModel$1;-><init>()V

    sput-object v0, Lcom/powervision/gcs/model/ActiviteModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/powervision/gcs/model/ActiviteModel;->ActiviteCode:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/powervision/gcs/model/ActiviteModel;->activationTime:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/powervision/gcs/model/ActiviteModel;->ActiviteCode:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/powervision/gcs/model/ActiviteModel;->activationTime:J

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/model/ActiviteModel;->ActiviteCode:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/model/ActiviteModel;->activationTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivationTime()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/powervision/gcs/model/ActiviteModel;->activationTime:J

    return-wide v0
.end method

.method public getActiviteCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/powervision/gcs/model/ActiviteModel;->ActiviteCode:Ljava/lang/String;

    return-object v0
.end method

.method public setActivationTime(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/powervision/gcs/model/ActiviteModel;->activationTime:J

    return-void
.end method

.method public setActiviteCode(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/powervision/gcs/model/ActiviteModel;->ActiviteCode:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 65
    iget-object p2, p0, Lcom/powervision/gcs/model/ActiviteModel;->ActiviteCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-wide v0, p0, Lcom/powervision/gcs/model/ActiviteModel;->activationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
