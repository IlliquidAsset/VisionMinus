.class Lcom/powervision/gcs/manager/Dl01BsOperHelper$1;
.super Ljava/lang/Object;
.source "Dl01BsOperHelper.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/Dl01BsOperHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/Dl01BsOperHelper;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/Dl01BsOperHelper;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$1;->this$0:Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirDl01OperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAirDl01OperationResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dl01BsOperHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$1;->this$0:Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->notifyAir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
