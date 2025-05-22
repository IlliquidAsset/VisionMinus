.class final Lcom/powervision/base/views/loopview/OnItemSelectedRunnable;
.super Ljava/lang/Object;
.source "OnItemSelectedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final loopView:Lcom/powervision/base/views/loopview/LoopView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/loopview/LoopView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/powervision/base/views/loopview/OnItemSelectedRunnable;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/powervision/base/views/loopview/OnItemSelectedRunnable;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget-object v0, v0, Lcom/powervision/base/views/loopview/LoopView;->onItemSelectedListener:Lcom/powervision/base/views/loopview/OnItemSelectedListener;

    iget-object v1, p0, Lcom/powervision/base/views/loopview/OnItemSelectedRunnable;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {v1}, Lcom/powervision/base/views/loopview/LoopView;->getSelectedItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/powervision/base/views/loopview/OnItemSelectedListener;->onItemSelected(I)V

    return-void
.end method
