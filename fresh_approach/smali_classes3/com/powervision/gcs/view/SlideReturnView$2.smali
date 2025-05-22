.class Lcom/powervision/gcs/view/SlideReturnView$2;
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

    .line 397
    iput-object p1, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: mSlideDistance === "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-static {v1}, Lcom/powervision/gcs/view/SlideReturnView;->access$000(Lcom/powervision/gcs/view/SlideReturnView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlideReturnView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SlideReturnView;->access$000(Lcom/powervision/gcs/view/SlideReturnView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    invoke-static {v0, v2}, Lcom/powervision/gcs/view/SlideReturnView;->access$002(Lcom/powervision/gcs/view/SlideReturnView;I)I

    .line 402
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SlideReturnView;->access$000(Lcom/powervision/gcs/view/SlideReturnView;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->access$002(Lcom/powervision/gcs/view/SlideReturnView;I)I

    .line 404
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->access$102(Lcom/powervision/gcs/view/SlideReturnView;I)I

    goto :goto_0

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: mSlideDistance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-static {v2}, Lcom/powervision/gcs/view/SlideReturnView;->access$000(Lcom/powervision/gcs/view/SlideReturnView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->access$102(Lcom/powervision/gcs/view/SlideReturnView;I)I

    .line 408
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SlideReturnView;->access$200(Lcom/powervision/gcs/view/SlideReturnView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideReturnView$2;->this$0:Lcom/powervision/gcs/view/SlideReturnView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/SlideReturnView;->invalidate()V

    return-void
.end method
