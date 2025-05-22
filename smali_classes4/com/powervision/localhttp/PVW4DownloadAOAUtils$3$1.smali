.class Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3$1;
.super Ljava/lang/Object;
.source "PVW4DownloadAOAUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;


# direct methods
.method constructor <init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3$1;->this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3$1;->this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;

    iget-object v0, v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->retryDownloadCurrentTask(Z)V

    return-void
.end method
