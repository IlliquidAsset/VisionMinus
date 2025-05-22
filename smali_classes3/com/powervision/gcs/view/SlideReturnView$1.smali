.class Lcom/powervision/gcs/view/SlideReturnView$1;
.super Ljava/lang/Object;
.source "SlideReturnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SlideReturnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SlideReturnView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SlideReturnView;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView$1;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$1;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SlideReturnView;->access$000(Lcom/powervision/gcs/view/SlideReturnView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->access$002(Lcom/powervision/gcs/view/SlideReturnView;I)I

    .line 383
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$1;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SlideReturnView;->access$000(Lcom/powervision/gcs/view/SlideReturnView;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$1;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->access$002(Lcom/powervision/gcs/view/SlideReturnView;I)I

    .line 385
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$1;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->access$102(Lcom/powervision/gcs/view/SlideReturnView;I)I

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$1;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->access$102(Lcom/powervision/gcs/view/SlideReturnView;I)I

    .line 388
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$1;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SlideReturnView;->access$200(Lcom/powervision/gcs/view/SlideReturnView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$1;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/SlideReturnView;->invalidate()V

    return-void
.end method
