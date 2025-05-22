.class Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;
.super Ljava/util/TimerTask;
.source "CircleProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine$MyTimerTask;->this$1:Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;

    iget-object v0, v0, Lcom/powervision/gcs/view/CircleProgress$CartoomEngine;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
