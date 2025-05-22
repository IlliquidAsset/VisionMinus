.class Lcom/powervision/map/utils/PvLocateService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PvLocateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/map/utils/PvLocateService;->bindCell()V
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

    .line 99
    iput-object p1, p0, Lcom/powervision/map/utils/PvLocateService$2;->this$0:Lcom/powervision/map/utils/PvLocateService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 103
    iget-object p1, p0, Lcom/powervision/map/utils/PvLocateService$2;->this$0:Lcom/powervision/map/utils/PvLocateService;

    invoke-static {p1}, Lcom/powervision/map/utils/PvLocateService;->access$100(Lcom/powervision/map/utils/PvLocateService;)V

    .line 104
    iget-object p1, p0, Lcom/powervision/map/utils/PvLocateService$2;->this$0:Lcom/powervision/map/utils/PvLocateService;

    invoke-virtual {p1}, Lcom/powervision/map/utils/PvLocateService;->getUserAddress()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 111
    iget-object p1, p0, Lcom/powervision/map/utils/PvLocateService$2;->this$0:Lcom/powervision/map/utils/PvLocateService;

    invoke-static {p1}, Lcom/powervision/map/utils/PvLocateService;->access$200(Lcom/powervision/map/utils/PvLocateService;)Lcom/powervision/map/utils/LocationUtil;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/powervision/map/utils/PvLocateService$2;->this$0:Lcom/powervision/map/utils/PvLocateService;

    invoke-static {p1}, Lcom/powervision/map/utils/PvLocateService;->access$200(Lcom/powervision/map/utils/PvLocateService;)Lcom/powervision/map/utils/LocationUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/map/utils/PvLocateService$2;->this$0:Lcom/powervision/map/utils/PvLocateService;

    invoke-virtual {v0}, Lcom/powervision/map/utils/PvLocateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/map/utils/LocationUtil;->unRegisterListener(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
