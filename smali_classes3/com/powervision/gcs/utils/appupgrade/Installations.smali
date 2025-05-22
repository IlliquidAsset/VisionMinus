.class Lcom/powervision/gcs/utils/appupgrade/Installations;
.super Ljava/lang/Object;
.source "Installations.java"


# instance fields
.field private final downloadReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/powervision/gcs/utils/appupgrade/Installations$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/appupgrade/Installations$1;-><init>(Lcom/powervision/gcs/utils/appupgrade/Installations;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Installations;->downloadReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Installations;->downloadReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/utils/appupgrade/Installations;->downloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
