.class public Lcom/powervision/base/model/MedioModel;
.super Ljava/lang/Object;
.source "MedioModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "gcs_medio"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/base/model/MedioModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cretaTime:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "cretaTime"
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "fileName"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "imagePath"
    .end annotation
.end field

.field private isCheck:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isCheck"
    .end annotation
.end field

.field private isChecked:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isChecked"
    .end annotation
.end field

.field private modifyTime:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "modifyTime"
    .end annotation
.end field

.field private section:I

.field private tag:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "tag"
    .end annotation
.end field

.field private videoPath:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "videoPath"
    .end annotation
.end field

.field private videoThumbnail:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "videoThumbnail"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/powervision/base/model/MedioModel$1;

    invoke-direct {v0}, Lcom/powervision/base/model/MedioModel$1;-><init>()V

    sput-object v0, Lcom/powervision/base/model/MedioModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/model/MedioModel;->id:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MedioModel;->fileName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MedioModel;->imagePath:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MedioModel;->videoPath:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MedioModel;->videoThumbnail:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MedioModel;->cretaTime:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MedioModel;->modifyTime:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/base/model/MedioModel;->isCheck:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/model/MedioModel;->tag:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/powervision/base/model/MedioModel;->isChecked:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/model/MedioModel;->section:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCretaTime()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/powervision/base/model/MedioModel;->cretaTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/powervision/base/model/MedioModel;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/powervision/base/model/MedioModel;->id:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/powervision/base/model/MedioModel;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/powervision/base/model/MedioModel;->modifyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/powervision/base/model/MedioModel;->section:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/powervision/base/model/MedioModel;->tag:I

    return v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/powervision/base/model/MedioModel;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoThumbnail()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/powervision/base/model/MedioModel;->videoThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/powervision/base/model/MedioModel;->isCheck:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/powervision/base/model/MedioModel;->isChecked:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/powervision/base/model/MedioModel;->isCheck:Z

    return-void
.end method

.method public setCretaTime(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/powervision/base/model/MedioModel;->cretaTime:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/powervision/base/model/MedioModel;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/powervision/base/model/MedioModel;->id:I

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/base/model/MedioModel;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/powervision/base/model/MedioModel;->isChecked:Z

    return-void
.end method

.method public setModifyTime(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/powervision/base/model/MedioModel;->modifyTime:Ljava/lang/String;

    return-void
.end method

.method public setSection(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/powervision/base/model/MedioModel;->section:I

    return-void
.end method

.method public setTag(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/powervision/base/model/MedioModel;->tag:I

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/powervision/base/model/MedioModel;->videoPath:Ljava/lang/String;

    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/powervision/base/model/MedioModel;->videoThumbnail:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 162
    iget p2, p0, Lcom/powervision/base/model/MedioModel;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Lcom/powervision/base/model/MedioModel;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/powervision/base/model/MedioModel;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/powervision/base/model/MedioModel;->videoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/powervision/base/model/MedioModel;->videoThumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/powervision/base/model/MedioModel;->cretaTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/powervision/base/model/MedioModel;->modifyTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-boolean p2, p0, Lcom/powervision/base/model/MedioModel;->isCheck:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 170
    iget p2, p0, Lcom/powervision/base/model/MedioModel;->tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-boolean p2, p0, Lcom/powervision/base/model/MedioModel;->isChecked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget p2, p0, Lcom/powervision/base/model/MedioModel;->section:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
