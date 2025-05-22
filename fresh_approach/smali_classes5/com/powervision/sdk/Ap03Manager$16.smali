.class Lcom/powervision/sdk/Ap03Manager$16;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;


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

    .line 714
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$16;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElectricResult(I)V
    .locals 2

    const/4 v0, 0x0

    .line 717
    :goto_0
    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager$16;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v1}, Lcom/powervision/sdk/Ap03Manager;->access$2100(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager$16;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v1}, Lcom/powervision/sdk/Ap03Manager;->access$2100(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;

    invoke-interface {v1, p1}, Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;->getRemoteElectric(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setFlyControlerElectricity(I)V

    return-void
.end method
