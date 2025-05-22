.class final Lcom/powervision/base/views/loopview/MessageHandler;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# static fields
.field public static final WHAT_INVALIDATE_LOOP_VIEW:I = 0x3e8

.field public static final WHAT_ITEM_SELECTED:I = 0xbb8

.field public static final WHAT_SMOOTH_SCROLL:I = 0x7d0

.field public static final WHAT_SMOOTH_SCROLL_INERTIA:I = 0x7d1


# instance fields
.field final loopview:Lcom/powervision/base/views/loopview/LoopView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/loopview/LoopView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/powervision/base/views/loopview/MessageHandler;->loopview:Lcom/powervision/base/views/loopview/LoopView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 27
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/views/loopview/MessageHandler;->loopview:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {p1}, Lcom/powervision/base/views/loopview/LoopView;->onItemSelected()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x7d1

    .line 33
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/loopview/MessageHandler;->removeMessages(I)V

    .line 34
    iget-object p1, p0, Lcom/powervision/base/views/loopview/MessageHandler;->loopview:Lcom/powervision/base/views/loopview/LoopView;

    sget-object v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;->FLING:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/loopview/LoopView;->smoothScroll(Lcom/powervision/base/views/loopview/LoopView$ACTION;)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/powervision/base/views/loopview/MessageHandler;->loopview:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {p1}, Lcom/powervision/base/views/loopview/LoopView;->invalidate()V

    :goto_0
    return-void
.end method
