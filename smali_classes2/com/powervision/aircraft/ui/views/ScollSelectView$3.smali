.class Lcom/powervision/aircraft/ui/views/ScollSelectView$3;
.super Ljava/lang/Object;
.source "ScollSelectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/ScollSelectView;->setCurrentItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iput p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$000(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$000(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 168
    iget v3, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->val$i:I

    sub-int/2addr v3, v0

    if-eqz v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$600(Lcom/powervision/aircraft/ui/views/ScollSelectView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-static {v4}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$200(Lcom/powervision/aircraft/ui/views/ScollSelectView;)I

    move-result v4

    mul-int v3, v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v3, v1

    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 171
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->val$i:I

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$302(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)I

    .line 172
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$3;->val$i:I

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->access$502(Lcom/powervision/aircraft/ui/views/ScollSelectView;I)I

    :cond_0
    return-void
.end method
