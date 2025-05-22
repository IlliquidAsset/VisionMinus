.class Lcom/powervision/sdk/Ap03Manager$37;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;


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

    .line 1420
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$37;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getManualControlResult(IIII)V
    .locals 3

    .line 1423
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$37;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3700(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$37;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3700(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;->onRemoteControlerResult(IIII)V

    .line 1427
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getLocalRemoteMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1429
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    mul-int/lit8 p3, p3, 0x2

    add-int/lit16 p3, p3, -0x3e8

    invoke-virtual {v0, p3}, Lcom/powervision/base/utils/FlightLogUtil;->setLeftRemoteControlerUpDown(I)V

    .line 1430
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/powervision/base/utils/FlightLogUtil;->setLeftControlerLeftRight(I)V

    .line 1431
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setRightControlerUpDown(I)V

    .line 1432
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/FlightLogUtil;->setRightControlerLeftRight(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1434
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setLeftRemoteControlerUpDown(I)V

    .line 1435
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/powervision/base/utils/FlightLogUtil;->setLeftControlerLeftRight(I)V

    .line 1436
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    mul-int/lit8 p3, p3, 0x2

    add-int/lit16 p3, p3, -0x3e8

    invoke-virtual {p1, p3}, Lcom/powervision/base/utils/FlightLogUtil;->setRightControlerUpDown(I)V

    .line 1437
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/FlightLogUtil;->setRightControlerLeftRight(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1439
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    mul-int/lit8 p3, p3, 0x2

    add-int/lit16 p3, p3, -0x3e8

    invoke-virtual {v0, p3}, Lcom/powervision/base/utils/FlightLogUtil;->setLeftRemoteControlerUpDown(I)V

    .line 1440
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/powervision/base/utils/FlightLogUtil;->setLeftControlerLeftRight(I)V

    .line 1441
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setRightControlerUpDown(I)V

    .line 1442
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/powervision/base/utils/FlightLogUtil;->setRightControlerLeftRight(I)V

    goto :goto_0

    .line 1444
    :cond_3
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/FlightLogUtil;->setLeftRemoteControlerUpDown(I)V

    .line 1445
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/FlightLogUtil;->setLeftControlerLeftRight(I)V

    .line 1446
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/FlightLogUtil;->setRightControlerUpDown(I)V

    .line 1447
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/FlightLogUtil;->setRightControlerLeftRight(I)V

    :goto_0
    return-void
.end method
