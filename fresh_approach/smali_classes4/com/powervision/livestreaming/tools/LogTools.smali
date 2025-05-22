.class public Lcom/powervision/livestreaming/tools/LogTools;
.super Ljava/lang/Object;
.source "LogTools.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "RESLive_stream_"

.field private static enableLog:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 37
    sget-boolean v0, Lcom/powervision/livestreaming/tools/LogTools;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESLive_stream_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 29
    sget-boolean v0, Lcom/powervision/livestreaming/tools/LogTools;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESLive_stream_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    sget-boolean v0, Lcom/powervision/livestreaming/tools/LogTools;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESLive_stream_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isEnableLog()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/powervision/livestreaming/tools/LogTools;->enableLog:Z

    return v0
.end method

.method public static setEnableLog(Z)V
    .locals 0

    .line 25
    sput-boolean p0, Lcom/powervision/livestreaming/tools/LogTools;->enableLog:Z

    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/powervision/livestreaming/tools/LogTools;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, v0}, Lcom/powervision/livestreaming/tools/LogTools;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 65
    sget-boolean v0, Lcom/powervision/livestreaming/tools/LogTools;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 68
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 73
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p0, "================error!=================="

    :cond_3
    const-string v0, "RESLive_stream_"

    const-string v1, "=================================="

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "-----------------------------------"

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static trace(Ljava/lang/Throwable;)V
    .locals 1

    .line 58
    sget-boolean v0, Lcom/powervision/livestreaming/tools/LogTools;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 61
    invoke-static {v0, p0}, Lcom/powervision/livestreaming/tools/LogTools;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
