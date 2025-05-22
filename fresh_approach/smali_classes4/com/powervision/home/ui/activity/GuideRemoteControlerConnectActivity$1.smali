.class Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;
.super Ljava/lang/Object;
.source "GuideRemoteControlerConnectActivity.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCheckOk$1$GuideRemoteControlerConnectActivity$1()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->access$000(Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;)V

    return-void
.end method

.method public synthetic lambda$onConnectLinkSuccess$0$GuideRemoteControlerConnectActivity$1()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->access$100(Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;Z)V

    return-void
.end method

.method public onCheckError()V
    .locals 0

    return-void
.end method

.method public onCheckOk()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    new-instance v1, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlerConnectActivity$1$5fBxmEZXSZW-BaE2HdjHENEFmho;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlerConnectActivity$1$5fBxmEZXSZW-BaE2HdjHENEFmho;-><init>(Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 0

    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    new-instance v1, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlerConnectActivity$1$1ujO5Y1-HALn_9w4QtB5pnwHtLI;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlerConnectActivity$1$1ujO5Y1-HALn_9w4QtB5pnwHtLI;-><init>(Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 0

    return-void
.end method

.method public onLinkDisconnect()V
    .locals 0

    return-void
.end method
