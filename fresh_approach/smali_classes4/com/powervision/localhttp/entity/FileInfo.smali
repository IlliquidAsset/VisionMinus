.class public Lcom/powervision/localhttp/entity/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final MEDIA_PATH:Ljava/lang/String;

.field private create_time:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private isSelected:Z

.field private lrv_file_path:Ljava/lang/String;

.field private preview_file_path:Ljava/lang/String;

.field private record_path:Ljava/lang/String;

.field private size:J

.field private snap_path:Ljava/lang/String;

.field private thm_file_path:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/powervision/localhttp/entity/FileInfo$1;

    invoke-direct {v0}, Lcom/powervision/localhttp/entity/FileInfo$1;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/entity/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NewVisionPlus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->MEDIA_PATH:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NewVisionPlus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->MEDIA_PATH:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->type:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->create_time:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->snap_path:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->thm_file_path:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->record_path:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->lrv_file_path:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->duration:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->preview_file_path:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->isSelected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->type:Ljava/lang/String;

    const-string v1, "record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->record_path:Ljava/lang/String;

    return-object v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->snap_path:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->create_time:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->create_time:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 3

    .line 192
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->MEDIA_PATH:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getLocalFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->type:Ljava/lang/String;

    const-string v1, "record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->record_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->snap_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLocalFileName()Ljava/lang/String;
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->type:Ljava/lang/String;

    const-string v1, "record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->record_path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->record_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->snap_path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->snap_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 315
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLrvName()Ljava/lang/String;
    .locals 4

    .line 384
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->lrv_file_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLrvPath()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03LrvDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getLrvName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLrv_file_path()Ljava/lang/String;
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->MEDIA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getLocalFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->isLrvExist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getLrvPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->lrv_file_path:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getMediaDir()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->MEDIA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->MEDIA_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevName()Ljava/lang/String;
    .locals 4

    .line 365
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->preview_file_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrevPath()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03PrevDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getPrevName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreview_file_path()Ljava/lang/String;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->isPrevExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getPrevPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->preview_file_path:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getReadBytes()J
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRecord_path()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->record_path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    return-wide v0
.end method

.method public getSnap_path()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->snap_path:Ljava/lang/String;

    return-object v0
.end method

.method public getTempLocalFileName()Ljava/lang/String;
    .locals 3

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempLrvName()Ljava/lang/String;
    .locals 2

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getLrvName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempPrevName()Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getPrevName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempThmName()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getThmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThmName()Ljava/lang/String;
    .locals 4

    .line 346
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->thm_file_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThmPath()Ljava/lang/String;
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getThmName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03ThmDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getThmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThm_file_path()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->isThmExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getThmPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->thm_file_path:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isDone()Z
    .locals 5

    .line 228
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/localhttp/entity/FileInfo;->MEDIA_PATH:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getLocalFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLrvExist()Z
    .locals 2

    .line 236
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getLrvPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

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

    .line 269
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getPrevPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->isSelected:Z

    return v0
.end method

.method public isThmExist()Z
    .locals 2

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/powervision/localhttp/entity/FileInfo;->getThmPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->create_time:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->duration:Ljava/lang/String;

    return-void
.end method

.method public setLrv_file_path(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->lrv_file_path:Ljava/lang/String;

    return-void
.end method

.method public setPreview_file_path(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->preview_file_path:Ljava/lang/String;

    return-void
.end method

.method public setRecord_path(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->record_path:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->isSelected:Z

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    return-void
.end method

.method public setSnap_path(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->snap_path:Ljava/lang/String;

    return-void
.end method

.method public setThm_file_path(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->thm_file_path:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/powervision/localhttp/entity/FileInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 157
    iget-object p2, p0, Lcom/powervision/localhttp/entity/FileInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-wide v0, p0, Lcom/powervision/localhttp/entity/FileInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-object p2, p0, Lcom/powervision/localhttp/entity/FileInfo;->create_time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/powervision/localhttp/entity/FileInfo;->snap_path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/powervision/localhttp/entity/FileInfo;->thm_file_path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/powervision/localhttp/entity/FileInfo;->record_path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/powervision/localhttp/entity/FileInfo;->lrv_file_path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/powervision/localhttp/entity/FileInfo;->duration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/powervision/localhttp/entity/FileInfo;->preview_file_path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-boolean p2, p0, Lcom/powervision/localhttp/entity/FileInfo;->isSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
