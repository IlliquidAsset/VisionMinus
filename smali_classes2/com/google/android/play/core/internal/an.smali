.class public final Lcom/google/android/play/core/internal/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/play/core/splitcompat/e;

.field private final c:Lcom/google/android/play/core/internal/ao;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/android/play/core/internal/aq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/play/core/internal/ao;Lcom/google/android/play/core/splitcompat/e;Lcom/google/android/play/core/internal/aq;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/an;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/play/core/internal/an;->b:Lcom/google/android/play/core/splitcompat/e;

    iput-object p3, p0, Lcom/google/android/play/core/internal/an;->c:Lcom/google/android/play/core/internal/ao;

    iput-object p2, p0, Lcom/google/android/play/core/internal/an;->d:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/play/core/internal/an;->e:Lcom/google/android/play/core/internal/aq;

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/internal/an;)Lcom/google/android/play/core/internal/ao;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/an;->c:Lcom/google/android/play/core/internal/ao;

    return-object p0
.end method

.method private final a(Ljava/util/List;)Ljava/lang/Integer;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "SplitCompat"

    const/16 v1, -0xd

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/google/android/play/core/internal/an;->b:Lcom/google/android/play/core/splitcompat/e;

    invoke-virtual {v3}, Lcom/google/android/play/core/splitcompat/e;->b()Ljava/io/File;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v4
    :try_end_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_6

    const/4 v3, 0x0

    const/16 v5, -0xb

    :try_start_2
    const-string v6, "Copying splits."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    const-string v7, "split_id"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/play/core/internal/an;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const-string v9, "r"

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/play/core/internal/an;->b:Lcom/google/android/play/core/splitcompat/e;

    invoke-virtual {v8, v7}, Lcom/google/android/play/core/splitcompat/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    :goto_2
    iget-object v9, p0, Lcom/google/android/play/core/internal/an;->b:Lcom/google/android/play/core/splitcompat/e;

    invoke-virtual {v9, v7}, Lcom/google/android/play/core/splitcompat/e;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v8, 0x1000

    :try_start_4
    new-array v8, v8, [B

    :goto_3
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-gtz v9, :cond_2

    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_7
    invoke-virtual {v6, v8, v3, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v3

    :try_start_9
    invoke-static {p1, v3}, Lcom/google/android/play/core/internal/cd;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v3

    :try_start_b
    invoke-static {p1, v3}, Lcom/google/android/play/core/internal/cd;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    throw p1

    :cond_3
    const-string p1, "Splits copied."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object p1, p0, Lcom/google/android/play/core/internal/an;->c:Lcom/google/android/play/core/internal/ao;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ao;->a()Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz p1, :cond_4

    :try_start_d
    const-string p1, "Splits verified."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_4
    const-string p1, "Split verification failed."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    move-exception p1

    const-string v3, "Error verifying splits."

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    const/16 v3, -0xb

    goto :goto_7

    :catch_2
    move-exception p1

    const-string v3, "Error copying splits."

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, -0xd

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_a

    :goto_8
    if-eqz v2, :cond_5

    :try_start_e
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v2

    :try_start_f
    invoke-static {p1, v2}, Lcom/google/android/play/core/internal/cd;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_9
    throw p1

    :cond_6
    :goto_a
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    :cond_7
    return-object v3

    :catch_3
    move-exception p1

    const-string v2, "Error locking files."

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/play/core/internal/an;Lcom/google/android/play/core/splitinstall/b;)V
    .locals 3

    const-string v0, "SplitCompat"

    const/16 v1, -0xc

    :try_start_0
    iget-object p0, p0, Lcom/google/android/play/core/internal/an;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/v;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->a(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const-string p0, "Splits installed."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/google/android/play/core/splitinstall/b;->a()V

    return-void

    :cond_0
    const-string p0, "Emulating splits failed."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v1}, Lcom/google/android/play/core/splitinstall/b;->a(I)V

    return-void

    :catch_0
    move-exception p0

    const-string v2, "Error emulating splits."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {p1, v1}, Lcom/google/android/play/core/splitinstall/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/internal/an;Ljava/util/List;Lcom/google/android/play/core/splitinstall/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/play/core/internal/an;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/google/android/play/core/splitinstall/b;->b()V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/google/android/play/core/splitinstall/b;->a(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/play/core/splitinstall/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/google/android/play/core/splitinstall/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/core/internal/an;->b(Ljava/util/List;Lcom/google/android/play/core/splitinstall/b;)V

    return-void
.end method

.method public final b(Ljava/util/List;Lcom/google/android/play/core/splitinstall/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/google/android/play/core/splitinstall/b;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/play/core/splitcompat/SplitCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/internal/an;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/internal/am;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/play/core/internal/am;-><init>(Lcom/google/android/play/core/internal/an;Ljava/util/List;Lcom/google/android/play/core/splitinstall/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Ingestion should only be called in SplitCompat mode."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
