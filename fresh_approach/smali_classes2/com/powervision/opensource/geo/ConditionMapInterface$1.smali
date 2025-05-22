.class Lcom/powervision/opensource/geo/ConditionMapInterface$1;
.super Ljava/lang/Object;
.source "ConditionMapInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/opensource/geo/ConditionMapInterface;->doTest(Lcom/powervision/opensource/CommonCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

.field final synthetic val$commonCallBack:Lcom/powervision/opensource/CommonCallBack;


# direct methods
.method constructor <init>(Lcom/powervision/opensource/geo/ConditionMapInterface;Lcom/powervision/opensource/CommonCallBack;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$1;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iput-object p2, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$1;->val$commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/NewVisionPlus/"

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

    const-string v2, "    exits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqGeo"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 90
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$1;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    iget-boolean v5, v5, Lcom/powervision/opensource/geo/ConditionMapInterface;->running:Z

    if-eqz v5, :cond_4

    const-string v5, " "

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 93
    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-le v5, v6, :cond_0

    .line 94
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    cmpl-float v6, v5, v7

    if-nez v6, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const/4 v8, 0x1

    .line 102
    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v9, v4

    if-nez v3, :cond_2

    .line 117
    new-instance v4, Lcom/powervision/opensource/geo/PointGps;

    invoke-direct {v4}, Lcom/powervision/opensource/geo/PointGps;-><init>()V

    .line 118
    iput-wide v6, v4, Lcom/powervision/opensource/geo/PointGps;->x:D

    .line 119
    iput-wide v9, v4, Lcom/powervision/opensource/geo/PointGps;->y:D

    .line 120
    iget-object v11, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$1;->val$commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v4, v12, v0

    invoke-interface {v11, v12}, Lcom/powervision/opensource/CommonCallBack;->failed([Ljava/lang/Object;)V

    :cond_2
    const/16 v4, 0x32

    if-le v3, v4, :cond_3

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_3

    .line 129
    new-instance v4, Lcom/powervision/opensource/geo/PointGps;

    invoke-direct {v4}, Lcom/powervision/opensource/geo/PointGps;-><init>()V

    .line 130
    iput-wide v6, v4, Lcom/powervision/opensource/geo/PointGps;->x:D

    .line 131
    iput-wide v9, v4, Lcom/powervision/opensource/geo/PointGps;->y:D

    float-to-double v5, v5

    .line 132
    iput-wide v5, v4, Lcom/powervision/opensource/geo/PointGps;->z:D

    .line 134
    iget-object v5, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$1;->val$commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v0

    invoke-interface {v5, v6}, Lcom/powervision/opensource/CommonCallBack;->success([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v4, 0x64

    .line 137
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 139
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "\u7ebf\u7a0b\u9500\u6bc1\u4e86"

    .line 149
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method
