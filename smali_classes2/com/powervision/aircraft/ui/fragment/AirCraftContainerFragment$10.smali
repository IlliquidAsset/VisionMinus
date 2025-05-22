.class Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$10;
.super Ljava/lang/Object;
.source "AirCraftContainerFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$10;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$10;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1600(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$10;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1700(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 420
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$10;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1700(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$10;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1600(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
