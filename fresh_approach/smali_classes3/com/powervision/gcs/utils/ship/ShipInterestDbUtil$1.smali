.class Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$1;
.super Ljava/lang/Object;
.source "ShipInterestDbUtil.java"

# interfaces
.implements Lcom/powervision/gcs/utils/ship/DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->insertInterest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/powervision/gcs/utils/ship/DbCallback<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$1;->this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$1;->this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->access$000(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$1;->this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->access$000(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;->onAddInterestFailed()V

    :cond_0
    return-void
.end method

.method public onQuery(Ljava/lang/Long;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$1;->this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->access$000(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$1;->this$0:Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->access$000(Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;)Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;->onAddInterestSuccess(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onQuery(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$1;->onQuery(Ljava/lang/Long;)V

    return-void
.end method
