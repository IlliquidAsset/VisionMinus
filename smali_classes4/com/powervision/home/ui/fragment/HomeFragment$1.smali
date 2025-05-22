.class Lcom/powervision/home/ui/fragment/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/fragment/HomeFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/fragment/HomeFragment;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPageSelected$0$HomeFragment$1(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/HomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/HomeFragment;->access$100(Lcom/powervision/home/ui/fragment/HomeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/HomeFragment;

    invoke-static {v0, p1}, Lcom/powervision/home/ui/fragment/HomeFragment;->access$200(Lcom/powervision/home/ui/fragment/HomeFragment;I)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment$1;->this$0:Lcom/powervision/home/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/HomeFragment;->access$000(Lcom/powervision/home/ui/fragment/HomeFragment;)Lcom/powervision/base/views/NoScrollViewPager;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$1$-HHpbk-YEwvv52IjCzcDcR6pmLE;

    invoke-direct {v1, p0, p1}, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$1$-HHpbk-YEwvv52IjCzcDcR6pmLE;-><init>(Lcom/powervision/home/ui/fragment/HomeFragment$1;I)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
