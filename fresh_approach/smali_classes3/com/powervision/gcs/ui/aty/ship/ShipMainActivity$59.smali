.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/SlideReturnView$SlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->setSlideReturnListener()V
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

    .line 7652
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelReturnSlide()V
    .locals 2

    .line 7655
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideBackBoatView:Lcom/powervision/gcs/view/SlideReturnView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    .line 7656
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7659
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public returnSlide()V
    .locals 5

    .line 7665
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideBackBoatView:Lcom/powervision/gcs/view/SlideReturnView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    .line 7666
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 7667
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    sget v4, Lcom/powervision/gcs/R$string;->PVW4_Msg_73:I

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    return-void

    .line 7671
    :cond_0
    invoke-static {v2}, Lcom/powervision/natives/PVSDK_W4_API;->setSailMode(I)I

    .line 7672
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$59;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideBackBoatView:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    return-void
.end method
