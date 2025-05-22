.class Lcom/powervision/gcs/view/FishImageView$ClockThread;
.super Ljava/lang/Thread;
.source "FishImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/FishImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockThread"
.end annotation


# instance fields
.field public listener:Lcom/powervision/gcs/view/FishImageView$ClockListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 692
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/FishImageView$1;)V
    .locals 0

    .line 692
    invoke-direct {p0}, Lcom/powervision/gcs/view/FishImageView$ClockThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 701
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/FishImageView$ClockThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const-wide/16 v0, 0x3e8

    .line 707
    invoke-static {v0, v1}, Lcom/powervision/gcs/view/FishImageView$ClockThread;->sleep(J)V

    .line 708
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$ClockThread;->listener:Lcom/powervision/gcs/view/FishImageView$ClockListener;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$ClockThread;->listener:Lcom/powervision/gcs/view/FishImageView$ClockListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/FishImageView$ClockListener;->updata()V

    goto :goto_0

    .line 704
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 715
    iget-object v0, p0, Lcom/powervision/gcs/view/FishImageView$ClockThread;->listener:Lcom/powervision/gcs/view/FishImageView$ClockListener;

    if-eqz v0, :cond_2

    .line 716
    invoke-interface {v0}, Lcom/powervision/gcs/view/FishImageView$ClockListener;->finish()V

    :cond_2
    return-void
.end method

.method public setListener(Lcom/powervision/gcs/view/FishImageView$ClockListener;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView$ClockThread;->listener:Lcom/powervision/gcs/view/FishImageView$ClockListener;

    return-void
.end method
