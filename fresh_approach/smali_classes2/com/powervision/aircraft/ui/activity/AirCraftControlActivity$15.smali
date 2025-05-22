.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$15;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onIDLE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 2764
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$15;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "nemo_record_info-air"

    const-string v1, "\u98de\u884c\u754c\u9762 \u6302\u65ad\u7535\u8bdd \u5f00\u59cb\u7ee7\u7eed\u6536\u58f0 \u8d70\u84dd\u7259"

    .line 2771
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$15;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method
