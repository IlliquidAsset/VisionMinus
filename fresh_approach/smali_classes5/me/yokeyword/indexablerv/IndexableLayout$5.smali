.class Lme/yokeyword/indexablerv/IndexableLayout$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "IndexableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/indexablerv/IndexableLayout;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yokeyword/indexablerv/IndexableLayout;


# direct methods
.method constructor <init>(Lme/yokeyword/indexablerv/IndexableLayout;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$5;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 390
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 391
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$5;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$300(Lme/yokeyword/indexablerv/IndexableLayout;)V

    return-void
.end method
