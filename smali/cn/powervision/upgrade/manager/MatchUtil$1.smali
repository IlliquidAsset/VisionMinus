.class Lcn/powervision/upgrade/manager/MatchUtil$1;
.super Ljava/lang/Object;
.source "MatchUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/manager/MatchUtil;->downloadMatch(Lcn/powervision/upgrade/manager/CommonCallBack;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/MatchUtil;

.field final synthetic val$commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

.field final synthetic val$ser_md5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/MatchUtil;Lcn/powervision/upgrade/manager/CommonCallBack;Ljava/lang/String;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcn/powervision/upgrade/manager/MatchUtil$1;->this$0:Lcn/powervision/upgrade/manager/MatchUtil;

    iput-object p2, p0, Lcn/powervision/upgrade/manager/MatchUtil$1;->val$commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    iput-object p3, p0, Lcn/powervision/upgrade/manager/MatchUtil$1;->val$ser_md5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "lzqFirm"

    const-string p2, "1.2 \u4e0b\u8f7d\u5931\u8d25"

    .line 509
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcn/powervision/upgrade/manager/MatchUtil$1;->val$commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    invoke-interface {p1}, Lcn/powervision/upgrade/manager/CommonCallBack;->failed()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "lzqFirm"

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->SER_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/powervision/upgrade/FileUtil;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 522
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    const/4 v0, 0x0

    .line 525
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 528
    :goto_0
    invoke-virtual {p2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 529
    invoke-virtual {v4, v5, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 530
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v0, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 533
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 534
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 535
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sb:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance p2, Ljava/io/File;

    sget-object v4, Lcn/powervision/upgrade/manager/NewFirmWareManager;->SER_PATH:Ljava/lang/String;

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ser files:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 539
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_3

    .line 540
    aget-object v5, p2, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 541
    aget-object v5, p2, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/powervision/upgrade/FileUtil;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v1, "ser match IOException"

    .line 547
    invoke-static {p1, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 551
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 552
    invoke-static {p2}, Lcom/powervision/base/utils/MD5Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0b\u8f7dmatch\u7684md5:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sermd5:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/powervision/upgrade/manager/MatchUtil$1;->val$ser_md5:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lcn/powervision/upgrade/manager/MatchUtil$1;->val$ser_md5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 562
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/16 p2, 0xa

    const/4 v1, 0x1

    if-le p1, p2, :cond_8

    const/4 p1, 0x0

    .line 563
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    if-ge p1, p2, :cond_8

    .line 564
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    const/16 v4, 0x5b

    if-ne p2, v4, :cond_7

    add-int/lit8 p2, p1, 0x4

    .line 566
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v4, "[VER"

    .line 567
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, p1

    .line 570
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge p2, v4, :cond_6

    .line 571
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    .line 576
    :goto_4
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "="

    .line 577
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 578
    aget-object p1, p1, v1

    goto :goto_5

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    const-string p1, ""

    .line 588
    :goto_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p1, "0.0.0"

    .line 592
    :cond_9
    new-instance p2, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 595
    iget-object p2, p0, Lcn/powervision/upgrade/manager/MatchUtil$1;->val$commonCallBack:Lcn/powervision/upgrade/manager/CommonCallBack;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {p2, v1}, Lcn/powervision/upgrade/manager/CommonCallBack;->success([Ljava/lang/Object;)V

    return-void
.end method
