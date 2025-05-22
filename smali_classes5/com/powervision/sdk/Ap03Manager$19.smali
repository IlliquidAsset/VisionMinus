.class Lcom/powervision/sdk/Ap03Manager$19;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;


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

    .line 880
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$19;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteCustomKey(I)V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$19;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2400(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$19;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2400(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;->setRemoteCustomKey(I)V

    :cond_0
    return-void
.end method

.method public onRemoteRecord()V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$19;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2400(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$19;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2400(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;->setRemoteRecord()V

    :cond_0
    return-void
.end method

.method public onRemoteTakePic()V
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$19;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2400(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$19;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2400(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;->setRemoteTakePic()V

    :cond_0
    return-void
.end method

.method public onRemoteUnknow()V
    .locals 0

    return-void
.end method
