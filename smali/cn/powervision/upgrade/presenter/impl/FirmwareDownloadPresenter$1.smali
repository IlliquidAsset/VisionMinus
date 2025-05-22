.class Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;
.super Ljava/lang/Object;
.source "FirmwareDownloadPresenter.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->download(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

.field final synthetic val$allInfos:Ljava/util/List;

.field final synthetic val$downLoadZipFile:Ljava/io/File;

.field final synthetic val$firmwareInfo:Lcn/powervision/upgrade/model/entity/FirmwareInfo;

.field final synthetic val$totalsize:J


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;Ljava/util/List;Ljava/io/File;JLcn/powervision/upgrade/model/entity/FirmwareInfo;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iput-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    iput-object p3, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    iput-wide p4, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$totalsize:J

    iput-object p6, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$firmwareInfo:Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-wide/16 p1, 0x3e8

    .line 145
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string p1, "lzqDown"

    const-string p2, "onFailure"

    .line 149
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allInfos "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e0b\u8f7d\u5230\u4e86\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget p1, p1, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->TRYCOUNT:I

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget p2, p2, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->RETRYRANGE:I

    if-ge p1, p2, :cond_2

    .line 155
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$000(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$100(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/iviews/IFirmwareDownView;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget p2, p2, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->TRYCOUNT:I

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcn/powervision/upgrade/iviews/IFirmwareDownView;->retry(ILjava/lang/String;)V

    .line 158
    :cond_1
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    iget-wide v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$totalsize:J

    invoke-virtual {p1, p2, v0, v1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->download(Ljava/util/List;J)V

    goto :goto_2

    .line 161
    :cond_2
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$200(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 162
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$300(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/iviews/IFirmwareDownView;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcn/powervision/upgrade/iviews/IFirmwareDownView;->downFailed(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 13

    const-string p1, "\u4e0b\u8f7d\u5b8c\u603b\u5927\u5c0f:"

    const-wide/16 v0, 0x0

    const-string v2, "md5"

    const/4 v3, 0x0

    const-string v4, "lzqDown"

    if-eqz p2, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6587\u4ef6\u5927\u5c0f:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/powervision/upgrade/FileUtil;->createFile(Ljava/lang/String;)Ljava/io/File;

    :cond_1
    const/16 v5, 0x4000

    new-array v5, v5, [B

    .line 181
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    .line 182
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 186
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    const-string v9, "rwd"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    iget-object v8, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 190
    :cond_2
    :goto_0
    invoke-virtual {v6, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 191
    invoke-virtual {v7, v5, v3, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 193
    iget-object v8, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {v8}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$400(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 194
    iget-object v8, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-wide v8, v8, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->haveDownLoadFileSize:J

    iget-object v10, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    iget-wide v9, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$totalsize:J

    long-to-float v9, v9

    div-float/2addr v8, v9

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_3

    const-string v9, "lzqFirm"

    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " p = 0 mCurrentSize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-wide v11, v11, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->haveDownLoadFileSize:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_3
    iget-object v9, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {v9}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$500(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v9

    check-cast v9, Lcn/powervision/upgrade/iviews/IFirmwareDownView;

    invoke-interface {v9, v8}, Lcn/powervision/upgrade/iviews/IFirmwareDownView;->updateDownProgress(F)V

    goto :goto_0

    .line 209
    :cond_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 210
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\u5b8c\u5927\u5c0f:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_1

    :cond_5
    move-wide v5, v0

    :goto_1
    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$firmwareInfo:Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getRow_id()Ljava/lang/String;

    move-result-object p2

    .line 216
    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-static {v5}, Lcom/powervision/base/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "md5_ser:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "md5_local:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p2, "download md5 check success"

    .line 221
    invoke-static {v4, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v5, ".zip"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 230
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$600(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/iviews/IFirmwareDownView;

    invoke-interface {p1, v3}, Lcn/powervision/upgrade/iviews/IFirmwareDownView;->downFailed(I)V

    return-void

    .line 233
    :cond_6
    new-instance p2, Ljava/io/File;

    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u59cb\u89e3\u538bdownloadfile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/powervision/upgrade/utils/compress/CompressHelper;->extract(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e3\u538b\u6cbb\u4e4b\u540e aimFile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-wide v6, v5, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->haveDownLoadFileSize:J

    iget-object v8, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->haveDownLoadFileSize:J

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-wide v6, v6, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->haveDownLoadFileSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/powervision/upgrade/FileUtil;->deleteFile(Ljava/lang/String;)Z

    const-string v5, "\u5220\u9664 zip"

    .line 243
    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-wide v6, p1, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->haveDownLoadFileSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0b\u8f7d\u5b8c\u4e00\u4e2a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v5, Lcn/powervision/upgrade/model/entity/Firmware;

    invoke-direct {v5}, Lcn/powervision/upgrade/model/entity/Firmware;-><init>()V

    .line 257
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/powervision/upgrade/model/entity/Firmware;->fileName:Ljava/lang/String;

    .line 258
    iget-object v6, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$firmwareInfo:Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v6}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getFirmware_latest_version_code()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/powervision/upgrade/model/entity/Firmware;->version:Ljava/lang/String;

    .line 259
    iget-object v6, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$firmwareInfo:Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {v6}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_type()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    .line 262
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Lcn/powervision/upgrade/model/entity/Firmware;->dir_abs:Ljava/lang/String;

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "firmware.dir_abs:"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcn/powervision/upgrade/model/entity/Firmware;->dir_abs:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "MODEL"

    if-lez p2, :cond_a

    .line 266
    :try_start_1
    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    .line 267
    invoke-virtual {p1}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_model()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 268
    invoke-virtual {p1}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_model()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_model()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getEquipment_model()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getEquipment_model()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 270
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5c01\u88c5\u4e00\u4e2a\u6587\u4ef6:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->renameItemDir(Lcn/powervision/upgrade/model/entity/Firmware;)V

    .line 275
    :cond_8
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p2, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->baseTypePath:Ljava/lang/String;

    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$firmwareInfo:Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-static {p1, p2, v5}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$700(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V

    goto :goto_2

    .line 278
    :cond_9
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->renameItemDir(Lcn/powervision/upgrade/model/entity/Firmware;)V

    .line 280
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p2, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->baseTypePath:Ljava/lang/String;

    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$firmwareInfo:Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-static {p1, p2, v5}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$800(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V

    goto :goto_2

    .line 283
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5c01\u88c5 \u6700\u540e \u4e00\u4e2a\u6587\u4ef6:"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_model()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 286
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->renameItemDir(Lcn/powervision/upgrade/model/entity/Firmware;)V

    .line 287
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p2, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->baseTypePath:Ljava/lang/String;

    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$firmwareInfo:Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-static {p1, p2, v5}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$700(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V

    goto :goto_2

    .line 289
    :cond_b
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->renameItemDir(Lcn/powervision/upgrade/model/entity/Firmware;)V

    .line 290
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p2, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->baseTypePath:Ljava/lang/String;

    iget-object v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$firmwareInfo:Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-static {p1, p2, v5}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$800(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;Ljava/lang/String;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)V

    .line 297
    :goto_2
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    iget-wide v5, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$totalsize:J

    invoke-virtual {p1, p2, v5, v6}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->download(Ljava/util/List;J)V

    goto/16 :goto_4

    :cond_c
    const-string p1, "download md5 check failed ,\u629b\u51fa\u4e00\u4e2a\u5f02\u5e38"

    .line 223
    invoke-static {v4, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, " \u89e3\u538b\u5931\u8d25:"

    .line 341
    invoke-static {v4, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$1100(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 343
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$1200(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/iviews/IFirmwareDownView;

    invoke-interface {p1, v3}, Lcn/powervision/upgrade/iviews/IFirmwareDownView;->downFailed(I)V

    goto/16 :goto_4

    :catch_1
    move-exception p1

    const-wide/16 v5, 0x3e8

    .line 300
    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 302
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 304
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException e:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "IOException in md5 "

    .line 312
    invoke-static {v4, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget p1, p1, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->TRYCOUNT:I

    const/16 p2, 0xa

    if-ge p1, p2, :cond_d

    .line 316
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iput p2, p1, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->TRYCOUNT:I

    .line 319
    :cond_d
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/powervision/upgrade/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " \u5220\u6389MD5\u7684\u6587\u4ef6: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    iget-wide v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$totalsize:J

    invoke-virtual {p1, p2, v0, v1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->download(Ljava/util/List;J)V

    goto :goto_4

    .line 325
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IOException allInfos "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u4e0b\u8f7d\u5230\u4e86\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$downLoadZipFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_f
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget p1, p1, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->TRYCOUNT:I

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget p2, p2, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->RETRYRANGE:I

    if-ge p1, p2, :cond_10

    .line 330
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    iget-object p2, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$allInfos:Ljava/util/List;

    iget-wide v0, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->val$totalsize:J

    invoke-virtual {p1, p2, v0, v1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->download(Ljava/util/List;J)V

    goto :goto_4

    .line 333
    :cond_10
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$900(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 334
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;

    invoke-static {p1}, Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;->access$1000(Lcn/powervision/upgrade/presenter/impl/FirmwareDownloadPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/powervision/upgrade/iviews/IFirmwareDownView;

    invoke-interface {p1, v3}, Lcn/powervision/upgrade/iviews/IFirmwareDownView;->downFailed(I)V

    :cond_11
    :goto_4
    return-void
.end method
