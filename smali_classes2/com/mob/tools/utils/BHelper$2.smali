.class Lcom/mob/tools/utils/BHelper$2;
.super Ljava/lang/Object;
.source "BHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/BHelper;->findLEAndClassic(ILcom/mob/tools/utils/BHelper$BScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/BHelper;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/mob/tools/utils/BHelper$2;->this$0:Lcom/mob/tools/utils/BHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/BHelper$2;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 372
    iget-object p1, p0, Lcom/mob/tools/utils/BHelper$2;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    const/4 p1, 0x0

    return p1
.end method
