.class Lme/yokeyword/indexablerv/IndexableLayout$7;
.super Ljava/lang/Object;
.source "IndexableLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yokeyword/indexablerv/IndexableLayout;->initStickyView(Lme/yokeyword/indexablerv/IndexableAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yokeyword/indexablerv/IndexableLayout;

.field final synthetic val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;


# direct methods
.method constructor <init>(Lme/yokeyword/indexablerv/IndexableLayout;Lme/yokeyword/indexablerv/IndexableAdapter;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$7;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    iput-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout$7;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 522
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$7;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemTitleClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout$7;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->access$200(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexBar;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexBar;->getFirstRecyclerViewPositionBySelection()I

    move-result v0

    .line 524
    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$7;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/RealAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 525
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    if-ltz v0, :cond_0

    .line 526
    iget-object v2, p0, Lme/yokeyword/indexablerv/IndexableLayout$7;->val$adapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v2}, Lme/yokeyword/indexablerv/IndexableAdapter;->getOnItemTitleClickListener()Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;

    move-result-object v2

    .line 527
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-virtual {v1}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndexTitle()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-interface {v2, p1, v0, v1}, Lme/yokeyword/indexablerv/IndexableAdapter$OnItemTitleClickListener;->onItemClick(Landroid/view/View;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
