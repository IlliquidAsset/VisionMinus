.class Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;
.super Ljava/lang/Object;
.source "AP03HomeFragment.java"

# interfaces
.implements Lcom/powervision/base/utils/FrameAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/fragment/AP03HomeFragment;->initAnimListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/fragment/AP03HomeFragment;

.field final synthetic val$isConnectMode:Z

.field final synthetic val$isConnectState:Z


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/fragment/AP03HomeFragment;ZZ)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    iput-boolean p2, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->val$isConnectState:Z

    iput-boolean p3, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->val$isConnectMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 6

    .line 598
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    invoke-virtual {v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 601
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->val$isConnectState:Z

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-eqz v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    invoke-virtual {v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    invoke-static {v4}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)Landroid/widget/ImageView;

    move-result-object v4

    iget-boolean v5, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->val$isConnectMode:Z

    if-eqz v5, :cond_1

    sget v5, Lcom/powervision/home/R$array;->ap03_usb_connect_anim:I

    goto :goto_0

    :cond_1
    sget v5, Lcom/powervision/home/R$array;->ap03_dv_connect_anim:I

    :goto_0
    invoke-static {v3, v4, v5, v2, v1}, Lcom/powervision/base/utils/AnimUtils;->createAnimation(Landroid/content/Context;Landroid/widget/ImageView;IIZ)Lcom/powervision/base/utils/FrameAnimation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->access$002(Lcom/powervision/home/ui/fragment/AP03HomeFragment;Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation;

    .line 605
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->val$isConnectMode:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/powervision/home/R$mipmap;->home_fly_mode_animation30:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/powervision/home/R$mipmap;->home_dv_mode_animation30:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    invoke-virtual {v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    invoke-static {v4}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)Landroid/widget/ImageView;

    move-result-object v4

    iget-boolean v5, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->val$isConnectMode:Z

    if-eqz v5, :cond_4

    sget v5, Lcom/powervision/home/R$array;->ap03_usb_disconnect_anim:I

    goto :goto_2

    :cond_4
    sget v5, Lcom/powervision/home/R$array;->ap03_dv_disconnect_anim:I

    :goto_2
    invoke-static {v3, v4, v5, v2, v1}, Lcom/powervision/base/utils/AnimUtils;->createAnimation(Landroid/content/Context;Landroid/widget/ImageView;IIZ)Lcom/powervision/base/utils/FrameAnimation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->access$002(Lcom/powervision/home/ui/fragment/AP03HomeFragment;Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation;

    .line 610
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/AP03HomeFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/AP03HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/AP03HomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/powervision/home/ui/fragment/AP03HomeFragment$1;->val$isConnectMode:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/powervision/home/R$mipmap;->home_fly_mode_animation01:I

    goto :goto_3

    :cond_5
    sget v1, Lcom/powervision/home/R$mipmap;->home_dv_mode_animation01:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    return-void
.end method

.method public onAnimationRepeat()V
    .locals 0

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method
