.class Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;
.super Ljava/lang/Object;
.source "AircraftDVConnectedFragment.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->executeFramAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    invoke-static {p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->access$000(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    invoke-static {p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->access$100(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    invoke-static {p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->access$100(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    invoke-static {p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->access$000(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    invoke-static {p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->access$100(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 219
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    invoke-static {p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->access$200(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;

    invoke-static {p1}, Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;->access$300(Lcom/powervision/home/ui/fragment/AircraftDVConnectedFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
