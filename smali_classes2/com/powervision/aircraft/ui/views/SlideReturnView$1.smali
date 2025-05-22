.class Lcom/powervision/aircraft/ui/views/SlideReturnView$1;
.super Ljava/lang/Object;
.source "SlideReturnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/SlideReturnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/SlideReturnView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/SlideReturnView;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;->this$0:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;->this$0:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->access$000(Lcom/powervision/aircraft/ui/views/SlideReturnView;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->access$002(Lcom/powervision/aircraft/ui/views/SlideReturnView;I)I

    .line 483
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;->this$0:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->access$000(Lcom/powervision/aircraft/ui/views/SlideReturnView;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;->this$0:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->access$002(Lcom/powervision/aircraft/ui/views/SlideReturnView;I)I

    .line 485
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;->this$0:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->access$102(Lcom/powervision/aircraft/ui/views/SlideReturnView;I)I

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;->this$0:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->access$102(Lcom/powervision/aircraft/ui/views/SlideReturnView;I)I

    .line 489
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;->this$0:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->access$200(Lcom/powervision/aircraft/ui/views/SlideReturnView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SlideReturnView$1;->this$0:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->invalidate()V

    return-void
.end method
