.class public Lcom/powervision/gcs/utils/SonarLogUtils;
.super Ljava/lang/Object;
.source "SonarLogUtils.java"


# static fields
.field private static sonarLogUtils:Lcom/powervision/gcs/utils/SonarLogUtils;


# instance fields
.field private basePath:Ljava/lang/String;

.field private fileWriter:Ljava/io/FileWriter;

.field private gson:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->fileWriter:Ljava/io/FileWriter;

    .line 32
    iput-object v0, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->gson:Lcom/google/gson/Gson;

    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->basePath:Ljava/lang/String;

    return-void
.end method

.method public static getIntance()Lcom/powervision/gcs/utils/SonarLogUtils;
    .locals 1

    .line 24
    sget-object v0, Lcom/powervision/gcs/utils/SonarLogUtils;->sonarLogUtils:Lcom/powervision/gcs/utils/SonarLogUtils;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/powervision/gcs/utils/SonarLogUtils;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/SonarLogUtils;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/SonarLogUtils;->sonarLogUtils:Lcom/powervision/gcs/utils/SonarLogUtils;

    .line 28
    :cond_0
    sget-object v0, Lcom/powervision/gcs/utils/SonarLogUtils;->sonarLogUtils:Lcom/powervision/gcs/utils/SonarLogUtils;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->fileWriter:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->fileWriter:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->fileWriter:Ljava/io/FileWriter;

    .line 94
    iput-object v0, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->gson:Lcom/google/gson/Gson;

    .line 95
    sput-object v0, Lcom/powervision/gcs/utils/SonarLogUtils;->sonarLogUtils:Lcom/powervision/gcs/utils/SonarLogUtils;

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public startLog(Ljava/lang/String;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->fileWriter:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/gcs/utils/TimeUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/SonarLogUtils;->init()V

    :goto_0
    return-void
.end method

.method public startLog([B)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->fileWriter:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/gcs/utils/TimeUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/utils/SonarLogUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/SonarLogUtils;->init()V

    :goto_0
    return-void
.end method
