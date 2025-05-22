.class Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;
.super Ljava/lang/Object;
.source "PVW4HomeFragment.java"

# interfaces
.implements Lcom/powervision/base/utils/FrameAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->initAnimListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

.field final synthetic val$in_anim:Z


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;Z)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    iput-boolean p2, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;->val$in_anim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 6

    .line 118
    iget-boolean v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;->val$in_anim:Z

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    invoke-virtual {v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    invoke-static {v4}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;)Landroid/widget/ImageView;

    move-result-object v4

    sget v5, Lcom/powervision/home/R$array;->pvw4_disconnect_anim:I

    invoke-static {v3, v4, v5, v2, v1}, Lcom/powervision/base/utils/AnimUtils;->createAnimation(Landroid/content/Context;Landroid/widget/ImageView;IIZ)Lcom/powervision/base/utils/FrameAnimation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->access$002(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation;

    .line 120
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$mipmap;->w4_connect_anim_59:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    invoke-virtual {v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    invoke-static {v4}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;)Landroid/widget/ImageView;

    move-result-object v4

    sget v5, Lcom/powervision/home/R$array;->pvw4_connect_anim:I

    invoke-static {v3, v4, v5, v2, v1}, Lcom/powervision/base/utils/AnimUtils;->createAnimation(Landroid/content/Context;Landroid/widget/ImageView;IIZ)Lcom/powervision/base/utils/FrameAnimation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->access$002(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;Lcom/powervision/base/utils/FrameAnimation;)Lcom/powervision/base/utils/FrameAnimation;

    .line 123
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$mipmap;->w4_connecting_0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
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
