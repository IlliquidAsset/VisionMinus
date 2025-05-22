.class Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$2;
.super Ljava/lang/Object;
.source "GuideRemoteControlPaireActivity.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckError()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->access$100(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V

    return-void
.end method

.method public onCheckOk()V
    .locals 0

    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->access$100(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V

    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 0

    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->access$100(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V

    return-void
.end method

.method public onLinkDisconnect()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity$2;->this$0:Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->access$100(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;)V

    return-void
.end method
