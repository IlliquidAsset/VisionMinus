.class Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;
.super Ljava/lang/Object;
.source "PVW4ConnectedActivity.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

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

    const-string p1, "ShipConnectedActivity"

    const-string v0, "onTransitionEnd: "

    .line 324
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {p1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$100(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {p1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$200(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {p1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$200(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Landroid/widget/ImageView;

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

    const-string p1, "ShipConnectedActivity"

    const-string v0, "onTransitionStart: "

    .line 309
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {p1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$100(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {p1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$200(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 313
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {p1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$300(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$5;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {p1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$400(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
