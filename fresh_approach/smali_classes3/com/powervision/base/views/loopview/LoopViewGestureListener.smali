.class final Lcom/powervision/base/views/loopview/LoopViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


# instance fields
.field final loopView:Lcom/powervision/base/views/loopview/LoopView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/loopview/LoopView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopViewGestureListener;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/powervision/base/views/loopview/LoopViewGestureListener;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {p1, p4}, Lcom/powervision/base/views/loopview/LoopView;->scrollBy(F)V

    const/4 p1, 0x1

    return p1
.end method
