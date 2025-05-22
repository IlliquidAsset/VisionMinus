.class Lcom/powervision/sdk/Ap03Manager$17;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/sdk/Ap03Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/sdk/Ap03Manager;


# direct methods
.method constructor <init>(Lcom/powervision/sdk/Ap03Manager;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setNoflyzoneStatusCheckMd5Failed()V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;->setNoflyzoneStatusCheckMd5Failed()V

    return-void
.end method

.method public setNoflyzoneStatusCheckMd5Success()V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;->setNoflyzoneStatusCheckMd5Success()V

    return-void
.end method

.method public setNoflyzoneStatusSendDataFailed(I)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;->setNoflyzoneStatusSendDataFailed(I)V

    return-void
.end method

.method public setNoflyzoneStatusSendDataSuccess()V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;->setNoflyzoneStatusSendDataSuccess()V

    return-void
.end method

.method public setNoflyzoneStatusSendingData(I)V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$17;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;->setNoflyzoneStatusSendingData(I)V

    return-void
.end method
