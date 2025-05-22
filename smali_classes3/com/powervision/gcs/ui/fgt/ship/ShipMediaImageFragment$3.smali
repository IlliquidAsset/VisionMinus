.class Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$3;
.super Ljava/lang/Object;
.source "ShipMediaImageFragment.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "ShipMediaImageFragment"

    const-string p2, "downloadCancel: "

    .line 566
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadSuccess: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShipMediaImageFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    .line 560
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {p1, p2, p3}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "ShipMediaImageFragment"

    const-string p2, "downloadTimeout: "

    .line 571
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 0

    return-void
.end method

.method public onCancelAll()V
    .locals 2

    const-string v0, "ShipMediaImageFragment"

    const-string v1, "onCancelAll: "

    .line 576
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 2

    const-string v0, "ShipMediaImageFragment"

    const-string v1, "onHighPriorityDownloadAll: "

    .line 586
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 2

    const-string v0, "ShipMediaImageFragment"

    const-string v1, "onLowPriorityDownloadAll: "

    .line 581
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
