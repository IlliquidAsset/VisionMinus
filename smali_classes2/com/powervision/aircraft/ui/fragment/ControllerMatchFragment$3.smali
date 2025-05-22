.class Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;
.super Ljava/lang/Object;
.source "ControllerMatchFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckError()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V

    return-void
.end method

.method public onCheckOk()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V

    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V

    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V

    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V

    return-void
.end method

.method public onLinkDisconnect()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V

    return-void
.end method
