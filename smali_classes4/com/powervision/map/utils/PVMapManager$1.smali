.class Lcom/powervision/map/utils/PVMapManager$1;
.super Ljava/lang/Object;
.source "PVMapManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/map/utils/PVMapManager;->bindService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/map/utils/PVMapManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/powervision/map/utils/PVMapManager;Landroid/content/Context;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/powervision/map/utils/PVMapManager$1;->this$0:Lcom/powervision/map/utils/PVMapManager;

    iput-object p2, p0, Lcom/powervision/map/utils/PVMapManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/powervision/map/utils/PVMapManager$1;->this$0:Lcom/powervision/map/utils/PVMapManager;

    invoke-static {p2}, Lcom/powervision/map/IService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/powervision/map/IService;

    move-result-object p2

    iput-object p2, p1, Lcom/powervision/map/utils/PVMapManager;->mService:Lcom/powervision/map/IService;

    .line 57
    :try_start_0
    iget-object p1, p0, Lcom/powervision/map/utils/PVMapManager$1;->this$0:Lcom/powervision/map/utils/PVMapManager;

    iget-object p1, p1, Lcom/powervision/map/utils/PVMapManager;->mService:Lcom/powervision/map/IService;

    new-instance p2, Lcom/powervision/map/utils/PVMapManager$1$1;

    invoke-direct {p2, p0}, Lcom/powervision/map/utils/PVMapManager$1$1;-><init>(Lcom/powervision/map/utils/PVMapManager$1;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/powervision/map/IService;->resgister(Lcom/powervision/map/ICallBack;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
