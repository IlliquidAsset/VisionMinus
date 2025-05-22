.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 8247
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DesComplete()V
    .locals 2

    .line 8260
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 8273
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appunite/player/PVCamPlayerHelperExt;->setOnDesListener(Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;)V

    return-void
.end method

.method public startDes()V
    .locals 3

    .line 8250
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8251
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v1, Lcom/powervision/base/views/LoadingProgressBar;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {v1, v2}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->rtspLoading:Lcom/powervision/base/views/LoadingProgressBar;

    const-string v0, "lzqrtsp"

    const-string v1, "------------------------- addView  -----------------------"

    .line 8252
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8253
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->rtspLoading:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    :cond_0
    return-void
.end method
