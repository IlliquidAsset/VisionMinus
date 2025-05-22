.class Lcom/powervision/home/view/DownloadDialog$3;
.super Ljava/lang/Object;
.source "DownloadDialog.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/view/DownloadDialog;->downLoad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/view/DownloadDialog;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/home/view/DownloadDialog;Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iput-object p2, p0, Lcom/powervision/home/view/DownloadDialog$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "lzqFirm"

    const-string p2, "1.2 \u4e0b\u8f7d\u5931\u8d25"

    .line 212
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object p2, p0, Lcom/powervision/home/view/DownloadDialog$3;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/powervision/home/view/DownloadDialog;->downLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v0, v0, Lcom/powervision/home/view/DownloadDialog;->downloadBasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v0, v0, Lcom/powervision/home/view/DownloadDialog;->before_APK_Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/powervision/upgrade/FileUtil;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 225
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 226
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    .line 227
    iget-object p2, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-wide v3, p2, Lcom/powervision/home/view/DownloadDialog;->totlal:J

    const-wide/16 v5, 0x0

    const-string p2, "lzqApp"

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 228
    iget-object v3, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iput-wide v1, v3, Lcom/powervision/home/view/DownloadDialog;->totlal:J

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse totlal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-wide v2, v2, Lcom/powervision/home/view/DownloadDialog;->totlal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 236
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    .line 237
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 238
    iget-object v3, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-wide v4, v3, Lcom/powervision/home/view/DownloadDialog;->c:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/powervision/home/view/DownloadDialog;->c:J

    .line 239
    iget-object v2, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-wide v2, v2, Lcom/powervision/home/view/DownloadDialog;->c:J

    long-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-wide v3, v3, Lcom/powervision/home/view/DownloadDialog;->totlal:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    const-string v3, "lzqAPP"

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-wide v5, v5, Lcom/powervision/home/view/DownloadDialog;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-wide v5, v5, Lcom/powervision/home/view/DownloadDialog;->totlal:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v3, v3, Lcom/powervision/home/view/DownloadDialog;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v4, v4, Lcom/powervision/home/view/DownloadDialog;->handler:Landroid/os/Handler;

    const/4 v5, 0x2

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v2, v2, v6

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 245
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 246
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 249
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v0, v0, Lcom/powervision/home/view/DownloadDialog;->downloadBasePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v0, v0, Lcom/powervision/home/view/DownloadDialog;->before_APK_Name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v1, v1, Lcom/powervision/home/view/DownloadDialog;->downloadBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object v1, v1, Lcom/powervision/home/view/DownloadDialog;->after_Apk_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 252
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object p1, p1, Lcom/powervision/home/view/DownloadDialog;->handler:Landroid/os/Handler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 256
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget p1, p1, Lcom/powervision/home/view/DownloadDialog;->COUNT:I

    iget-object p2, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget p2, p2, Lcom/powervision/home/view/DownloadDialog;->LIMATE:I

    if-lt p1, p2, :cond_3

    .line 258
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object p1, p1, Lcom/powervision/home/view/DownloadDialog;->handler:Landroid/os/Handler;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 262
    :cond_3
    iget-object p1, p0, Lcom/powervision/home/view/DownloadDialog$3;->this$0:Lcom/powervision/home/view/DownloadDialog;

    iget-object p2, p0, Lcom/powervision/home/view/DownloadDialog$3;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/powervision/home/view/DownloadDialog;->downLoad(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
