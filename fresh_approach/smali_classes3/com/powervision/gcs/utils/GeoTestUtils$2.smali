.class Lcom/powervision/gcs/utils/GeoTestUtils$2;
.super Ljava/lang/Object;
.source "GeoTestUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/GeoTestUtils;->doTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/GeoTestUtils;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/GeoTestUtils;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/powervision/gcs/utils/GeoTestUtils$2;->this$0:Lcom/powervision/gcs/utils/GeoTestUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v0, 0xbb8

    .line 78
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/powervision/base/config/GlobalConfig;->videoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "origindata.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqpath"

    invoke-static {v2, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/GeoTestUtils$2;->this$0:Lcom/powervision/gcs/utils/GeoTestUtils;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, v1, Lcom/powervision/gcs/utils/GeoTestUtils;->bffread:Ljava/io/BufferedReader;

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/GeoTestUtils$2;->this$0:Lcom/powervision/gcs/utils/GeoTestUtils;

    iget-object v1, v1, Lcom/powervision/gcs/utils/GeoTestUtils;->bffread:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x32

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const-string v2, " "

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 89
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 90
    array-length v3, v1

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 91
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 94
    :cond_0
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    const/4 v5, 0x1

    .line 95
    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v5, v1

    .line 97
    iget-object v1, p0, Lcom/powervision/gcs/utils/GeoTestUtils$2;->this$0:Lcom/powervision/gcs/utils/GeoTestUtils;

    iget-object v1, v1, Lcom/powervision/gcs/utils/GeoTestUtils;->xyzListener:Lcom/powervision/gcs/utils/GeoTestUtils$xyzListener;

    if-eqz v1, :cond_1

    const-string v1, "lzqOld"

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " ,y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, "  z:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/powervision/gcs/utils/GeoTestUtils$2;->this$0:Lcom/powervision/gcs/utils/GeoTestUtils;

    iget-object v1, v1, Lcom/powervision/gcs/utils/GeoTestUtils;->xyzListener:Lcom/powervision/gcs/utils/GeoTestUtils$xyzListener;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v7, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v9

    invoke-interface/range {v1 .. v8}, Lcom/powervision/gcs/utils/GeoTestUtils$xyzListener;->xyz(DDDI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
