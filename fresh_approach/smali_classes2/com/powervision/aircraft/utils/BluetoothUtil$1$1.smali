.class Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/utils/BluetoothUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/utils/BluetoothUtil$1;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v0, -0x1

    .line 60
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 61
    iget-object p2, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object p2, p2, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {p2}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$000(Lcom/powervision/aircraft/utils/BluetoothUtil;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p2

    .line 62
    iget-object v0, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object v0, v0, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$200(Lcom/powervision/aircraft/utils/BluetoothUtil;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bluetoothScoOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object p1, p1, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$200(Lcom/powervision/aircraft/utils/BluetoothUtil;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onReceive success!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object p1, p1, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$000(Lcom/powervision/aircraft/utils/BluetoothUtil;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 66
    iget-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object p1, p1, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->val$listener:Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;

    invoke-interface {p1}, Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;->onSuccess()V

    .line 67
    sget-object p1, Lcom/powervision/aircraft/utils/BluetoothUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object p1, p1, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$200(Lcom/powervision/aircraft/utils/BluetoothUtil;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive failed index="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object v0, v0, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$100(Lcom/powervision/aircraft/utils/BluetoothUtil;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x1f4

    .line 71
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object p1, p1, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$100(Lcom/powervision/aircraft/utils/BluetoothUtil;)I

    move-result p1

    const/4 p2, 0x5

    if-ge p1, p2, :cond_1

    .line 76
    iget-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object p1, p1, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$000(Lcom/powervision/aircraft/utils/BluetoothUtil;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_1

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object p1, p1, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->val$listener:Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;

    const-string p2, "open sco failed!"

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;->onError(Ljava/lang/String;)V

    .line 79
    sget-object p1, Lcom/powervision/aircraft/utils/BluetoothUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    :goto_1
    iget-object p1, p0, Lcom/powervision/aircraft/utils/BluetoothUtil$1$1;->this$1:Lcom/powervision/aircraft/utils/BluetoothUtil$1;

    iget-object p1, p1, Lcom/powervision/aircraft/utils/BluetoothUtil$1;->this$0:Lcom/powervision/aircraft/utils/BluetoothUtil;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/BluetoothUtil;->access$108(Lcom/powervision/aircraft/utils/BluetoothUtil;)I

    :goto_2
    return-void
.end method
