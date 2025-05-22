.class Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;
.super Ljava/lang/Object;
.source "PVW4DownloadHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$startPoint:J


# direct methods
.method constructor <init>(Lcom/powervision/localhttp/PVW4DownloadHttpUtils;Ljava/io/File;J)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    iput-object p2, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->val$file:Ljava/io/File;

    iput-wide p3, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->val$startPoint:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFailure$0$PVW4DownloadHttpUtils$1()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->handleDownloadMessageCancel()V

    return-void
.end method

.method public synthetic lambda$onFailure$1$PVW4DownloadHttpUtils$1()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->handleDownloadMessageTimeout()V

    return-void
.end method

.method public synthetic lambda$onResponse$2$PVW4DownloadHttpUtils$1(F)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->handleDownloadingMessage(F)V

    return-void
.end method

.method public synthetic lambda$onResponse$3$PVW4DownloadHttpUtils$1()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->handleDownloadMessageSuccess()V

    return-void
.end method

.method public synthetic lambda$onResponse$4$PVW4DownloadHttpUtils$1()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->handleDownloadMessageCancel()V

    return-void
.end method

.method public synthetic lambda$onResponse$5$PVW4DownloadHttpUtils$1()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->handleDownloadMessageTimeout()V

    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PVW4DownloadHttpUtils"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$_X749tid6wYfXc-D8Grrpx_Ks_w;

    invoke-direct {p2, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$_X749tid6wYfXc-D8Grrpx_Ks_w;-><init>(Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$Ku55b5BCm_Sm9w3JbXrr-GICZK0;

    invoke-direct {p2, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$Ku55b5BCm_Sm9w3JbXrr-GICZK0;-><init>(Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PVW4DownloadHttpUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 152
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResponse:contentLength "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 156
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 159
    :try_start_2
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->val$file:Ljava/io/File;

    const-string v8, "rwd"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    :try_start_3
    iget-wide v7, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->val$startPoint:J

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResponse:startPoint  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->val$startPoint:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-wide v7, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->val$startPoint:J

    .line 164
    iget-wide v9, p0, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->val$startPoint:J

    add-long/2addr v9, v3

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-gtz v2, :cond_0

    const-wide/16 v9, 0x1

    .line 169
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResponse sum: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResponse total: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v6, v0, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v7, v2

    long-to-float v2, v7

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    long-to-float v3, v9

    div-float/2addr v2, v3

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse:progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$fuZ5H3F2ulXNtnRdAY0OMtejpNU;

    invoke-direct {v4, p0, v2}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$fuZ5H3F2ulXNtnRdAY0OMtejpNU;-><init>(Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;F)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse:success--- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$XZI4c60Y2lpFGl8i7-UQ65UO7Ag;

    invoke-direct {v2, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$XZI4c60Y2lpFGl8i7-UQ65UO7Ag;-><init>(Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_2

    .line 207
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 212
    :catch_0
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v6, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v5, v2

    move-object v6, v5

    :goto_1
    move-object v2, p2

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v5, v2

    move-object v6, v5

    :goto_2
    move-object v2, p2

    goto :goto_3

    :catchall_3
    move-exception p1

    move-object v5, v2

    move-object v6, v5

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v5, v2

    move-object v6, v5

    .line 195
    :goto_3
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse:error-e- "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---state- "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 198
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$Y9XpqoNlEIyDDLcEhNIdEAT2raA;

    invoke-direct {p2, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$Y9XpqoNlEIyDDLcEhNIdEAT2raA;-><init>(Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :catchall_4
    move-exception p1

    goto :goto_7

    .line 200
    :cond_3
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$DEhS-_3o7Ia5R4rRMVGP2uKCXQk;

    invoke-direct {p2, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$DEhS-_3o7Ia5R4rRMVGP2uKCXQk;-><init>(Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_4
    if-eqz v2, :cond_4

    .line 207
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    nop

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 212
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    if-eqz v6, :cond_6

    .line 220
    :goto_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_6
    return-void

    :goto_7
    if-eqz v2, :cond_7

    .line 207
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    nop

    :cond_7
    :goto_8
    if-eqz v5, :cond_8

    .line 212
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    :cond_8
    if-eqz v6, :cond_9

    .line 220
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_9
    throw p1
.end method
