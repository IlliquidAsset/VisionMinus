.class Lcom/powervision/base/views/widget/WheelView$2;
.super Lcom/powervision/base/views/widget/WheelItemClickListener;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/widget/WheelView;->setOnItemClickListener(Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/widget/WheelView;Landroid/content/Context;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelView$2;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-direct {p0, p2}, Lcom/powervision/base/views/widget/WheelItemClickListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method onItemClick(I)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView$2;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {v0}, Lcom/powervision/base/views/widget/WheelView;->access$500(Lcom/powervision/base/views/widget/WheelView;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 305
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView$2;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {v0}, Lcom/powervision/base/views/widget/WheelView;->access$600(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView$2;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-virtual {v0}, Lcom/powervision/base/views/widget/WheelView;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView$2;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {v0}, Lcom/powervision/base/views/widget/WheelView;->access$600(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/base/views/widget/WheelView$2;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-interface {v0, v1, p1}, Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;->onItemClick(Lcom/powervision/base/views/widget/WheelView;I)V

    :cond_0
    return-void
.end method
