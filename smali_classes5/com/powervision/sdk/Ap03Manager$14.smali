.class Lcom/powervision/sdk/Ap03Manager$14;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;


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

    .line 655
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatteryState(IIIIII)V
    .locals 2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 659
    :goto_0
    iget-object p3, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p3}, Lcom/powervision/sdk/Ap03Manager;->access$1400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 660
    iget-object p3, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p3}, Lcom/powervision/sdk/Ap03Manager;->access$1400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/sdk/callback/Ap03SysWarnListener;

    invoke-interface {p3, p4, p5, p6}, Lcom/powervision/sdk/callback/Ap03SysWarnListener;->getSysWarnInfo(III)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x15

    .line 662
    invoke-static {p4, p2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p2

    const/16 p3, 0x16

    .line 663
    invoke-static {p4, p3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p3

    .line 664
    iget-object p4, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {p4, p2, p3}, Lcom/powervision/sdk/Ap03Manager;->isStateNotChanged(ZZ)Z

    move-result p4

    .line 667
    invoke-static {p2}, Lcom/powervision/sdk/Ap03Manager;->access$1502(Z)Z

    .line 668
    invoke-static {p3}, Lcom/powervision/sdk/Ap03Manager;->access$1602(Z)Z

    .line 669
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " arm status  ...isLeftLoad="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->access$1500()Z

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isRightLoad="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->access$1600()Z

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  notChanged="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "get_arm_status"

    .line 669
    invoke-static {v0, p5}, Lcom/powervision/base/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object p5, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    const/4 v0, 0x4

    invoke-static {p6, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    iput-boolean v0, p5, Lcom/powervision/sdk/Ap03Manager;->isLandingWaterMode:Z

    .line 673
    iget-object p5, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    const/16 v0, 0x1b

    invoke-static {p6, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p6

    iput-boolean p6, p5, Lcom/powervision/sdk/Ap03Manager;->isWaterproofMode:Z

    .line 675
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p5

    const/4 p6, 0x1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "device_model"

    invoke-virtual {p5, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 677
    iget-object p5, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p5}, Lcom/powervision/sdk/Ap03Manager;->access$1700(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_3

    if-nez p4, :cond_3

    .line 679
    iget-object p4, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p4}, Lcom/powervision/sdk/Ap03Manager;->access$1700(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/powervision/sdk/callback/Ap03RoboticArmListener;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 680
    :goto_3
    invoke-interface {p5, p2, p3, v0}, Lcom/powervision/sdk/callback/Ap03RoboticArmListener;->onRoboticArmStateChange(ZZZ)V

    goto :goto_2

    .line 684
    :cond_3
    iget-object p1, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p1}, Lcom/powervision/sdk/Ap03Manager;->access$1800(Lcom/powervision/sdk/Ap03Manager;)I

    move-result p1

    if-nez p1, :cond_4

    .line 685
    iget-object p1, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p1, p6}, Lcom/powervision/sdk/Ap03Manager;->access$1802(Lcom/powervision/sdk/Ap03Manager;I)I

    .line 686
    iget-object p1, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p1}, Lcom/powervision/sdk/Ap03Manager;->access$1700(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/sdk/callback/Ap03RoboticArmListener;

    .line 687
    invoke-interface {p2}, Lcom/powervision/sdk/callback/Ap03RoboticArmListener;->onRoboticArmStateGet()V

    .line 688
    iget-object p2, p0, Lcom/powervision/sdk/Ap03Manager$14;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p2, p6}, Lcom/powervision/sdk/Ap03Manager;->access$1902(Lcom/powervision/sdk/Ap03Manager;Z)Z

    goto :goto_4

    :cond_4
    return-void
.end method
