.class Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;
.super Landroid/os/Handler;
.source "DiskLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orhanobut/logger/DiskLogStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteHandler"
.end annotation


# instance fields
.field private final folder:Ljava/lang/String;

.field private final maxFileSize:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    invoke-static {p2}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->maxFileSize:I

    return-void
.end method

.method private getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10

    .line 86
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p2}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 p1, 0x0

    .line 99
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const-string v5, "%s_%s.csv"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/2addr v3, v6

    .line 103
    new-instance v1, Ljava/io/File;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p2, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget p2, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->maxFileSize:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-ltz p2, :cond_2

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    return-object p1
.end method

.method private writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p2}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 49
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    const-string v1, "logs"

    invoke-direct {p0, v0, v1}, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 60
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_0

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_0

    .line 64
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 65
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    :goto_1
    return-void
.end method
