.class Lcom/powervision/gcs/view/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/HorizontalListView;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/powervision/gcs/view/HorizontalListView$1;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/powervision/gcs/view/HorizontalListView$1;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/view/HorizontalListView$1;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/powervision/gcs/view/HorizontalListView;->access$002(Lcom/powervision/gcs/view/HorizontalListView;Z)Z

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/view/HorizontalListView$1;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/HorizontalListView;->invalidate()V

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/view/HorizontalListView$1;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/HorizontalListView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v1

    .line 75
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onInvalidated()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/view/HorizontalListView$1;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    invoke-static {v0}, Lcom/powervision/gcs/view/HorizontalListView;->access$100(Lcom/powervision/gcs/view/HorizontalListView;)V

    .line 83
    iget-object v0, p0, Lcom/powervision/gcs/view/HorizontalListView$1;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/HorizontalListView;->invalidate()V

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/view/HorizontalListView$1;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/HorizontalListView;->requestLayout()V

    return-void
.end method
