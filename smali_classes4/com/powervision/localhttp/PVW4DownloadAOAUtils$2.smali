.class Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;
.super Ljava/util/TimerTask;
.source "PVW4DownloadAOAUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->receiveIO([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;


# direct methods
.method constructor <init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    .line 293
    iput p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-static {v1}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$100(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqPVW4DownloadAOAUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-static {v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$100(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 302
    iget v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->count:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->count:I

    const/16 v4, 0xa

    if-le v0, v4, :cond_1

    .line 304
    iput v2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->count:I

    const-string v0, "run: 222222 cancel"

    .line 305
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-virtual {v0, v3}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->retryDownloadCurrentTask(Z)V

    goto :goto_0

    .line 310
    :cond_0
    iput v2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->count:I

    .line 313
    :cond_1
    :goto_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2$1;

    invoke-direct {v1, p0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2$1;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
