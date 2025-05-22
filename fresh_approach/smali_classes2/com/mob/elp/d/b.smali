.class public Lcom/mob/elp/d/b;
.super Ljava/lang/Object;
.source "BitmapTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/elp/d/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/mob/elp/d/b$a;

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;IIILjava/lang/String;Lcom/mob/elp/d/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/mob/elp/d/b;->a:Ljava/util/concurrent/CountDownLatch;

    .line 3
    iput p3, p0, Lcom/mob/elp/d/b;->g:I

    .line 4
    iput p4, p0, Lcom/mob/elp/d/b;->h:I

    .line 5
    iput p5, p0, Lcom/mob/elp/d/b;->f:I

    .line 6
    iput-object p6, p0, Lcom/mob/elp/d/b;->c:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/mob/elp/d/b;->b:Landroid/content/Context;

    .line 8
    iput-object p7, p0, Lcom/mob/elp/d/b;->d:Lcom/mob/elp/d/b$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "images"

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 7
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v5, ""

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    invoke-static {p0, p1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/elp/d/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/mob/elp/d/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/elp/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/mob/elp/d/b;->g:I

    iget v2, p0, Lcom/mob/elp/d/b;->h:I

    iget-object v3, p0, Lcom/mob/elp/d/b;->b:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/mob/elp/d/e;->a(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/elp/d/b;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lcom/mob/elp/d/b;->d:Lcom/mob/elp/d/b$a;

    if-eqz v1, :cond_0

    .line 7
    iget v2, p0, Lcom/mob/elp/d/b;->f:I

    check-cast v1, Lcom/mob/elp/d/e$a;

    invoke-virtual {v1, v2, v0}, Lcom/mob/elp/d/e$a;->a(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    iget-object v0, p0, Lcom/mob/elp/d/b;->d:Lcom/mob/elp/d/b$a;

    if-eqz v0, :cond_0

    .line 11
    iget v1, p0, Lcom/mob/elp/d/b;->f:I

    iget-object v2, p0, Lcom/mob/elp/d/b;->e:Landroid/graphics/Bitmap;

    check-cast v0, Lcom/mob/elp/d/e$a;

    invoke-virtual {v0, v1, v2}, Lcom/mob/elp/d/e$a;->a(ILandroid/graphics/Bitmap;)V

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mob/elp/d/b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/mob/elp/d/b;->d:Lcom/mob/elp/d/b$a;

    if-eqz v1, :cond_1

    .line 15
    iget v2, p0, Lcom/mob/elp/d/b;->f:I

    iget-object v3, p0, Lcom/mob/elp/d/b;->e:Landroid/graphics/Bitmap;

    check-cast v1, Lcom/mob/elp/d/e$a;

    invoke-virtual {v1, v2, v3}, Lcom/mob/elp/d/e$a;->a(ILandroid/graphics/Bitmap;)V

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/mob/elp/d/b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
