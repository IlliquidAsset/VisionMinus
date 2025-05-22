.class Lcom/mob/tools/utils/BHelper$5;
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

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$bScanCallback:Lcom/mob/tools/utils/BHelper$BScanCallback;

.field final synthetic val$leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic val$scanResult:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;Lcom/mob/tools/utils/BHelper$BScanCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/mob/tools/utils/BHelper$5;->this$0:Lcom/mob/tools/utils/BHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/BHelper$5;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Lcom/mob/tools/utils/BHelper$5;->val$leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    iput-object p4, p0, Lcom/mob/tools/utils/BHelper$5;->val$bScanCallback:Lcom/mob/tools/utils/BHelper$BScanCallback;

    iput-object p5, p0, Lcom/mob/tools/utils/BHelper$5;->val$scanResult:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 511
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper$5;->this$0:Lcom/mob/tools/utils/BHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/BHelper;->access$202(Lcom/mob/tools/utils/BHelper;Z)Z

    .line 512
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper$5;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/mob/tools/utils/BHelper$5;->val$leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 513
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper$5;->val$bScanCallback:Lcom/mob/tools/utils/BHelper$BScanCallback;

    iget-object v1, p0, Lcom/mob/tools/utils/BHelper$5;->val$scanResult:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V

    return v0
.end method
