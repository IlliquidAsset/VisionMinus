.class Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;
.super Landroid/os/Handler;
.source "CircleProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;-><init>(Lcom/powervision/gcs/view/CircleProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

.field final synthetic val$this$0:Lcom/powervision/gcs/view/CircleProgress;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;Lcom/powervision/gcs/view/CircleProgress;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    iput-object p2, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->val$this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 294
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    iget-boolean p1, p1, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mBCartoom:Z

    if-nez p1, :cond_1

    return-void

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    iget v0, p1, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mCurFloatProcess:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p1, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mCurFloatProcess:F

    .line 302
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    iget-object p1, p1, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    iget v0, v0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mCurFloatProcess:F

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/CircleProgress;->setMainProgress(I)V

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 307
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    invoke-static {p1, v0, v1}, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->access$002(Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;J)J

    .line 309
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    iget p1, p1, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mCurFloatProcess:F

    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    iget-object v0, v0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->this$0:Lcom/powervision/gcs/view/CircleProgress;

    invoke-static {v0}, Lcom/powervision/gcs/view/CircleProgress;->access$100(Lcom/powervision/gcs/view/CircleProgress;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$1;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->stopCartoom()V

    :cond_2
    :goto_0
    return-void
.end method
