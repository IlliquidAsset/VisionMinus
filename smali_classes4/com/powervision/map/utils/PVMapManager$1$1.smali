.class Lcom/powervision/map/utils/PVMapManager$1$1;
.super Lcom/powervision/map/ICallBack$Stub;
.source "PVMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/map/utils/PVMapManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/map/utils/PVMapManager$1;


# direct methods
.method constructor <init>(Lcom/powervision/map/utils/PVMapManager$1;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/powervision/map/utils/PVMapManager$1$1;->this$1:Lcom/powervision/map/utils/PVMapManager$1;

    invoke-direct {p0}, Lcom/powervision/map/ICallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getPersonPositon(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getResult(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public isChina(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/powervision/map/utils/PVMapManager$1$1;->this$1:Lcom/powervision/map/utils/PVMapManager$1;

    iget-object p1, p1, Lcom/powervision/map/utils/PVMapManager$1;->this$0:Lcom/powervision/map/utils/PVMapManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/powervision/map/utils/PVMapManager;->access$002(Lcom/powervision/map/utils/PVMapManager;I)I

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/powervision/map/utils/PVMapManager$1$1;->this$1:Lcom/powervision/map/utils/PVMapManager$1;

    iget-object p1, p1, Lcom/powervision/map/utils/PVMapManager$1;->this$0:Lcom/powervision/map/utils/PVMapManager;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/powervision/map/utils/PVMapManager;->access$002(Lcom/powervision/map/utils/PVMapManager;I)I

    :goto_0
    return-void
.end method

.method public onAvailable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/powervision/map/utils/PVMapManager$1$1;->this$1:Lcom/powervision/map/utils/PVMapManager$1;

    iget-object v0, v0, Lcom/powervision/map/utils/PVMapManager$1;->this$0:Lcom/powervision/map/utils/PVMapManager;

    invoke-virtual {v0}, Lcom/powervision/map/utils/PVMapManager;->stopLocation()V

    .line 88
    iget-object v0, p0, Lcom/powervision/map/utils/PVMapManager$1$1;->this$1:Lcom/powervision/map/utils/PVMapManager$1;

    iget-object v0, v0, Lcom/powervision/map/utils/PVMapManager$1;->this$0:Lcom/powervision/map/utils/PVMapManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/map/utils/PVMapManager;->access$102(Lcom/powervision/map/utils/PVMapManager;Z)Z

    return-void
.end method

.method public onLost()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/powervision/map/utils/PVMapManager$1$1;->this$1:Lcom/powervision/map/utils/PVMapManager$1;

    iget-object v0, v0, Lcom/powervision/map/utils/PVMapManager$1;->this$0:Lcom/powervision/map/utils/PVMapManager;

    iget-object v1, p0, Lcom/powervision/map/utils/PVMapManager$1$1;->this$1:Lcom/powervision/map/utils/PVMapManager$1;

    iget-object v1, v1, Lcom/powervision/map/utils/PVMapManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/powervision/map/utils/PVMapManager;->access$200(Lcom/powervision/map/utils/PVMapManager;Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lcom/powervision/map/utils/PVMapManager$1$1;->this$1:Lcom/powervision/map/utils/PVMapManager$1;

    iget-object v0, v0, Lcom/powervision/map/utils/PVMapManager$1;->this$0:Lcom/powervision/map/utils/PVMapManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/map/utils/PVMapManager;->access$102(Lcom/powervision/map/utils/PVMapManager;Z)Z

    return-void
.end method
