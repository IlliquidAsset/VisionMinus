.class Lcom/powervision/gcs/utils/io/SonarSocket$3;
.super Ljava/lang/Object;
.source "SonarSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/io/SonarSocket;->startWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/io/SonarSocket;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/io/SonarSocket;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket$3;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$3;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-boolean v0, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->isRun:Z

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$3;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v0, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/net/Socket;->sendUrgentData(I)V

    const-wide/16 v0, 0x708

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x3e8

    .line 196
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
