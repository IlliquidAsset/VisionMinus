.class public Lcom/powervision/localhttp/entity/BurstInfo;
.super Ljava/lang/Object;
.source "BurstInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected assetId:Ljava/lang/String;

.field protected assetType:I

.field protected collected:I

.field protected createDate:Ljava/lang/String;

.field protected damaged:I

.field protected fileName:Ljava/lang/String;

.field protected fileSize:J

.field private height:I

.field protected isSelected:Z

.field private originImagePath:Ljava/lang/String;

.field private preImagePath:Ljava/lang/String;

.field private prePos:Ljava/lang/String;

.field private thmPos:Ljava/lang/String;

.field protected thumbPath:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/powervision/localhttp/entity/BurstInfo$1;

    invoke-direct {v0}, Lcom/powervision/localhttp/entity/BurstInfo$1;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/entity/BurstInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0-0"

    .line 33
    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0-0"

    .line 33
    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetId:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetType:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->collected:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->thumbPath:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->createDate:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->damaged:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileSize:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->width:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->height:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->originImagePath:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->preImagePath:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->thmPos:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->isSelected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->originImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetType()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetType:I

    return v0
.end method

.method public getCollected()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->collected:I

    return v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->createDate:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDamaged()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->damaged:I

    return v0
.end method

.method public getDngImagePath()Ljava/lang/String;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    const-string v1, "0-0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->preImagePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->originImagePath:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->height:I

    return v0
.end method

.method public getLocalFileName()Ljava/lang/String;
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginImagePath()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->originImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreImagePath()Ljava/lang/String;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/BurstInfo;->isPrevExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrevPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    const-string v1, "0-0"

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->preImagePath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->originImagePath:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPrePos()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevName()Ljava/lang/String;
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrevPath()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03PrevDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrevName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempLocalFileName()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/BurstInfo;->getLocalFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempPrevName()Ljava/lang/String;
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrevName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThmPos()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->thmPos:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->thumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->width:I

    return v0
.end method

.method public isDone()Z
    .locals 7

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03MediaDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/BurstInfo;->getLocalFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->originImagePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->originImagePath:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "raw"

    .line 232
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "dng"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcom/powervision/base/utils/ImageUtil;->isMediaImageExit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 236
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media---burst---file.exists= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " length= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " size= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileSize:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    .line 236
    invoke-static {v0, v4}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileSize:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public isPrevExist()Z
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/BurstInfo;->getPrevPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcom/powervision/base/utils/ImageUtil;->isMediaImageExit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->isSelected:Z

    return v0
.end method

.method public setAssetId(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetId:Ljava/lang/String;

    return-void
.end method

.method public setAssetType(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetType:I

    return-void
.end method

.method public setCollected(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->collected:I

    return-void
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->createDate:Ljava/lang/String;

    return-void
.end method

.method public setDamaged(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->damaged:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 175
    iput-wide p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileSize:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->height:I

    return-void
.end method

.method public setOriginImagePath(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->originImagePath:Ljava/lang/String;

    return-void
.end method

.method public setPreImagePath(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->preImagePath:Ljava/lang/String;

    return-void
.end method

.method public setPrePos(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->isSelected:Z

    return-void
.end method

.method public setThmPos(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->thmPos:Ljava/lang/String;

    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->thumbPath:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/powervision/localhttp/entity/BurstInfo;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 209
    iget-object p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->assetType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->collected:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->thumbPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->createDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->damaged:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-wide v0, p0, Lcom/powervision/localhttp/entity/BurstInfo;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    iget p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->originImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->preImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->thmPos:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->prePos:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-boolean p2, p0, Lcom/powervision/localhttp/entity/BurstInfo;->isSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
