.class Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;-><init>(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)V

    invoke-static {v0, p0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    .line 235
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 239
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePool;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePool;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/gui/CachePool;->trimBeforeTime(J)V

    .line 243
    :cond_0
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePool;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/gui/CachePool;->size()I

    move-result p1

    .line 244
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>> BitmapProcessor.cachePool: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 245
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 246
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>> BitmapProcessor.reqList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 248
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1200()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 249
    iget-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return v0
.end method

.method public quit()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 257
    :goto_0
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 258
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 259
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->interrupt()V

    .line 260
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
