.class Lcom/mob/tools/utils/DeviceHelper$6;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Lcom/mob/tools/utils/BHelper$BScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DeviceHelper;->scanBtList(ILcom/mob/tools/utils/DeviceHelper$BtScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/DeviceHelper;

.field final synthetic val$bScanCallback:Lcom/mob/tools/utils/DeviceHelper$BtScanCallback;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DeviceHelper;Lcom/mob/tools/utils/DeviceHelper$BtScanCallback;)V
    .locals 0

    .line 4050
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$6;->this$0:Lcom/mob/tools/utils/DeviceHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$6;->val$bScanCallback:Lcom/mob/tools/utils/DeviceHelper$BtScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScan(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 4053
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$6;->val$bScanCallback:Lcom/mob/tools/utils/DeviceHelper$BtScanCallback;

    if-eqz v0, :cond_0

    .line 4054
    invoke-interface {v0, p1}, Lcom/mob/tools/utils/DeviceHelper$BtScanCallback;->onScan(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
