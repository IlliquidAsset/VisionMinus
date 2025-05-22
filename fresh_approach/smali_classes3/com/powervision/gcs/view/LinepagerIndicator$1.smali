.class Lcom/powervision/gcs/view/LinepagerIndicator$1;
.super Ljava/lang/Object;
.source "LinepagerIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/LinepagerIndicator;->addTab(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/LinepagerIndicator;I)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    iput p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 177
    iget-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {p1}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$100(Lcom/powervision/gcs/view/LinepagerIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    .line 178
    iget v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->val$position:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {p1}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$200(Lcom/powervision/gcs/view/LinepagerIndicator;)Lcom/powervision/gcs/view/LinepagerIndicator$OnTabSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {p1}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$200(Lcom/powervision/gcs/view/LinepagerIndicator;)Lcom/powervision/gcs/view/LinepagerIndicator$OnTabSelectedListener;

    move-result-object p1

    iget v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/LinepagerIndicator$OnTabSelectedListener;->onTabSelected(I)V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {p1}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$100(Lcom/powervision/gcs/view/LinepagerIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->val$position:I

    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator$1;->this$0:Lcom/powervision/gcs/view/LinepagerIndicator;

    invoke-static {v1}, Lcom/powervision/gcs/view/LinepagerIndicator;->access$300(Lcom/powervision/gcs/view/LinepagerIndicator;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
