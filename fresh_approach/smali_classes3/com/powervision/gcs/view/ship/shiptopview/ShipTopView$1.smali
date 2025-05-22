.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;
.super Ljava/lang/Object;
.source "ShipTopView.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckError()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$100(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;->registerSignalListener(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method public onCheckOk()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$100(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;->registerSignalListener(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$100(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;->registerSignalListener(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 0

    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$100(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$1;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;->registerSignalListener(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method public onLinkDisconnect()V
    .locals 0

    return-void
.end method
