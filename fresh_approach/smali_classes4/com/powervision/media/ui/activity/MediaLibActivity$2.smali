.class Lcom/powervision/media/ui/activity/MediaLibActivity$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MediaLibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/MediaLibActivity;->workHorVerSpanSize(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isLoadMoreView(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    .line 463
    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isFootView(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    .line 464
    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isStateView(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    .line 465
    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isRefreshHeader(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    .line 466
    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$200(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/ByRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 472
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$300(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_1
    return v0

    .line 467
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$2;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$300(Lcom/powervision/media/ui/activity/MediaLibActivity;)Lme/jingbin/library/stickyview/StickyGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
