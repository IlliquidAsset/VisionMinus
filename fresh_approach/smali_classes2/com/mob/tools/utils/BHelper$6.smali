.class Lcom/mob/tools/utils/BHelper$6;
.super Landroid/bluetooth/le/ScanCallback;
.source "BHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/BHelper;->findLE(ILandroid/bluetooth/BluetoothAdapter;Lcom/mob/tools/utils/BHelper$BScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/BHelper;

.field final synthetic val$scanResult:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/BHelper;Ljava/util/ArrayList;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/mob/tools/utils/BHelper$6;->this$0:Lcom/mob/tools/utils/BHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/BHelper$6;->val$scanResult:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 545
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onScanFailed(I)V
    .locals 0

    .line 551
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    .line 524
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    if-eqz p2, :cond_1

    .line 528
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 529
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper$6;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/BHelper;->access$100(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object p1

    .line 533
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rssi"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    .line 535
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$6;->val$scanResult:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
