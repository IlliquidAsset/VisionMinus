.class Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2$1;
.super Ljava/lang/Object;
.source "PVW4DownloadAOAUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;


# direct methods
.method constructor <init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2$1;->this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2$1;->this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;

    iget-object v0, v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-static {v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$200(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 320
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2$1;->this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;

    iget-object v0, v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$202(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;J)J

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2$1;->this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;

    iget-object v0, v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-static {v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$300(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2$1;->this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;

    iget-object v2, v2, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-static {v2}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$200(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2$1;->this$1:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-virtual {v1, v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->handleDownloadingMessage(F)V

    return-void
.end method
