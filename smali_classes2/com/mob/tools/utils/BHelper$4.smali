.class Lcom/mob/tools/utils/BHelper$4;
.super Ljava/lang/Object;
.source "BHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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

    .line 483
    iput-object p1, p0, Lcom/mob/tools/utils/BHelper$4;->this$0:Lcom/mob/tools/utils/BHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/BHelper$4;->val$scanResult:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    .line 493
    :try_start_0
    iget-object p3, p0, Lcom/mob/tools/utils/BHelper$4;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {p3, p1}, Lcom/mob/tools/utils/BHelper;->access$100(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object p1

    const-string p3, "rssi"

    .line 494
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$4;->val$scanResult:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 498
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
