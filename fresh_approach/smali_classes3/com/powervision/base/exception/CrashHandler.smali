.class public Lcom/powervision/base/exception/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final CRASH_REPORTER_EXTENSION:Ljava/lang/String; = ".cr"

.field public static final DEBUG:Z = false

.field private static final STACK_TRACE:Ljava/lang/String; = "STACK_TRACE"

.field public static final TAG:Ljava/lang/String; = "CrashHandler"

.field private static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final VERSION_NAME:Ljava/lang/String; = "versionName"

.field private static mInstance:Lcom/powervision/base/exception/CrashHandler;


# instance fields
.field private mCacheUtil:Lcom/powervision/base/utils/CacheUtil;

.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mDeviceCrashInfo:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/exception/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    return-void
.end method

.method private getCrashReportFiles(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/powervision/base/exception/CrashHandler;->mCacheUtil:Lcom/powervision/base/utils/CacheUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/CacheUtil;->getAllCacheFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Log"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance p1, Lcom/powervision/base/exception/CrashHandler$1;

    invoke-direct {p1, p0}, Lcom/powervision/base/exception/CrashHandler$1;-><init>(Lcom/powervision/base/exception/CrashHandler;)V

    .line 197
    invoke-virtual {v0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/powervision/base/exception/CrashHandler;
    .locals 2

    .line 77
    sget-object v0, Lcom/powervision/base/exception/CrashHandler;->mInstance:Lcom/powervision/base/exception/CrashHandler;

    if-nez v0, :cond_1

    .line 78
    const-class v0, Lcom/powervision/base/utils/CacheUtil;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/powervision/base/exception/CrashHandler;->mInstance:Lcom/powervision/base/exception/CrashHandler;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/powervision/base/exception/CrashHandler;

    invoke-direct {v1}, Lcom/powervision/base/exception/CrashHandler;-><init>()V

    sput-object v1, Lcom/powervision/base/exception/CrashHandler;->mInstance:Lcom/powervision/base/exception/CrashHandler;

    .line 82
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 84
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/exception/CrashHandler;->mInstance:Lcom/powervision/base/exception/CrashHandler;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/powervision/base/exception/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/powervision/base/exception/CrashHandler;->collectCrashDeviceInfo(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/powervision/base/exception/CrashHandler;->saveCrashInfoToFile(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 147
    iget-object p1, p0, Lcom/powervision/base/exception/CrashHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/powervision/base/exception/CrashHandler;->sendCrashReportsToServer(Landroid/content/Context;)V

    return v0
.end method

.method private postReport(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method private saveCrashInfoToFile(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    const-string v0, "crash-"

    .line 207
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 208
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 209
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 214
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 219
    iget-object v1, p0, Lcom/powervision/base/exception/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string v2, "STACK_TRACE"

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    .line 222
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".cr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/powervision/base/exception/CrashHandler;->mCacheUtil:Lcom/powervision/base/utils/CacheUtil;

    invoke-virtual {v4}, Lcom/powervision/base/utils/CacheUtil;->getAllCacheFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 229
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 232
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 233
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "an error occured while writing report file..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashHandler"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private sendCrashReportsToServer(Landroid/content/Context;)V
    .locals 4

    .line 164
    invoke-direct {p0, p1}, Lcom/powervision/base/exception/CrashHandler;->getCrashReportFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    array-length v1, v0

    if-lez v1, :cond_0

    .line 166
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 167
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 169
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, v2}, Lcom/powervision/base/exception/CrashHandler;->postReport(Ljava/io/File;)V

    .line 172
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public collectCrashDeviceInfo(Landroid/content/Context;)V
    .locals 8

    const-string v0, "CrashHandler"

    const/4 v1, 0x1

    .line 248
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 251
    iget-object v2, p0, Lcom/powervision/base/exception/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string v3, "versionName"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "not set"

    goto :goto_0

    :cond_0
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v2, p0, Lcom/powervision/base/exception/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string v3, "versionCode"

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v2, "Error while collect package info"

    .line 255
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    :cond_1
    :goto_1
    const-class p1, Landroid/os/Build;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 261
    array-length v2, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 263
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 264
    iget-object v5, p0, Lcom/powervision/base/exception/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v5, "Error while collect crash info"

    .line 269
    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/powervision/base/exception/CrashHandler;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/exception/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 95
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 96
    invoke-static {p1}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/exception/CrashHandler;->mCacheUtil:Lcom/powervision/base/utils/CacheUtil;

    return-void
.end method

.method public sendPreviousReportsToServer()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/powervision/base/exception/CrashHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/powervision/base/exception/CrashHandler;->sendCrashReportsToServer(Landroid/content/Context;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 106
    invoke-direct {p0, p2}, Lcom/powervision/base/exception/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/base/exception/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0xbb8

    .line 111
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CrashHandler"

    const-string v0, "Error : "

    .line 113
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    .line 116
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method
