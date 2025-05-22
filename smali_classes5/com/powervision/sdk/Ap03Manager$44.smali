.class Lcom/powervision/sdk/Ap03Manager$44;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;


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

    .line 1603
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$44;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setQueryActivationResultDisable()V
    .locals 2

    const-string v0, "Ap03ActivationManager"

    const-string v1, "setQueryActivationResultDisable"

    .line 1613
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :goto_0
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$44;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$1900(Lcom/powervision/sdk/Ap03Manager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    .line 1616
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1618
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$44;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$4300(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    .line 1622
    invoke-interface {v1}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;->setQueryActivationResultDisable()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setQueryActivationResultEnable()V
    .locals 2

    .line 1606
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$44;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$4300(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    .line 1607
    invoke-interface {v1}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;->setQueryActivationResultEnable()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setQueryActivationResultTimeout()V
    .locals 2

    .line 1628
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$44;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$4300(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    .line 1629
    invoke-interface {v1}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;->setQueryActivationResultTimeout()V

    goto :goto_0

    :cond_0
    return-void
.end method
