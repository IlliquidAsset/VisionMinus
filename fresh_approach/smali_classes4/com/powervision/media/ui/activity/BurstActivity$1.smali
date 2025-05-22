.class Lcom/powervision/media/ui/activity/BurstActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BurstActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/BurstActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/BurstActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/BurstActivity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity$1;->this$0:Lcom/powervision/media/ui/activity/BurstActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 166
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 168
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    .line 170
    iget-object p2, p0, Lcom/powervision/media/ui/activity/BurstActivity$1;->this$0:Lcom/powervision/media/ui/activity/BurstActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    invoke-static {p2, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->access$002(Lcom/powervision/media/ui/activity/BurstActivity;I)I

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
