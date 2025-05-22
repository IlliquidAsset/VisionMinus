.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/ShipCustomGestureView$DoubleFlingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;
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

    .line 7982
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doubleFling()V
    .locals 5

    .line 7985
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->leftViewLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mFunctionClose:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 7988
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8402(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    .line 7990
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->leftViewLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7991
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->leftViewLl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7993
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 7994
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipCameraMenuView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->setVisibility(I)V

    .line 7995
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipCameraMenuView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v3, v2}, Landroid/view/animation/AnimationUtils;->makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7998
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 7999
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8000
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 8001
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutBottom:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/powervision/gcs/utils/AnimationUtil;->moveToViewBottom()Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8002
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutVs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8003
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutVs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 8004
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutVs:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/powervision/gcs/utils/AnimationUtil;->moveToViewBottom()Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8005
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutDis:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8006
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutDis:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 8007
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutDis:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/powervision/gcs/utils/AnimationUtil;->moveToViewBottom()Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8008
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 8020
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->leftViewLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8024
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->leftViewLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8025
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->leftViewLl:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8027
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 8028
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipCameraMenuView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->setVisibility(I)V

    .line 8029
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipCameraMenuView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8032
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 8033
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8034
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 8035
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutBottom:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/powervision/gcs/utils/AnimationUtil;->moveToViewLocation()Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8036
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutVs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8037
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutVs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 8038
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutVs:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/powervision/gcs/utils/AnimationUtil;->moveToViewLocation()Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8039
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutDis:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8040
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutDis:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 8041
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutDis:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/powervision/gcs/utils/AnimationUtil;->moveToViewLocation()Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8042
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8046
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 8047
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$62;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8402(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Z)Z

    return-void
.end method
