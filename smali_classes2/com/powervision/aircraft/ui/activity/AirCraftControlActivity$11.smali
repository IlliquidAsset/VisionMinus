.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->customKeyState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V
    .locals 0

    .line 1662
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1665
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->val$i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1666
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z

    .line 1671
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V

    goto/16 :goto_0

    .line 1673
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z

    .line 1674
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V

    goto/16 :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 1677
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 1679
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)J

    move-result-wide v3

    long-to-int v0, v3

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1680
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v4, "AP03_NEW_USER_MODE"

    invoke-virtual {v0, v4, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1681
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/warning/manager/WarningManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/warning/HoverMessage;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_7:I

    .line 1682
    invoke-virtual {v2, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1681
    invoke-virtual {v0, v1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void

    .line 1685
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1686
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object v0

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->setZ(F)V

    .line 1687
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->setVisibility(I)V

    .line 1688
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1692
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1693
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGimbalMiddle()V

    .line 1694
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2402(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    goto :goto_0

    .line 1695
    :cond_6
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 1696
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGimbalDown()V

    .line 1697
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2402(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    goto :goto_0

    .line 1700
    :cond_7
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_136:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    :cond_8
    :goto_0
    return-void
.end method
