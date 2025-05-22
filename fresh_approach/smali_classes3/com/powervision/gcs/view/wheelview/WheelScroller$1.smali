.class Lcom/powervision/gcs/view/wheelview/WheelScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/wheelview/WheelScroller;-><init>(Landroid/content/Context;Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/wheelview/WheelScroller;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/wheelview/WheelScroller;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller$1;->this$0:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 130
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller$1;->this$0:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->access$102(Lcom/powervision/gcs/view/wheelview/WheelScroller;I)I

    .line 131
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller$1;->this$0:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-static {p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->access$100(Lcom/powervision/gcs/view/wheelview/WheelScroller;)I

    move-result v0

    float-to-int p3, p3

    float-to-int v1, p4

    invoke-virtual {p1, v0, p3, v1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scrollerFling(III)V

    .line 132
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller$1;->this$0:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->access$200(Lcom/powervision/gcs/view/wheelview/WheelScroller;I)V

    .line 133
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller$1;->this$0:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-static {p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->access$000(Lcom/powervision/gcs/view/wheelview/WheelScroller;)Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    cmpg-float p3, p4, p3

    if-gez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    invoke-interface {p1, p3}, Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;->onFling(I)V

    return p2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller$1;->this$0:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-static {p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->access$000(Lcom/powervision/gcs/view/wheelview/WheelScroller;)Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;->onFling(I)V

    const/4 p1, 0x1

    return p1
.end method
