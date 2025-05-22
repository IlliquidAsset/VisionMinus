.class Lcom/powervision/handheld/utils/BluetoothUtil$1;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/utils/BluetoothUtil;->openSco(Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/utils/BluetoothUtil;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/utils/BluetoothUtil;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/powervision/handheld/utils/BluetoothUtil$1;->this$0:Lcom/powervision/handheld/utils/BluetoothUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil$1;->this$0:Lcom/powervision/handheld/utils/BluetoothUtil;

    invoke-static {v0}, Lcom/powervision/handheld/utils/BluetoothUtil;->access$000(Lcom/powervision/handheld/utils/BluetoothUtil;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 56
    iget-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil$1;->this$0:Lcom/powervision/handheld/utils/BluetoothUtil;

    invoke-static {v0}, Lcom/powervision/handheld/utils/BluetoothUtil;->access$000(Lcom/powervision/handheld/utils/BluetoothUtil;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 60
    iget-object v0, p0, Lcom/powervision/handheld/utils/BluetoothUtil$1;->this$0:Lcom/powervision/handheld/utils/BluetoothUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/handheld/utils/BluetoothUtil;->access$102(Lcom/powervision/handheld/utils/BluetoothUtil;I)I

    .line 61
    sget-object v0, Lcom/powervision/handheld/utils/BluetoothUtil;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/powervision/handheld/utils/BluetoothUtil$1$1;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/utils/BluetoothUtil$1$1;-><init>(Lcom/powervision/handheld/utils/BluetoothUtil$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
