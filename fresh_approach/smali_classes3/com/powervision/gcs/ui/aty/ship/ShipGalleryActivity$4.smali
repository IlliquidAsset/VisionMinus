.class Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$4;
.super Ljava/lang/Object;
.source "ShipGalleryActivity.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "ShipGalleryActivity"

    const-string p2, "ShipGalleryActivity downloadCancel: "

    .line 311
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShipGalleryActivity downloadSuccess: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShipGalleryActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    invoke-static {p1, p2, p3}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->access$200(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "ShipGalleryActivity"

    const-string p2, "ShipGalleryActivity downloadTimeout: "

    .line 316
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 0

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShipGalleryActivity downloading: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShipGalleryActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCancelAll()V
    .locals 2

    const-string v0, "ShipGalleryActivity"

    const-string v1, "ShipGalleryActivity onCancelAll: "

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 2

    const-string v0, "ShipGalleryActivity"

    const-string v1, "ShipGalleryActivity onHighPriorityDownloadAll: "

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 2

    const-string v0, "ShipGalleryActivity"

    const-string v1, "ShipGalleryActivity onLowPriorityDownloadAll: "

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
