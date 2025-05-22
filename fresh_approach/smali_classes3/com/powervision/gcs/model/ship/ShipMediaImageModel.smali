.class public Lcom/powervision/gcs/model/ship/ShipMediaImageModel;
.super Ljava/lang/Object;
.source "ShipMediaImageModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CHECK:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = 0x4

.field public static final FINISH:I = 0x5

.field public static final INIT:I = -0x1

.field public static final LOADING:I = 0x2

.field public static final NONE:I = 0x0

.field public static final PAUSE:I = 0x3

.field public static final WAITING:I = 0x1


# instance fields
.field private creattime:Ljava/lang/String;

.field private downloadStatus:I

.field private filename:Ljava/lang/String;

.field private fraction:F

.field private isDownLoad:Z

.field private isSelect:Z

.field private path:Ljava/lang/String;

.field private progress:Lcom/lzy/okgo/model/Progress;

.field private section:I

.field private size:J

.field private thmfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel$1;

    invoke-direct {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel$1;-><init>()V

    sput-object v0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->downloadStatus:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->fraction:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->downloadStatus:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->fraction:F

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->filename:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->path:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->thmfile:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->size:J

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->creattime:Ljava/lang/String;

    .line 184
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
    iput-boolean v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->isDownLoad:Z

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->isSelect:Z

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->section:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->downloadStatus:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->fraction:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreattime()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->creattime:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->downloadStatus:I

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFraction()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->fraction:F

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Lcom/lzy/okgo/model/Progress;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->progress:Lcom/lzy/okgo/model/Progress;

    return-object v0
.end method

.method public getSection()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->section:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->size:J

    return-wide v0
.end method

.method public getThmfile()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->thmfile:Ljava/lang/String;

    return-object v0
.end method

.method public isImage()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isMp4()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->isSelect:Z

    return v0
.end method

.method public setCreattime(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->creattime:Ljava/lang/String;

    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->downloadStatus:I

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->filename:Ljava/lang/String;

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->fraction:F

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->path:Ljava/lang/String;

    return-void
.end method

.method public setProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->progress:Lcom/lzy/okgo/model/Progress;

    return-void
.end method

.method public setSection(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->section:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->isSelect:Z

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 117
    iput-wide p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->size:J

    return-void
.end method

.method public setThmfile(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->thmfile:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShipMediaImageModel{filename=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thmfile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->thmfile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creattime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->creattime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 163
    iget-object p2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->filename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->thmfile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-wide v0, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-object p2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->creattime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-boolean p2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->isDownLoad:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 169
    iget-boolean p2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->isSelect:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 170
    iget p2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->section:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget p2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->downloadStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p2, p0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->fraction:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
