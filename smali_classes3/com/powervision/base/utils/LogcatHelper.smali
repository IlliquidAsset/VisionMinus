.class public Lcom/powervision/base/utils/LogcatHelper;
.super Ljava/lang/Object;
.source "LogcatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/LogcatHelper$LogDumper;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/powervision/base/utils/LogcatHelper; = null

.field private static PATH_LOGCAT:Ljava/lang/String; = null

.field private static final appFolder:Ljava/lang/String; = "A-Logcat"

.field private static final filterLogName:Ljava/lang/String; = "helin"


# instance fields
.field private mLogDumper:Lcom/powervision/base/utils/LogcatHelper$LogDumper;

.field private mPId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/powervision/base/utils/LogcatHelper;->mLogDumper:Lcom/powervision/base/utils/LogcatHelper$LogDumper;

    .line 56
    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/LogcatHelper;->init(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/utils/LogcatHelper;->mPId:I

    return-void
.end method

.method public static getDateEN()Ljava/lang/String;
    .locals 4

    .line 170
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName()Ljava/lang/String;
    .locals 4

    .line 164
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/LogcatHelper;
    .locals 1

    .line 49
    sget-object v0, Lcom/powervision/base/utils/LogcatHelper;->INSTANCE:Lcom/powervision/base/utils/LogcatHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/powervision/base/utils/LogcatHelper;

    invoke-direct {v0, p0}, Lcom/powervision/base/utils/LogcatHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/powervision/base/utils/LogcatHelper;->INSTANCE:Lcom/powervision/base/utils/LogcatHelper;

    .line 52
    :cond_0
    sget-object p0, Lcom/powervision/base/utils/LogcatHelper;->INSTANCE:Lcom/powervision/base/utils/LogcatHelper;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "A-Logcat"

    if-eqz v0, :cond_0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/powervision/base/utils/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/powervision/base/utils/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    .line 42
    :goto_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/powervision/base/utils/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/powervision/base/utils/LogcatHelper;->mLogDumper:Lcom/powervision/base/utils/LogcatHelper$LogDumper;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/powervision/base/utils/LogcatHelper$LogDumper;

    iget v1, p0, Lcom/powervision/base/utils/LogcatHelper;->mPId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/powervision/base/utils/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/powervision/base/utils/LogcatHelper$LogDumper;-><init>(Lcom/powervision/base/utils/LogcatHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/base/utils/LogcatHelper;->mLogDumper:Lcom/powervision/base/utils/LogcatHelper$LogDumper;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/utils/LogcatHelper;->mLogDumper:Lcom/powervision/base/utils/LogcatHelper$LogDumper;

    invoke-virtual {v0}, Lcom/powervision/base/utils/LogcatHelper$LogDumper;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/powervision/base/utils/LogcatHelper;->mLogDumper:Lcom/powervision/base/utils/LogcatHelper$LogDumper;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/powervision/base/utils/LogcatHelper$LogDumper;->stopLogs()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/powervision/base/utils/LogcatHelper;->mLogDumper:Lcom/powervision/base/utils/LogcatHelper$LogDumper;

    :cond_0
    return-void
.end method
