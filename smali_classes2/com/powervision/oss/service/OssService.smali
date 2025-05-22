.class public Lcom/powervision/oss/service/OssService;
.super Ljava/lang/Object;
.source "OssService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;
    }
.end annotation


# static fields
.field private static mResumableObjectKey:Ljava/lang/String; = "resumableObject"


# instance fields
.field private final Tag:Ljava/lang/String;

.field private mBucket:Ljava/lang/String;

.field private mCallbackAddress:Ljava/lang/String;

.field mNewFileNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnUploadDownLoadListener:Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;

.field public mOss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/oss/OSS;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OssService"

    .line 38
    iput-object v0, p0, Lcom/powervision/oss/service/OssService;->Tag:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/oss/service/OssService;->mNewFileNameList:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/powervision/oss/service/OssService;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    .line 46
    iput-object p2, p0, Lcom/powervision/oss/service/OssService;->mBucket:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/oss/service/OssService;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/oss/service/OssService;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/oss/service/OssService;->saveDownLoadFile(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private saveDownLoadFile(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "    save file IOException  e="

    const/16 v1, 0x400

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [B

    .line 243
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 245
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 247
    :cond_0
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :goto_0
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p2, v1, v2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    if-eqz p1, :cond_3

    .line 260
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :catchall_0
    move-exception p3

    move-object v2, p2

    move-object p2, p3

    goto :goto_6

    :catch_1
    move-exception p3

    move-object v2, p2

    move-object p2, p3

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_2
    move-exception p2

    .line 252
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    save file error  Exception  e="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 257
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 260
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 263
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    :cond_3
    :goto_5
    return-void

    :goto_6
    if-eqz v2, :cond_4

    .line 257
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_8

    :cond_4
    :goto_7
    if-eqz p1, :cond_5

    .line 260
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 263
    :goto_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    .line 265
    :cond_5
    :goto_9
    throw p2
.end method


# virtual methods
.method public downLoadFile(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object v6, p1

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "downLoadFile start"

    .line 174
    invoke-direct {p0, v0}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ===================\u5168\u90e8  \u4e0b\u8f7d   \u5b8c\u6210============================mNewFileNameList.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/powervision/oss/service/OssService;->mNewFileNameList:Ljava/util/List;

    .line 178
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    .line 179
    iget-object v0, v9, Lcom/powervision/oss/service/OssService;->mOnUploadDownLoadListener:Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;

    if-eqz v0, :cond_0

    const-string v0, "downLoadFile over ...."

    .line 180
    invoke-direct {p0, v0}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    .line 181
    iget-object v0, v9, Lcom/powervision/oss/service/OssService;->mOnUploadDownLoadListener:Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;

    iget-object v1, v9, Lcom/powervision/oss/service/OssService;->mNewFileNameList:Ljava/util/List;

    move/from16 v7, p3

    invoke-interface {v0, v7, v1}, Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;->onDownloadComplete(ZLjava/util/List;)V

    :cond_0
    return-void

    :cond_1
    move/from16 v7, p3

    const/4 v0, 0x0

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;

    .line 186
    invoke-virtual {v1}, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->getFile_name()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "downLoadFile  .fileName\u3002\u3002\u3002\u3002is null"

    .line 188
    invoke-direct {p0, v1}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    .line 189
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 190
    invoke-virtual/range {p0 .. p4}, Lcom/powervision/oss/service/OssService;->downLoadFile(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 193
    :cond_2
    new-instance v10, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    iget-object v0, v9, Lcom/powervision/oss/service/OssService;->mBucket:Ljava/lang/String;

    invoke-direct {v10, v0, v3}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    invoke-virtual {v10, v0}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->setCRC64(Ljava/lang/Enum;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/powervision/oss/service/OssService$4;

    invoke-direct {v0, p0}, Lcom/powervision/oss/service/OssService$4;-><init>(Lcom/powervision/oss/service/OssService;)V

    invoke-virtual {v10, v0}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->setProgressListener(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    .line 205
    iget-object v11, v9, Lcom/powervision/oss/service/OssService;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    new-instance v12, Lcom/powervision/oss/service/OssService$5;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v6, p1

    move/from16 v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/powervision/oss/service/OssService$5;-><init>(Lcom/powervision/oss/service/OssService;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;ZLjava/lang/String;)V

    invoke-interface {v11, v10, v12}, Lcom/alibaba/sdk/android/oss/OSS;->asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method

.method public initOss(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/powervision/oss/service/OssService;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/powervision/oss/service/OssService;->mBucket:Ljava/lang/String;

    return-void
.end method

.method public setCallbackAddress(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/powervision/oss/service/OssService;->mCallbackAddress:Ljava/lang/String;

    return-void
.end method

.method public setOnUploadDownLoadListener(Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/powervision/oss/service/OssService;->mOnUploadDownLoadListener:Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;

    return-void
.end method

.method public uploadFile(Ljava/util/List;ZLjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/oss/bean/FlightLogUploadData;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "uploadFile ...... start"

    .line 74
    invoke-direct {p0, v0}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const-string p1, " ===================\u5168\u90e8\u4e0a\u4f20\u5b8c\u6210==============================================================="

    .line 77
    invoke-direct {p0, p1}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/powervision/oss/service/OssService;->mOnUploadDownLoadListener:Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1, p2}, Lcom/powervision/oss/service/OssService$OnUploadDownLoadListener;->onUploadComplete(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/oss/bean/FlightLogUploadData;

    .line 84
    invoke-virtual {v1}, Lcom/powervision/oss/bean/FlightLogUploadData;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "uploadFile   getFileName is null "

    .line 85
    invoke-direct {p0, v1}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/oss/service/OssService;->uploadFile(Ljava/util/List;ZLjava/lang/String;)V

    return-void

    .line 90
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/oss/bean/FlightLogUploadData;

    invoke-virtual {v2}, Lcom/powervision/oss/bean/FlightLogUploadData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "uploadFile    File Not Exist"

    .line 92
    invoke-direct {p0, v1}, Lcom/powervision/oss/service/OssService;->d(Ljava/lang/String;)V

    .line 93
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/oss/service/OssService;->uploadFile(Ljava/util/List;ZLjava/lang/String;)V

    return-void

    .line 98
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/oss/bean/FlightLogUploadData;

    invoke-virtual {v1}, Lcom/powervision/oss/bean/FlightLogUploadData;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/oss/bean/FlightLogUploadData;

    invoke-virtual {v2}, Lcom/powervision/oss/bean/FlightLogUploadData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/oss/bean/FlightLogUploadData;

    invoke-virtual {v0}, Lcom/powervision/oss/bean/FlightLogUploadData;->getPsnCode()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 104
    new-instance v10, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    iget-object v3, p0, Lcom/powervision/oss/service/OssService;->mBucket:Ljava/lang/String;

    invoke-direct {v10, v3, v1, v2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v2, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    invoke-virtual {v10, v2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setCRC64(Ljava/lang/Enum;)V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/powervision/oss/service/OssService;->mCallbackAddress:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 108
    new-instance v2, Lcom/powervision/oss/service/OssService$1;

    invoke-direct {v2, p0, v1, p3, v0}, Lcom/powervision/oss/service/OssService$1;-><init>(Lcom/powervision/oss/service/OssService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setCallbackParam(Ljava/util/Map;)V

    .line 125
    :cond_4
    new-instance v0, Lcom/powervision/oss/service/OssService$2;

    invoke-direct {v0, p0}, Lcom/powervision/oss/service/OssService$2;-><init>(Lcom/powervision/oss/service/OssService;)V

    invoke-virtual {v10, v0}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    .line 134
    iget-object v0, p0, Lcom/powervision/oss/service/OssService;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    new-instance v1, Lcom/powervision/oss/service/OssService$3;

    move-object v3, v1

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/powervision/oss/service/OssService$3;-><init>(Lcom/powervision/oss/service/OssService;JLjava/util/List;ZLjava/lang/String;)V

    invoke-interface {v0, v10, v1}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method
