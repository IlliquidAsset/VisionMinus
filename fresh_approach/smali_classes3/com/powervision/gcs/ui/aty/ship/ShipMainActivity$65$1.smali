.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->DesComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;)V
    .locals 0

    .line 8260
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8263
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isFinishing()Z

    move-result v0

    const-string v1, "lzqrtsp"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->rtspLoading:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->rtspLoading:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "------------------------- dismiss  -----------------------"

    .line 8264
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8265
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->rtspLoading:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    const-string v0, "-------------------------super finish  -----------------------"

    .line 8268
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8269
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$65;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8801(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    return-void
.end method
