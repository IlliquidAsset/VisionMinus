.class Lme/yokeyword/indexablerv/IndexableLayout$6;
.super Ljava/lang/Object;
.source "IndexableLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 395
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 399
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$200(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexBar;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexBar;->getPositionForPointY(F)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    return v0

    .line 402
    :cond_0
    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$400(Lme/yokeyword/indexablerv/IndexableLayout;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_1

    return v0

    .line 403
    :cond_1
    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {v1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$400(Lme/yokeyword/indexablerv/IndexableLayout;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 405
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p1, 0x3

    if-eq v2, p1, :cond_2

    goto :goto_0

    .line 422
    :cond_2
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$600(Lme/yokeyword/indexablerv/IndexableLayout;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$600(Lme/yokeyword/indexablerv/IndexableLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    :cond_3
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$700(Lme/yokeyword/indexablerv/IndexableLayout;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$700(Lme/yokeyword/indexablerv/IndexableLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 408
    :cond_4
    iget-object v2, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {v2, p2, p1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$500(Lme/yokeyword/indexablerv/IndexableLayout;FI)V

    .line 410
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p2}, Lme/yokeyword/indexablerv/IndexableLayout;->access$200(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexBar;

    move-result-object p2

    invoke-virtual {p2}, Lme/yokeyword/indexablerv/IndexBar;->getSelectionPosition()I

    move-result p2

    if-eq p1, p2, :cond_6

    .line 411
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p2}, Lme/yokeyword/indexablerv/IndexableLayout;->access$200(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lme/yokeyword/indexablerv/IndexBar;->setSelectionPosition(I)V

    const/4 p2, 0x0

    if-nez p1, :cond_5

    .line 414
    invoke-virtual {v1, p2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 416
    :cond_5
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout$6;->this$0:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-static {p1}, Lme/yokeyword/indexablerv/IndexableLayout;->access$200(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexBar;

    move-result-object p1

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexBar;->getFirstRecyclerViewPositionBySelection()I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_6
    :goto_0
    return v0
.end method
