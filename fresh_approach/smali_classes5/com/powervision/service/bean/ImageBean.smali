.class public Lcom/powervision/service/bean/ImageBean;
.super Ljava/lang/Object;
.source "ImageBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/service/bean/ImageBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createDate:J

.field private height:I

.field private id:J

.field private latitude:D

.field private length:J

.field private longitude:D

.field private mimeType:Ljava/lang/String;

.field private modifiedDate:J

.field private originalPath:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/powervision/service/bean/ImageBean$1;

    invoke-direct {v0}, Lcom/powervision/service/bean/ImageBean$1;-><init>()V

    sput-object v0, Lcom/powervision/service/bean/ImageBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->id:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/service/bean/ImageBean;->title:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/service/bean/ImageBean;->originalPath:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->createDate:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->modifiedDate:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/service/bean/ImageBean;->mimeType:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/service/bean/ImageBean;->thumbnailPath:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/service/bean/ImageBean;->width:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/service/bean/ImageBean;->height:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->latitude:D

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->longitude:D

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->length:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    check-cast p1, Lcom/powervision/service/bean/ImageBean;

    .line 193
    iget-wide v2, p0, Lcom/powervision/service/bean/ImageBean;->id:J

    iget-wide v4, p1, Lcom/powervision/service/bean/ImageBean;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCreateDate()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->createDate:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/powervision/service/bean/ImageBean;->height:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->id:J

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->latitude:D

    return-wide v0
.end method

.method public getLength()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->length:J

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->longitude:D

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/powervision/service/bean/ImageBean;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDate()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->modifiedDate:J

    return-wide v0
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/powervision/service/bean/ImageBean;->originalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/service/bean/ImageBean;->thumbnailPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/powervision/service/bean/ImageBean;->thumbnailPath:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/powervision/service/bean/ImageBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/powervision/service/bean/ImageBean;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 198
    iget-wide v1, p0, Lcom/powervision/service/bean/ImageBean;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCreateDate(J)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/powervision/service/bean/ImageBean;->createDate:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/powervision/service/bean/ImageBean;->height:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/powervision/service/bean/ImageBean;->id:J

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 169
    iput-wide p1, p0, Lcom/powervision/service/bean/ImageBean;->latitude:D

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 185
    iput-wide p1, p0, Lcom/powervision/service/bean/ImageBean;->length:J

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 177
    iput-wide p1, p0, Lcom/powervision/service/bean/ImageBean;->longitude:D

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/powervision/service/bean/ImageBean;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setModifiedDate(J)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lcom/powervision/service/bean/ImageBean;->modifiedDate:J

    return-void
.end method

.method public setOriginalPath(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/powervision/service/bean/ImageBean;->originalPath:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/powervision/service/bean/ImageBean;->thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/powervision/service/bean/ImageBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/powervision/service/bean/ImageBean;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/service/bean/ImageBean;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/service/bean/ImageBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", originalPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/service/bean/ImageBean;->originalPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/service/bean/ImageBean;->createDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", modifiedDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/powervision/service/bean/ImageBean;->modifiedDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/service/bean/ImageBean;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnailPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/service/bean/ImageBean;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/service/bean/ImageBean;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/service/bean/ImageBean;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/service/bean/ImageBean;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/service/bean/ImageBean;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/service/bean/ImageBean;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-object p2, p0, Lcom/powervision/service/bean/ImageBean;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/powervision/service/bean/ImageBean;->originalPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->createDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->modifiedDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-object p2, p0, Lcom/powervision/service/bean/ImageBean;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/powervision/service/bean/ImageBean;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget p2, p0, Lcom/powervision/service/bean/ImageBean;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget p2, p0, Lcom/powervision/service/bean/ImageBean;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 85
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 86
    iget-wide v0, p0, Lcom/powervision/service/bean/ImageBean;->length:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
