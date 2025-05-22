.class Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->access$002(Lcom/yalantis/ucrop/view/widget/HorizontalListView;Z)Z

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->invalidate()V

    .line 73
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v1

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onInvalidated()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->access$100(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)V

    .line 79
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->invalidate()V

    .line 80
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$1;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->requestLayout()V

    return-void
.end method
