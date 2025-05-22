.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->onSailModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;I)V
    .locals 0

    .line 2466
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iput p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2469
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->val$mode:I

    if-nez v0, :cond_0

    .line 2470
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2600(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 2471
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/utils/ShipMessageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getModeErrorMsg()Lcom/powervision/gcs/model/ship/ShipWarning;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2473
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 2475
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v3, 0x6e

    if-ne v0, v3, :cond_2

    .line 2476
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2302(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 2477
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_AI_10:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->setActionText(I)V

    .line 2479
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->disableActions()V

    .line 2480
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lineOpenClose(Z)V

    .line 2482
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_AI_54:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setTitle(I)V

    goto/16 :goto_0

    .line 2483
    :cond_2
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v3, 0x78

    if-ne v0, v3, :cond_3

    .line 2484
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3202(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 2485
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_AI_10:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->setActionText(I)V

    .line 2488
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->disableViews()V

    .line 2489
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lineOpenClose(Z)V

    .line 2490
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_AI_55:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setTitle(I)V

    goto :goto_0

    .line 2491
    :cond_3
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v3, 0x82

    if-ne v0, v3, :cond_4

    .line 2492
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3502(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 2493
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lineOpenClose(Z)V

    .line 2494
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_158:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setTitle(I)V

    goto :goto_0

    .line 2495
    :cond_4
    invoke-static {}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3400()I

    move-result v0

    const/16 v3, 0x8c

    if-ne v0, v3, :cond_5

    .line 2496
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3602(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 2497
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->lineOpenClose(Z)V

    .line 2498
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_159:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setTitle(I)V

    .line 2501
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$7$1;->val$mode:I

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V

    return-void
.end method
