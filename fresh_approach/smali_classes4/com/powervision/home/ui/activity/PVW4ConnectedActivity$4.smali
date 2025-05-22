.class Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;
.super Ljava/lang/Object;
.source "PVW4ConnectedActivity.java"

# interfaces
.implements Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;
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

    .line 228
    iput-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiviteCodeSuccess()V
    .locals 0

    return-void
.end method

.method public setActiviteStatus(I)V
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiviteStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipConnectedActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$000(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Lcom/powervision/home/view/NeedCheckActiviteTextView;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4$1;-><init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;I)V

    invoke-virtual {v0, v1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
