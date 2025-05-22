.class Lcom/mob/tools/utils/BHelper$7;
.super Ljava/lang/Object;
.source "BHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

.field final synthetic val$bScanCallback:Lcom/mob/tools/utils/BHelper$BScanCallback;

.field final synthetic val$mBLEScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field final synthetic val$mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field final synthetic val$scanResult:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;Lcom/mob/tools/utils/BHelper$BScanCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/mob/tools/utils/BHelper$7;->this$0:Lcom/mob/tools/utils/BHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/BHelper$7;->val$mBLEScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object p3, p0, Lcom/mob/tools/utils/BHelper$7;->val$mScanCallback:Landroid/bluetooth/le/ScanCallback;

    iput-object p4, p0, Lcom/mob/tools/utils/BHelper$7;->val$bScanCallback:Lcom/mob/tools/utils/BHelper$BScanCallback;

    iput-object p5, p0, Lcom/mob/tools/utils/BHelper$7;->val$scanResult:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 585
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper$7;->this$0:Lcom/mob/tools/utils/BHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/BHelper;->access$202(Lcom/mob/tools/utils/BHelper;Z)Z

    .line 586
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper$7;->val$mBLEScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/mob/tools/utils/BHelper$7;->val$mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p1, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 587
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper$7;->val$bScanCallback:Lcom/mob/tools/utils/BHelper$BScanCallback;

    iget-object v1, p0, Lcom/mob/tools/utils/BHelper$7;->val$scanResult:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V

    return v0
.end method
