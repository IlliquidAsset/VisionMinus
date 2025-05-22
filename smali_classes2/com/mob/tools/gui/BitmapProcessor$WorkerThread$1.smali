.class Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"

# interfaces
.implements Lcom/mob/tools/network/RawNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

.field final synthetic val$md5:Ljava/lang/String;

.field final synthetic val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    iput-object p2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$md5:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;-><init>(Ljava/io/InputStream;)V

    .line 413
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 414
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$md5:Ljava/lang/String;

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    invoke-static {v2, v0, p1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$1900(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/io/InputStream;Ljava/io/File;)V

    .line 416
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 420
    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    iget v3, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredWidth:I

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    iget v4, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredHeight:I

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 421
    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    iget v5, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->quality:I

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    iget-wide v6, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->maxBytes:J

    .line 419
    invoke-static/range {v2 .. v7}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressQuality(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 417
    :cond_1
    :goto_0
    invoke-static {p1, v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    :goto_1
    iget-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 425
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 429
    :cond_2
    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_2
    if-eqz v0, :cond_6

    .line 432
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 435
    :cond_4
    iget-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 437
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePool;

    move-result-object p1

    iget-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v2}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Lcom/mob/tools/gui/CachePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 439
    :cond_5
    iget-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {p1, v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 433
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1800(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    .line 441
    :goto_4
    iget-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$2002(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    return-void
.end method
