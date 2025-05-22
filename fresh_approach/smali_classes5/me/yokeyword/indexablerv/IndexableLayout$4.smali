.class Lme/yokeyword/indexablerv/IndexableLayout$4;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "IndexableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/indexablerv/IndexableLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yokeyword/indexablerv/IndexableLayout;

.field final synthetic val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lme/yokeyword/indexablerv/IndexableLayout;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$4;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    iput-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout$4;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 373
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$4;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/RealAdapter;->getItemViewType(I)I

    move-result v0

    const v1, 0x7ffffffe

    if-ne v0, v1, :cond_0

    .line 374
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$4;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$4;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/RealAdapter;->getItemViewType(I)I

    move-result p1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
