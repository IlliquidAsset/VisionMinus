.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setListener()V
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

    .line 3462
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelReturnSlide()V
    .locals 2

    .line 3465
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SlideReturnView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setVisibility(I)V

    .line 3466
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3467
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    :cond_0
    return-void
.end method

.method public returnSlide()V
    .locals 8

    .line 3473
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SlideReturnView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setVisibility(I)V

    .line 3474
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3475
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez v0, :cond_2

    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WarnUtil.isWarn((int) mLastEnabled, 25)  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 3477
    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x19

    invoke-static {v2, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " batteryInfo.get(10) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 3478
    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " WarnUtil.isWarn((int) mLastHealth, 1) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 3479
    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " WarnUtil.isWarn((int) mLastHealth, 2) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 3480
    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 3481
    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wang"

    .line 3476
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3483
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->takeOff()V

    .line 3485
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0xd

    invoke-static {v1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3486
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_57:I

    .line 3487
    invoke-virtual {v1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_9:I

    .line 3488
    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_AI_2:I

    .line 3489
    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v5, Lcom/powervision/aircraft/R$string;->AP03_AI_3:I

    invoke-virtual {v0, v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21$1;

    invoke-direct {v6, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21$1;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;)V

    new-instance v7, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21$2;

    invoke-direct {v7, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21$2;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;)V

    .line 3486
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 3503
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->takeOff()V

    .line 3505
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3507
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ap03_one_key_takeoff"

    .line 3505
    invoke-static {v0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 3513
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->land()V

    .line 3514
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3516
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ap03_one_key_land"

    .line 3514
    invoke-static {v0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_1
    return-void
.end method
