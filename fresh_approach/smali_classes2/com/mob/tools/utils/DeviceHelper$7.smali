.class Lcom/mob/tools/utils/DeviceHelper$7;
.super Lcom/mob/tools/utils/BHelper$BOperationCallback;
.source "DeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DeviceHelper;->registerBtWatcher(Ljava/lang/String;Lcom/mob/tools/utils/DeviceHelper$BtWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/DeviceHelper;

.field final synthetic val$btWatcher:Lcom/mob/tools/utils/DeviceHelper$BtWatcher;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DeviceHelper;Lcom/mob/tools/utils/DeviceHelper$BtWatcher;)V
    .locals 0

    .line 4083
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$7;->this$0:Lcom/mob/tools/utils/DeviceHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$7;->val$btWatcher:Lcom/mob/tools/utils/DeviceHelper$BtWatcher;

    invoke-direct {p0}, Lcom/mob/tools/utils/BHelper$BOperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onConnectionChanged(ZLjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4099
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$7;->val$btWatcher:Lcom/mob/tools/utils/DeviceHelper$BtWatcher;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/DeviceHelper$BtWatcher;->onBtConnectionChanged(ZLjava/util/HashMap;)V

    return-void
.end method

.method protected onDeviceConnected(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4104
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$7;->val$btWatcher:Lcom/mob/tools/utils/DeviceHelper$BtWatcher;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/DeviceHelper$BtWatcher;->onDeviceConnected(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onDeviceDisconnected(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4109
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$7;->val$btWatcher:Lcom/mob/tools/utils/DeviceHelper$BtWatcher;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/DeviceHelper$BtWatcher;->onDeviceDisconnected(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onDisabled()V
    .locals 1

    .line 4094
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$7;->val$btWatcher:Lcom/mob/tools/utils/DeviceHelper$BtWatcher;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper$BtWatcher;->onBtDisabled()V

    return-void
.end method

.method protected onEnabled()V
    .locals 1

    .line 4086
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$7;->val$btWatcher:Lcom/mob/tools/utils/DeviceHelper$BtWatcher;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper$BtWatcher;->onBtEnabled()V

    return-void
.end method
