.class Lcom/powervision/gcs/view/FishImageView$2;
.super Ljava/lang/Object;
.source "FishImageView.java"

# interfaces
.implements Lcom/powervision/gcs/view/FishImageView$ClockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/FishImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/FishImageView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/FishImageView;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    iget-object v0, v0, Lcom/powervision/gcs/view/FishImageView;->clockThread:Lcom/powervision/gcs/view/FishImageView$ClockThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/FishImageView$ClockThread;->setListener(Lcom/powervision/gcs/view/FishImageView$ClockListener;)V

    .line 654
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    iput-object v1, v0, Lcom/powervision/gcs/view/FishImageView;->clockThread:Lcom/powervision/gcs/view/FishImageView$ClockThread;

    .line 655
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/FishImageView;->access$202(Lcom/powervision/gcs/view/FishImageView;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 656
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/view/FishImageView;->access$102(Lcom/powervision/gcs/view/FishImageView;J)J

    .line 657
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/view/FishImageView;->access$002(Lcom/powervision/gcs/view/FishImageView;J)J

    return-void
.end method

.method public updata()V
    .locals 5

    .line 644
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    invoke-static {v0}, Lcom/powervision/gcs/view/FishImageView;->access$000(Lcom/powervision/gcs/view/FishImageView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 645
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/view/FishImageView;->access$002(Lcom/powervision/gcs/view/FishImageView;J)J

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/view/FishImageView;->access$102(Lcom/powervision/gcs/view/FishImageView;J)J

    .line 648
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$2;->this$0:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    return-void
.end method
