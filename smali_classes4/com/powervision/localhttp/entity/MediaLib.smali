.class public Lcom/powervision/localhttp/entity/MediaLib;
.super Ljava/lang/Object;
.source "MediaLib.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
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

.field private duration:J

.field protected fileName:Ljava/lang/String;

.field protected fileSize:J

.field private frameRate:I

.field private height:I

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected isSelected:Z

.field private originImagePath:Ljava/lang/String;

.field private preImagePath:Ljava/lang/String;

.field private prePos:Ljava/lang/String;

.field private preVideoPath:Ljava/lang/String;

.field private speedRate:F

.field private thmPos:Ljava/lang/String;

.field protected thumbPath:Ljava/lang/String;

.field private videoPath:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/powervision/localhttp/entity/MediaLib$1;

    invoke-direct {v0}, Lcom/powervision/localhttp/entity/MediaLib$1;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/entity/MediaLib;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0-0"

    .line 39
    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0-0"

    .line 39
    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetType:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->collected:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->fileName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->thumbPath:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->createDate:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->damaged:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->fileSize:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->width:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->height:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->frameRate:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->speedRate:F

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->videoPath:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->preVideoPath:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->duration:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->preImagePath:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->thmPos:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/powervision/localhttp/entity/BurstInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->images:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->isSelected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 473
    :cond_1
    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    .line 474
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 408
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetType:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->videoPath:Ljava/lang/String;

    return-object v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetType()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetType:I

    return v0
.end method

.method public getCollected()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->collected:I

    return v0
.end method

.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->createDate:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDamaged()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->damaged:I

    return v0
.end method

.method public getDngImagePath()Ljava/lang/String;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    const-string v1, "0-0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->preImagePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->duration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->fileSize:J

    return-wide v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->height:I

    return v0
.end method

.method public getImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->images:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocalFileName()Ljava/lang/String;
    .locals 2

    .line 386
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetType:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->videoPath:Ljava/lang/String;

    const-string v1, "MOV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".MOV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".MP4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 392
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLrvName()Ljava/lang/String;
    .locals 2

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".LRV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLrvPath()Ljava/lang/String;
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03LrvDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getLrvName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginImagePath()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreImagePath()Ljava/lang/String;
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->isPrevExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getPrevPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    const-string v1, "0-0"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->preImagePath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPrePos()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    return-object v0
.end method

.method public getPreVideoPath()Ljava/lang/String;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->isLrvExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getLrvPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03MediaDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getLocalFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->preVideoPath:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPrevName()Ljava/lang/String;
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrevPath()Ljava/lang/String;
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03PrevDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getPrevName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedRate()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->speedRate:F

    return v0
.end method

.method public getTempLocalFileName()Ljava/lang/String;
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getLocalFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempLrvName()Ljava/lang/String;
    .locals 2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getLrvName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempPrevName()Ljava/lang/String;
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getPrevName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempThmName()Ljava/lang/String;
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getThmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThmName()Ljava/lang/String;
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".THM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThmPath()Ljava/lang/String;
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03ThmDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getThmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThmPos()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->thmPos:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->isThmExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getThmPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetType:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    const-string v1, "0-0"

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->thumbPath:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 479
    iget-object v1, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 7

    .line 297
    iget v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03MediaDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getLocalFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    iget-object v4, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 310
    iget-object v4, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "raw"

    .line 312
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "dng"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcom/powervision/base/utils/ImageUtil;->isMediaImageExit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 316
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/powervision/localhttp/entity/MediaLib;->fileSize:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 298
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->images:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 299
    :goto_1
    iget-object v3, p0, Lcom/powervision/localhttp/entity/MediaLib;->images:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 300
    iget-object v3, p0, Lcom/powervision/localhttp/entity/MediaLib;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BurstInfo;

    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/BurstInfo;->isDone()Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return v2
.end method

.method public isLrvExist()Z
    .locals 6

    .line 323
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getLrvPath()Ljava/lang/String;

    move-result-object v0

    .line 324
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {v0}, Lcom/powervision/base/utils/ImageUtil;->isVideoCanUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrevExist()Z
    .locals 2

    .line 370
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getPrevPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcom/powervision/base/utils/ImageUtil;->isMediaImageExit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->isSelected:Z

    return v0
.end method

.method public isThmExist()Z
    .locals 8

    .line 339
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/MediaLib;->getThmPath()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    iget v2, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-lt v2, v5, :cond_3

    iget-object v2, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    const-string v5, "0-0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->thmPos:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->thmPos:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 350
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 351
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 355
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-int/2addr v0, v2

    int-to-long v0, v0

    cmp-long v2, v5, v0

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 344
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_4

    invoke-static {v0}, Lcom/powervision/base/utils/ImageUtil;->isImageExit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method public setAssetId(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    return-void
.end method

.method public setAssetType(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetType:I

    return-void
.end method

.method public setCollected(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->collected:I

    return-void
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->createDate:Ljava/lang/String;

    return-void
.end method

.method public setDamaged(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->damaged:I

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 137
    iput-wide p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->duration:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 231
    iput-wide p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->fileSize:J

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->frameRate:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->height:I

    return-void
.end method

.method public setImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;)V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->images:Ljava/util/ArrayList;

    return-void
.end method

.method public setOriginImagePath(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    return-void
.end method

.method public setPreImagePath(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->preImagePath:Ljava/lang/String;

    return-void
.end method

.method public setPrePos(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    return-void
.end method

.method public setPreVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->preVideoPath:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->isSelected:Z

    return-void
.end method

.method public setSpeedRate(F)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->speedRate:F

    return-void
.end method

.method public setThmPos(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->thmPos:Ljava/lang/String;

    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->thumbPath:Ljava/lang/String;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->videoPath:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/powervision/localhttp/entity/MediaLib;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 273
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->assetType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->collected:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->thumbPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->createDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->damaged:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-wide v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    iget p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->frameRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->speedRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 285
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->videoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->preVideoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-wide v0, p0, Lcom/powervision/localhttp/entity/MediaLib;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->originImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->preImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->thmPos:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->prePos:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->images:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 293
    iget-boolean p2, p0, Lcom/powervision/localhttp/entity/MediaLib;->isSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
