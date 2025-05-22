.class Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$4;
.super Ljava/lang/Object;
.source "ShipMediaVideoFragment.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "ShipMediaVideoFragment"

    const-string p2, "downloadCancel: "

    .line 652
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    .line 646
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {p1, p2, p3}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "ShipMediaVideoFragment"

    const-string p2, "downloadTimeout: "

    .line 657
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 0

    return-void
.end method

.method public onCancelAll()V
    .locals 2

    const-string v0, "ShipMediaVideoFragment"

    const-string v1, "onCancelAll: "

    .line 662
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 2

    const-string v0, "ShipMediaVideoFragment"

    const-string v1, "onHighPriorityDownloadAll: "

    .line 672
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 2

    const-string v0, "ShipMediaVideoFragment"

    const-string v1, "onLowPriorityDownloadAll: "

    .line 667
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
