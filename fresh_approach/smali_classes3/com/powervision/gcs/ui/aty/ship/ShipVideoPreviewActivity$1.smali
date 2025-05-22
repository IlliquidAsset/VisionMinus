.class Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity$1;
.super Ljava/lang/Object;
.source "ShipVideoPreviewActivity.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "ShipVideoPreviewActivit"

    const-string p2, "ShipVideoPreviewActivity downloadCancel: "

    .line 211
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShipVideoPreviewActivity downloadSuccess: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShipVideoPreviewActivit"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;

    invoke-static {p1, p2, p3}, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "ShipVideoPreviewActivit"

    const-string p2, "ShipVideoPreviewActivity downloadTimeout: "

    .line 216
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 0

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShipVideoPreviewActivity downloading: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShipVideoPreviewActivit"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCancelAll()V
    .locals 2

    const-string v0, "ShipVideoPreviewActivit"

    const-string v1, "ShipVideoPreviewActivity onCancelAll: "

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 2

    const-string v0, "ShipVideoPreviewActivit"

    const-string v1, "ShipVideoPreviewActivity onHighPriorityDownloadAll: "

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 2

    const-string v0, "ShipVideoPreviewActivit"

    const-string v1, "ShipVideoPreviewActivity onLowPriorityDownloadAll: "

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
