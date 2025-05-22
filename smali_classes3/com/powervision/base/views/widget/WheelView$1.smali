.class Lcom/powervision/base/views/widget/WheelView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/widget/WheelView;->initRecyclerView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/widget/WheelView;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {p1}, Lcom/powervision/base/views/widget/WheelView;->access$000(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {p1}, Lcom/powervision/base/views/widget/WheelView;->access$100(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelDecoration;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {p1}, Lcom/powervision/base/views/widget/WheelView;->access$100(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelDecoration;

    move-result-object p1

    iget p1, p1, Lcom/powervision/base/views/widget/WheelDecoration;->centerItemPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {p1}, Lcom/powervision/base/views/widget/WheelView;->access$100(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelDecoration;

    move-result-object p2

    iget p2, p2, Lcom/powervision/base/views/widget/WheelDecoration;->centerItemPosition:I

    invoke-static {p1, p2}, Lcom/powervision/base/views/widget/WheelView;->access$202(Lcom/powervision/base/views/widget/WheelView;I)I

    .line 156
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {p1}, Lcom/powervision/base/views/widget/WheelView;->access$200(Lcom/powervision/base/views/widget/WheelView;)I

    move-result p1

    iget-object p2, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {p2}, Lcom/powervision/base/views/widget/WheelView;->access$300(Lcom/powervision/base/views/widget/WheelView;)I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 157
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {p1}, Lcom/powervision/base/views/widget/WheelView;->access$000(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {p2}, Lcom/powervision/base/views/widget/WheelView;->access$200(Lcom/powervision/base/views/widget/WheelView;)I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;->onItemSelected(Lcom/powervision/base/views/widget/WheelView;I)V

    .line 158
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView$1;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {p1}, Lcom/powervision/base/views/widget/WheelView;->access$200(Lcom/powervision/base/views/widget/WheelView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/base/views/widget/WheelView;->access$302(Lcom/powervision/base/views/widget/WheelView;I)I

    :cond_2
    :goto_0
    return-void
.end method
