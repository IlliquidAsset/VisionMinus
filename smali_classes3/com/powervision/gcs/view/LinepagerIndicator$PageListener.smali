.class Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;
.super Ljava/lang/Object;
.source "LinepagerIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/LinepagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/LinepagerIndicator;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/view/LinepagerIndicator;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/LinepagerIndicator;Lcom/powervision/gcs/view/LinepagerIndicator$1;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;-><init>(Lcom/powervision/gcs/view/LinepagerIndicator;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {v0}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$100(Lcom/powervision/gcs/view/LinepagerIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$800(Lcom/powervision/gcs/view/LinepagerIndicator;II)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    iget-object v0, v0, Lcom/powervision/gcs/view/LinepagerIndicator;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    iget-object v0, v0, Lcom/powervision/gcs/view/LinepagerIndicator;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$502(Lcom/powervision/gcs/view/LinepagerIndicator;I)I

    .line 323
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {v0, p2}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$602(Lcom/powervision/gcs/view/LinepagerIndicator;F)F

    .line 325
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {v0}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$700(Lcom/powervision/gcs/view/LinepagerIndicator;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$800(Lcom/powervision/gcs/view/LinepagerIndicator;II)V

    .line 327
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/LinepagerIndicator;->invalidate()V

    .line 329
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    iget-object v0, v0, Lcom/powervision/gcs/view/LinepagerIndicator;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    iget-object v0, v0, Lcom/powervision/gcs/view/LinepagerIndicator;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$900(Lcom/powervision/gcs/view/LinepagerIndicator;I)V

    .line 349
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    iget-object v0, v0, Lcom/powervision/gcs/view/LinepagerIndicator;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    iget-object v0, v0, Lcom/powervision/gcs/view/LinepagerIndicator;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
