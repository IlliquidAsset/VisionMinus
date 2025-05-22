.class Lcom/powervision/map/utils/PvLocateService$1;
.super Lcom/powervision/map/IService$Stub;
.source "PvLocateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/utils/PvLocateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/map/utils/PvLocateService;


# direct methods
.method constructor <init>(Lcom/powervision/map/utils/PvLocateService;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/map/utils/PvLocateService$1;->this$0:Lcom/powervision/map/utils/PvLocateService;

    invoke-direct {p0}, Lcom/powervision/map/IService$Stub;-><init>()V

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

.method public bindTheCell()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public doNetWork(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public resgister(Lcom/powervision/map/ICallBack;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object p2, p0, Lcom/powervision/map/utils/PvLocateService$1;->this$0:Lcom/powervision/map/utils/PvLocateService;

    invoke-static {p2, p1}, Lcom/powervision/map/utils/PvLocateService;->access$002(Lcom/powervision/map/utils/PvLocateService;Lcom/powervision/map/ICallBack;)Lcom/powervision/map/ICallBack;

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public startLocation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public stopLocation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unResgister(Lcom/powervision/map/ICallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
