.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lineScheme(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1433
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V
    .locals 1

    .line 1643
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mFunctionClose:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1644
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    const/4 p1, 0x0

    .line 1645
    invoke-static {p1}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    .line 1646
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$102(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    .line 1647
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1002(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    return-void
.end method

.method public onHidden()V
    .locals 2

    .line 1442
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$102(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    .line 1443
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipQuickSche:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1444
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->val$view:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onReset()V
    .locals 1

    .line 1436
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    const/4 v0, 0x0

    .line 1437
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    return-void
.end method

.method public onSpeedChanged(I)V
    .locals 3

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpeedChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqmission"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, p1, 0x28

    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v2, Lcom/powervision/gcs/R$mipmap;->w4_speed_too_low:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SPHelperUtils;->showGuide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    .line 1632
    invoke-static {v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->newInstance(I)Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;

    move-result-object v0

    .line 1633
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "speedTooLow"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p1, v0

    const v0, 0x3ecccccd    # 0.4f

    add-float/2addr p1, v0

    .line 1637
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2002(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;F)F

    return-void
.end method

.method public onStart()V
    .locals 6

    const-string v0, "lzqWay"

    const-string v1, "\u70b9\u51fb\u5f00\u59cb"

    .line 1450
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isAIEnable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1457
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROUT_STATUS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1002(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    .line 1491
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-nez v1, :cond_2

    .line 1493
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {v1}, Lcom/powervision/condition/view/NationMapView;->getLatLngLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "222222"

    .line 1494
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v5, Lcom/powervision/gcs/R$string;->PVW4_AI_5:I

    invoke-virtual {v2, v5}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    .line 1496
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1002(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    .line 1497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1498
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SPHelperUtils;->getUserInfo()Lcom/powervision/base/model/LoginModel;

    move-result-object v1

    iget-object v1, v1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/utils/SPHelperUtils;->getPsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SNcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const-string v2, "pvw4_StartWaypoint"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    const-string v1, "1111111"

    .line 1503
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->mission_sending:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->setActionText(I)V

    .line 1505
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->disableActions()V

    .line 1506
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V

    goto :goto_0

    .line 1507
    :cond_2
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v1

    if-ne v1, v4, :cond_3

    const-string v1, "444444"

    .line 1508
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->setSailModeChangeListener(Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;)V

    .line 1558
    invoke-static {v2}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    goto :goto_0

    .line 1560
    :cond_3
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const-string v1, "3333333"

    .line 1561
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->setSailModeChangeListener(Lcom/powervision/gcs/manager/PVW4SailModelManager$OnSailModeChangeListener;)V

    .line 1608
    invoke-static {v3}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    .line 1610
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->disableActions()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1616
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->isAIEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/condition/view/NationMapView;->setAllGesturesEnabled(Z)V

    .line 1620
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/condition/view/NationMapView;->setRotateGesturesEnabled(Z)V

    .line 1623
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1002(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    return-void
.end method
