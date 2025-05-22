.class public final Lcom/powervision/localhttp/CmdModel$Builder;
.super Ljava/lang/Object;
.source "CmdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/CmdModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field CMD_ID:I

.field RETRY_TIMES:I

.field URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 31
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->RETRY_TIMES:I

    return-void
.end method

.method public static get()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    .line 40
    new-instance v0, Lcom/powervision/localhttp/CmdModel$Builder;

    invoke-direct {v0}, Lcom/powervision/localhttp/CmdModel$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/powervision/localhttp/CmdModel;
    .locals 2

    .line 1163
    new-instance v0, Lcom/powervision/localhttp/CmdModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/localhttp/CmdModel;-><init>(Lcom/powervision/localhttp/CmdModel$Builder;Lcom/powervision/localhttp/CmdModel$1;)V

    return-object v0
.end method

.method public cancelCollectData(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/16 v0, 0x10

    .line 1132
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1133
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pv-ap03/cancelCollectedAssets?assetIds=%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public collectData(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/16 v0, 0xf

    .line 1120
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1121
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pv-ap03/collectAssets?assetIds=%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public defaultRetryTimes()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/4 v0, 0x4

    .line 55
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->RETRY_TIMES:I

    return-object p0
.end method

.method public deleteAllFile()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x9

    .line 186
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/deleteallfiles.cgi?"

    .line 187
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public deleteBurstData(Ljava/lang/String;Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/16 v0, 0x12

    .line 1157
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1158
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "pv-ap03/deleteBurstAssets?burstId=%1$s&assetIds=%2$s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public deleteData(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/16 v0, 0x11

    .line 1144
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1145
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pv-ap03/deleteAssets?assetIds=%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public deleteMultiFile(Ljava/util/List;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/powervision/localhttp/CmdModel$Builder;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 173
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, ","

    .line 174
    invoke-static {v0, p1}, Lcom/powervision/localhttp/utils/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cgi-bin/hi3559/batchdeletefile.cgi?batchdeletefile&-list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteMultiFile: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmdModel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public deletePhotoMedia(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/4 v0, 0x5

    .line 1009
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1010
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pv-ap03/del=point_photo_file?&-name=%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public deleteSingleFile(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    .line 161
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cgi-bin/hi3559/deletefile.cgi?deletefile&-name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public deleteVideoMedia(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/4 v0, 0x6

    .line 1021
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1022
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pv-ap03/del=point_record_file?&-name=%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public formatSdCard()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x14

    .line 255
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/sdcommand.cgi?&-format"

    .line 256
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getAllCollections(I)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/16 v0, 0xe

    .line 1108
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1109
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pv-ap03/getAllCollectedAssets?location=%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getAllMedia(I)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/16 v0, 0xb

    .line 1072
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1073
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pv-ap03/getAllAssets?location=%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getAllParameter()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x89

    .line 949
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getallset.cgi?&-act=get"

    .line 950
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getAllPhoto(I)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/16 v0, 0xd

    .line 1096
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1097
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pv-ap03/getAllImages?location=%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getAllVideo(I)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/16 v0, 0xc

    .line 1084
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 1085
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pv-ap03/getAllVideos?location=%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getBodyVersion()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x17

    .line 1060
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getdeviceattr.cgi?&-act=get"

    .line 1061
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraInfo()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x17

    .line 282
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getdeviceattr.cgi?&-act=get"

    .line 283
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getCommonRecordRatio()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x1e

    .line 341
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=20&-type=0"

    .line 342
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x9

    .line 1032
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "pv-ap03/get=current_storage_dev"

    .line 1033
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getDISState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x7b

    .line 883
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getdis.cgi?"

    .line 884
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getEVValue()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x3a

    .line 603
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=00&-type=3"

    .line 604
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getFileCount()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/4 v0, 0x5

    .line 110
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getfilecount.cgi"

    .line 111
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getFileInfo()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/4 v0, 0x7

    .line 145
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, ""

    .line 147
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getFileList(II)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/4 v0, 0x6

    .line 121
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 122
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "cgi-bin/hi3559/getfilelist.cgi?getfilelist&-start=%1$d&-end=%2$d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getFileList(Ljava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/4 v0, 0x6

    .line 133
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 135
    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getFlipState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x77

    .line 817
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getflip.cgi?"

    .line 818
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getISOValue()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x2f

    .line 473
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=00&-type=6"

    .line 474
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getLDCState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x79

    .line 850
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getldc.cgi?"

    .line 851
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getMultiPhotoRatio()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x6c

    .line 750
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=10&-type=0"

    .line 751
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getMultiPhotoSpeed()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x75

    .line 783
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=10&-type=1"

    .line 784
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getPhotoMedia(II)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/4 v0, 0x0

    .line 984
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 985
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "pv-ap03/getimagelist?&-start=%1$d&-end=%2$d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getSdState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0xb

    .line 197
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getsdstate.cgi?"

    .line 198
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getSinglePictureRatio()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x21

    .line 374
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=00&-type=0"

    .line 375
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getSlowRecordRatio()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x85

    .line 938
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=24&-type=0"

    .line 939
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getTTLState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x4c

    .line 717
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=00&-type=4"

    .line 718
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoMedia(II)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 3

    const/4 v0, 0x0

    .line 997
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 998
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "pv-ap03/getvideolist?&-start=%1$d&-end=%2$d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getWBValue()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x49

    .line 681
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=00&-type=5"

    .line 682
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public getWorkMode()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 88
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getworkmode.cgi?&-act=get"

    .line 89
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public resetCamera()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x13

    .line 243
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/reset.cgi?"

    .line 244
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public retryRequest(ILjava/lang/String;)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 45
    iput-object p2, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public retryTimes(I)Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 0

    .line 50
    iput p1, p0, Lcom/powervision/localhttp/CmdModel$Builder;->RETRY_TIMES:I

    return-object p0
.end method

.method public setCameraTime()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 4

    const/16 v0, 0x16

    .line 267
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    .line 270
    new-instance v0, Lcom/powervision/localhttp/utils/TimeUtil;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/localhttp/utils/TimeUtil;-><init>(Landroid/content/Context;)V

    const-string v1, "YMD_HMSS_CAMERA"

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/utils/TimeUtil;->formatCurrentDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "cgi-bin/hi3559/setsystime.cgi?setsystime&-act=set&-time=%1$s&-timeformat=0&-timezone=64"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setCommonRecordRatio1080P60()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x1a

    .line 317
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=20&-type=0&-value=2"

    .line 318
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setCommonRecordRatio720P120()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x18

    .line 293
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=20&-type=0&-value=0"

    .line 294
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setCommonRecordRatio720P240()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x19

    .line 305
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=20&-type=0&-value=1"

    .line 306
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setCommonRecordRatio720P4K30()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x1d

    .line 329
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=20&-type=0&-value=15"

    .line 330
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setDISDisableState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x7a

    .line 861
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setdis.cgi?dis&-act=set&-enable=0"

    .line 862
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setDISEnableState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x7a

    .line 872
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setdis.cgi?dis&-act=set&-enable=1"

    .line 873
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEVAuto()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x30

    .line 487
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/getparameter.cgi?&-act=get&-workmode=00&-type=6"

    .line 488
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEV_0()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x35

    .line 544
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=3&-value=5"

    .line 545
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEV_0_5()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x36

    .line 556
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=3&-value=6"

    .line 557
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEV_1_0()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x37

    .line 568
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=3&-value=7"

    .line 569
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEV_1_5()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x38

    .line 580
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=3&-value=8"

    .line 581
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEV_2_0()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x39

    .line 592
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=3&-value=9"

    .line 593
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEV__0_5()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x34

    .line 532
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=3&-value=4"

    .line 533
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEV__1_0()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x33

    .line 520
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=3&-value=3"

    .line 521
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEV__1_5()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x32

    .line 509
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=3&-value=2"

    .line 510
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setEV__2()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x31

    .line 498
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=3&-value=1"

    .line 499
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setFlipDisableState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x76

    .line 794
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setflip.cgi?flip&-act=set&-enable=0"

    .line 795
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setFlipEnableState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x76

    .line 805
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setflip.cgi?flip&-act=set&-enable=1"

    .line 806
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setISO100()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x28

    .line 396
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=6&-value=100"

    .line 397
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setISO1600()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x2c

    .line 440
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=6&-value=1600"

    .line 441
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setISO200()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x29

    .line 407
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=6&-value=200"

    .line 408
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setISO3200()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x2d

    .line 451
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=6&-value=3200"

    .line 452
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setISO400()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x2a

    .line 418
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=6&-value=400"

    .line 419
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setISO6400()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x2e

    .line 462
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=6&-value=6400"

    .line 463
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setISO800()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x2b

    .line 429
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=6&-value=800"

    .line 430
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setISOAuto()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x27

    .line 385
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=6&-value=0"

    .line 386
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setLDCDisableState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x78

    .line 828
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setldc.cgi?ldc&-act=set&-enable=0"

    .line 829
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setLDCEnableState()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x78

    .line 839
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setldc.cgi?ldc&-act=set&-enable=1"

    .line 840
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setMultiPhotoRation12M()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x6b

    .line 739
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&act=set&-workmode=10&-type=0&-value=13"

    .line 740
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setMultiPhotoRation8M()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x6a

    .line 728
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&act=set&-workmode=10&-type=0&-value=12"

    .line 729
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setMultiPhotoSpeed3P1()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x6d

    .line 761
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&act=set&-workmode=10&-type=1&-value=0"

    .line 762
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setMultiPhotoSpeed5P1()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x6e

    .line 772
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&act=set&-workmode=10&-type=1&-value=1"

    .line 773
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setSeekerUSBIp()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x8d

    .line 971
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setwifi.cgi?wifiattr&-act=set&-linkstatus=1"

    .line 972
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setSeekerWifiIp()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x8d

    .line 960
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setwifi.cgi?wifiattr&-act=set&-linkstatus=0"

    .line 961
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setSinglePictureRation12M()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x20

    .line 363
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&act=set&-workmode=00&-type=0&-value=10"

    .line 364
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setSinglePictureRation8M()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x1f

    .line 352
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&act=set&-workmode=00&-type=0&-value=9"

    .line 353
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setSlowRecordRatio1080P60()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x83

    .line 927
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=24&-type=0&-value=2"

    .line 928
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setSlowRecordRatio720P120()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x81

    .line 905
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=24&-type=0&-value=0"

    .line 906
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setSlowRecordRatio720P240()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x82

    .line 916
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=24&-type=0&-value=1"

    .line 917
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setTTLAverage()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x4a

    .line 693
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=4&-value=0"

    .line 694
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setTTLCenter()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x4b

    .line 705
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=4&-value=1"

    .line 706
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWB2800K()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x44

    .line 626
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=5&-value=1"

    .line 627
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWB4000K()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x45

    .line 637
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=5&-value=2"

    .line 638
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWB5000K()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x46

    .line 648
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=5&-value=3"

    .line 649
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWB6500K()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x47

    .line 659
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=5&-value=4"

    .line 660
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWB7500K()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x48

    .line 670
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=5&-value=5"

    .line 671
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWBAuto()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x43

    .line 615
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setparameter.cgi?&-act=set&-workmode=00&-type=5&-value=0"

    .line 616
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWorkModeCommonRecord()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0xc

    .line 208
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "ccgi-bin/hi3559/setworkmode.cgi?&-act=set&-workmode=20"

    .line 209
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWorkModeMultiPicture()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x11

    .line 232
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setworkmode.cgi?&-act=set&-workmode=10"

    .line 233
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWorkModeSinglePicture()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0xd

    .line 220
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setworkmode.cgi?&-act=set&-workmode=00"

    .line 221
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public setWorkModeSlowRecord()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x8a

    .line 894
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/setworkmode.cgi?&-act=set&-workmode=24"

    .line 895
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public startRecord()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 2

    const-string v0, "CmdModel"

    const-string v1, "startRecord: "

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/record.cgi?record&-cmd=start"

    .line 67
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public stopRecord()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/record.cgi?record&-cmd=stop"

    .line 78
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public switchToRAM()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/16 v0, 0x8

    .line 1054
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "pv-ap03/switch=emmc_storage_dev"

    .line 1055
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public switchToSD()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/4 v0, 0x7

    .line 1043
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "pv-ap03/switch=sd_storage_dev"

    .line 1044
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method

.method public takePicture()Lcom/powervision/localhttp/CmdModel$Builder;
    .locals 1

    const/4 v0, 0x3

    .line 99
    iput v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    const-string v0, "cgi-bin/hi3559/photo.cgi?&-type=common&-cmd=start"

    .line 100
    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    return-object p0
.end method
