.class Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$2;
.super Ljava/lang/Object;
.source "GuideConnectDeviceActivity.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckError()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->access$000(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V

    return-void
.end method

.method public onCheckOk()V
    .locals 0

    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->access$000(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V

    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 0

    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->access$000(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V

    return-void
.end method

.method public onLinkDisconnect()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->access$000(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V

    return-void
.end method
