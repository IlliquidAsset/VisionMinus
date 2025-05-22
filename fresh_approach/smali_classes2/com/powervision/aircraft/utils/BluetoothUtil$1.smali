.class Lcom/powervision/aircraft/utils/BluetoothUtil$1;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/utils/BluetoothUtil;->openSco(Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

.field final synthetic val$listener:Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/utils/BluetoothUtil;Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    iput-object p2, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->val$listener:Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$000(Lcom/powervision/aircraft/utils/BluetoothUtil;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 52
    iget-object v0, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$000(Lcom/powervision/aircraft/utils/BluetoothUtil;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 56
    iget-object v0, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$102(Lcom/powervision/aircraft/utils/BluetoothUtil;I)I

    .line 57
    sget-object v0, Lcom/powervision/aircraft/utils/BluetoothUtil;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;-><init>(Lcom/powervision/aircraft/utils/BluetoothUtil$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
