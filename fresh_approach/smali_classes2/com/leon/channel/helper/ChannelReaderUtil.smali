.class public Lcom/leon/channel/helper/ChannelReaderUtil;
.super Ljava/lang/Object;
.source "ChannelReaderUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelReaderUtil"

.field private static mChannelCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllIdValueMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lcom/leon/channel/helper/ChannelReaderUtil;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/leon/channel/reader/IdValueReader;->getAllIdValueMap(Ljava/io/File;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static getApkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getByteValueById(Landroid/content/Context;I)[B
    .locals 1

    .line 100
    invoke-static {p0}, Lcom/leon/channel/helper/ChannelReaderUtil;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/leon/channel/reader/IdValueReader;->getByteValueById(Ljava/io/File;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/leon/channel/helper/ChannelReaderUtil;->mChannelCache:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 41
    invoke-static {p0}, Lcom/leon/channel/helper/ChannelReaderUtil;->getChannelByV2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/leon/channel/helper/ChannelReaderUtil;->getChannelByV1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    sput-object v0, Lcom/leon/channel/helper/ChannelReaderUtil;->mChannelCache:Ljava/lang/String;

    .line 48
    :cond_1
    sget-object p0, Lcom/leon/channel/helper/ChannelReaderUtil;->mChannelCache:Ljava/lang/String;

    return-object p0
.end method

.method public static getChannelByV1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 71
    invoke-static {p0}, Lcom/leon/channel/helper/ChannelReaderUtil;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/leon/channel/reader/ChannelReader;->getChannelByV1(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChannelByV1 , channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChannelReaderUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getChannelByV2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 58
    invoke-static {p0}, Lcom/leon/channel/helper/ChannelReaderUtil;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/leon/channel/reader/ChannelReader;->getChannelByV2(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChannelByV2 , channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChannelReaderUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getStringValueById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 86
    invoke-static {p0}, Lcom/leon/channel/helper/ChannelReaderUtil;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/leon/channel/reader/IdValueReader;->getStringValueById(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , value = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChannelReaderUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
