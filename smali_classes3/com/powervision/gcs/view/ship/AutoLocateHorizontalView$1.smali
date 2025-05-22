.class Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;
.super Ljava/lang/Object;
.source "AutoLocateHorizontalView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$000(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$100(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)I

    move-result v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$200(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$200(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$102(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;I)I

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$300(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$400(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$400(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$100(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$OnSelectedPositionChangedListener;->selectedPositionChanged(I)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$600(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$100(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$500(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->getItemWidth()I

    move-result v2

    mul-int v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$1;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0, v2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$002(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;Z)Z

    :cond_2
    return-void
.end method
