.class Lcom/powervision/newvisionplus/WelcomeActivity$4;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/newvisionplus/WelcomeActivity;->downVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/newvisionplus/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/newvisionplus/WelcomeActivity;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$4;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "welcomeTest"

    const-string p2, "==\u4e0b\u8f7d\u5931\u8d25=="

    .line 410
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/SPHelperUtils;->saveScreenAdvImgUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "welcomeTest"

    const-string v0, "==iiiiiiiiiiiiiiii=="

    .line 416
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$4;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$200(Lcom/powervision/newvisionplus/WelcomeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/gcs/utils/FileUtil;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 421
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 422
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 423
    iget-object p2, p0, Lcom/powervision/newvisionplus/WelcomeActivity$4;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    iget-wide v4, p2, Lcom/powervision/newvisionplus/WelcomeActivity;->totlal:J

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_1

    .line 424
    iget-object p2, p0, Lcom/powervision/newvisionplus/WelcomeActivity$4;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    iput-wide v2, p2, Lcom/powervision/newvisionplus/WelcomeActivity;->totlal:J

    .line 428
    :cond_1
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 431
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    .line 432
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 433
    iget-object v3, p0, Lcom/powervision/newvisionplus/WelcomeActivity$4;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    iget-wide v4, v3, Lcom/powervision/newvisionplus/WelcomeActivity;->c:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/powervision/newvisionplus/WelcomeActivity;->c:J

    .line 434
    iget-object v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity$4;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    iget-wide v2, v2, Lcom/powervision/newvisionplus/WelcomeActivity;->c:J

    long-to-float v2, v2

    iget-object v3, p0, Lcom/powervision/newvisionplus/WelcomeActivity$4;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    iget-wide v3, v3, Lcom/powervision/newvisionplus/WelcomeActivity;->totlal:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==oooooooooooo=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 438
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 439
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 441
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const-string p2, "==\u4e0b\u8f7d\u5931\u8d25ppp=="

    .line 442
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/SPHelperUtils;->saveScreenAdvImgUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
