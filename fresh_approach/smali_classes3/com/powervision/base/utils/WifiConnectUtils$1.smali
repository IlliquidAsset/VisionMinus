.class Lcom/powervision/base/utils/WifiConnectUtils$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiConnectUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/utils/WifiConnectUtils;->addNetWorkQ(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/WifiConnectUtils;

.field final synthetic val$connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/WifiConnectUtils;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/powervision/base/utils/WifiConnectUtils$1;->this$0:Lcom/powervision/base/utils/WifiConnectUtils;

    iput-object p2, p0, Lcom/powervision/base/utils/WifiConnectUtils$1;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string v0, "WifiConnectUtils"

    const-string v1, "onAvailable: "

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/powervision/base/utils/WifiConnectUtils$1;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    const-string v0, "WifiConnectUtils"

    const-string v1, "onUnavailable: "

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
