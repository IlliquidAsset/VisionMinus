.class public Lcom/powervision/base/model/MediaModel;
.super Ljava/lang/Object;
.source "MediaModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "gcs_media"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createTime:Ljava/lang/Long;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "createTime"
    .end annotation
.end field

.field private duration:J

.field private editType:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "editType"
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

.field private isChecked:Z

.field private modifyTime:Ljava/lang/Long;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "modifyTime"
    .end annotation
.end field

.field private platform:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "platform"
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

    .line 60
    new-instance v0, Lcom/powervision/base/model/MediaModel$1;

    invoke-direct {v0}, Lcom/powervision/base/model/MediaModel$1;-><init>()V

    sput-object v0, Lcom/powervision/base/model/MediaModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->createTime:Ljava/lang/Long;

    .line 29
    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->modifyTime:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->createTime:Ljava/lang/Long;

    .line 29
    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->modifyTime:Ljava/lang/Long;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/model/MediaModel;->id:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->fileName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->imagePath:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->videoPath:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->videoThumbnail:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->createTime:Ljava/lang/Long;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/model/MediaModel;->modifyTime:Ljava/lang/Long;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/model/MediaModel;->tag:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/base/model/MediaModel;->isChecked:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/model/MediaModel;->section:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/base/model/MediaModel;->duration:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/model/MediaModel;->platform:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/model/MediaModel;->editType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()Ljava/lang/Long;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/powervision/base/model/MediaModel;->createTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/powervision/base/model/MediaModel;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getEditType()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/powervision/base/model/MediaModel;->editType:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/powervision/base/model/MediaModel;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/powervision/base/model/MediaModel;->id:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/powervision/base/model/MediaModel;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()Ljava/lang/Long;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/powervision/base/model/MediaModel;->modifyTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/powervision/base/model/MediaModel;->platform:I

    return v0
.end method

.method public getSection()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/powervision/base/model/MediaModel;->section:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/powervision/base/model/MediaModel;->tag:I

    return v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/powervision/base/model/MediaModel;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoThumbnail()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/powervision/base/model/MediaModel;->videoThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/powervision/base/model/MediaModel;->isChecked:Z

    return v0
.end method

.method public setCreateTime(Ljava/lang/Long;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/powervision/base/model/MediaModel;->createTime:Ljava/lang/Long;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 157
    iput-wide p1, p0, Lcom/powervision/base/model/MediaModel;->duration:J

    return-void
.end method

.method public setEditType(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/powervision/base/model/MediaModel;->editType:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/powervision/base/model/MediaModel;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/powervision/base/model/MediaModel;->id:I

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/powervision/base/model/MediaModel;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/powervision/base/model/MediaModel;->isChecked:Z

    return-void
.end method

.method public setModifyTime(Ljava/lang/Long;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/powervision/base/model/MediaModel;->modifyTime:Ljava/lang/Long;

    return-void
.end method

.method public setPlatform(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/powervision/base/model/MediaModel;->platform:I

    return-void
.end method

.method public setSection(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/powervision/base/model/MediaModel;->section:I

    return-void
.end method

.method public setTag(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/powervision/base/model/MediaModel;->tag:I

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/powervision/base/model/MediaModel;->videoPath:Ljava/lang/String;

    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/powervision/base/model/MediaModel;->videoThumbnail:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 183
    iget p2, p0, Lcom/powervision/base/model/MediaModel;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object p2, p0, Lcom/powervision/base/model/MediaModel;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/powervision/base/model/MediaModel;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/powervision/base/model/MediaModel;->videoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/powervision/base/model/MediaModel;->videoThumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/powervision/base/model/MediaModel;->createTime:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    iget-object p2, p0, Lcom/powervision/base/model/MediaModel;->modifyTime:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget p2, p0, Lcom/powervision/base/model/MediaModel;->tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-boolean p2, p0, Lcom/powervision/base/model/MediaModel;->isChecked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    iget p2, p0, Lcom/powervision/base/model/MediaModel;->section:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-wide v0, p0, Lcom/powervision/base/model/MediaModel;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    iget p2, p0, Lcom/powervision/base/model/MediaModel;->platform:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget p2, p0, Lcom/powervision/base/model/MediaModel;->editType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
