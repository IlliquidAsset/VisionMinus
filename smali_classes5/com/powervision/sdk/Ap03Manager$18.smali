.class Lcom/powervision/sdk/Ap03Manager$18;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;


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

    .line 771
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setNoflyZoneOperateStatusFactoryFailed()V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusFactoryFailed()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusFactoryProgress(I)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusFactoryProgress(I)V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySqliteFailed()V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusFactorySqliteFailed()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySqliteProgress(I)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusFactorySqliteProgress(I)V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySqliteSuccess()V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusFactorySqliteSuccess()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySqliteTimeout()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusFactorySqliteTimeout()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySuccess()V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusFactorySuccess()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusFactoryTimeout()V
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusFactoryTimeout()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusRealtimeFailed()V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusRealtimeFailed()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusRealtimeProgress(I)V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusRealtimeProgress(I)V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusRealtimeSuccess()V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusRealtimeSuccess()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusRealtimeTimeout()V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusRealtimeTimeout()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusVersionFailed()V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusVersionFailed()V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusVersionSuccess(Ljava/lang/String;)V
    .locals 2

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNoflyZoneOperateStatusVersionSuccess ==== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusVersionSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusVersionTimeout()V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$18;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;->setNoflyZoneOperateStatusVersionTimeout()V

    :cond_0
    return-void
.end method
