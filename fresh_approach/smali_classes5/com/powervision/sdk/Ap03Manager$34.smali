.class Lcom/powervision/sdk/Ap03Manager$34;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/sdk/Ap03Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/sdk/Ap03Manager;


# direct methods
.method constructor <init>(Lcom/powervision/sdk/Ap03Manager;)V
    .locals 0

    .line 1337
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$34;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirDl01OperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " opereat ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtsp_test"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$34;->this$0:Lcom/powervision/sdk/Ap03Manager;

    iget-object v0, v0, Lcom/powervision/sdk/Ap03Manager;->mAp03AirSetGetDl01OperationResultListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$34;->this$0:Lcom/powervision/sdk/Ap03Manager;

    iget-object v0, v0, Lcom/powervision/sdk/Ap03Manager;->mAp03AirSetGetDl01OperationResultListenerList:Ljava/util/List;

    .line 1342
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$34;->this$0:Lcom/powervision/sdk/Ap03Manager;

    iget-object v0, v0, Lcom/powervision/sdk/Ap03Manager;->mAp03AirSetGetDl01OperationResultListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03AirSetGetDl01OperationResultListener;

    .line 1345
    invoke-interface {v1, p1, p2, p3}, Lcom/powervision/sdk/callback/Ap03AirSetGetDl01OperationResultListener;->onGetAirDl01OperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
