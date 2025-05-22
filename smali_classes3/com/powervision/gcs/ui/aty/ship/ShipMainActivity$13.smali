.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->missionFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 2699
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2702
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_44:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v3, Lcom/powervision/gcs/R$string;->APPfunction_26_1:I

    invoke-virtual {v2, v3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v4, Lcom/powervision/gcs/R$string;->OK:I

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13$1;

    invoke-direct {v5, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/powervision/gcs/view/DialogUtils;->createTipDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;Lcom/powervision/gcs/view/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    .line 2709
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/utils/ShipMessageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getModeErrorMsg()Lcom/powervision/gcs/model/ship/ShipWarning;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    .line 2710
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_0

    .line 2712
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_9:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->setActionText(I)V

    .line 2713
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->enableActions()V

    .line 2715
    invoke-static {v1}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    goto :goto_0

    .line 2716
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_1

    .line 2718
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_9:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->setActionText(I)V

    .line 2719
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->enableViews()V

    .line 2721
    invoke-static {v1}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    goto :goto_0

    .line 2722
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v2, 0x82

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v2, 0x8c

    if-ne v0, v2, :cond_3

    .line 2723
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipToInterestView;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_9:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->setActionText(I)V

    .line 2724
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$13;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipToInterestView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->setActionEnable(Z)V

    .line 2725
    invoke-static {v1}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    :cond_3
    :goto_0
    return-void
.end method
