.class Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$1;
.super Ljava/lang/Object;
.source "GuideConnectHelpActivity.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckError()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->access$000(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;)V

    return-void
.end method

.method public onCheckOk()V
    .locals 0

    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->access$000(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;)V

    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 0

    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->access$000(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;)V

    return-void
.end method

.method public onLinkDisconnect()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->access$000(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;)V

    return-void
.end method
