.class Lcom/powervision/sdk/Ap03Manager$36;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;


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

    .line 1387
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$36;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCommonResultFailed()V
    .locals 2

    .line 1404
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$36;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3600(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03LandProtectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$36;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3600(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03LandProtectListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/powervision/sdk/callback/Ap03LandProtectListener;->getLandProtectResult(I)V

    :cond_0
    return-void
.end method

.method public setCommonResultSuccess()V
    .locals 2

    .line 1390
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$36;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3600(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03LandProtectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$36;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3600(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03LandProtectListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/sdk/callback/Ap03LandProtectListener;->getLandProtectResult(I)V

    :cond_0
    return-void
.end method

.method public setCommonResultTimeout()V
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$36;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3600(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03LandProtectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$36;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3600(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03LandProtectListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/powervision/sdk/callback/Ap03LandProtectListener;->getLandProtectResult(I)V

    :cond_0
    return-void
.end method
