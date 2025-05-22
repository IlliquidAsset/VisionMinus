.class Lcom/powervision/gcs/utils/DownloadUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/DownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/DownloadUtils;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/DownloadUtils;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/utils/DownloadUtils$1;->this$0:Lcom/powervision/gcs/utils/DownloadUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/powervision/gcs/utils/DownloadUtils$1;->this$0:Lcom/powervision/gcs/utils/DownloadUtils;

    invoke-static {p1}, Lcom/powervision/gcs/utils/DownloadUtils;->access$000(Lcom/powervision/gcs/utils/DownloadUtils;)V

    return-void
.end method
