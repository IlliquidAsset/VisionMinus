.class Lcom/powervision/gcs/utils/StretchAnimation$1;
.super Landroid/os/Handler;
.source "StretchAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/StretchAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/StretchAnimation;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/StretchAnimation;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/powervision/gcs/utils/StretchAnimation$1;->this$0:Lcom/powervision/gcs/utils/StretchAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/powervision/gcs/utils/StretchAnimation$1;->this$0:Lcom/powervision/gcs/utils/StretchAnimation;

    invoke-static {v0}, Lcom/powervision/gcs/utils/StretchAnimation;->access$000(Lcom/powervision/gcs/utils/StretchAnimation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/powervision/gcs/utils/StretchAnimation$1;->this$0:Lcom/powervision/gcs/utils/StretchAnimation;

    invoke-static {v0}, Lcom/powervision/gcs/utils/StretchAnimation;->access$100(Lcom/powervision/gcs/utils/StretchAnimation;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/StretchAnimation$1;->this$0:Lcom/powervision/gcs/utils/StretchAnimation;

    invoke-static {v0}, Lcom/powervision/gcs/utils/StretchAnimation;->access$200(Lcom/powervision/gcs/utils/StretchAnimation;)Lcom/powervision/gcs/utils/StretchAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/powervision/gcs/utils/StretchAnimation$1;->this$0:Lcom/powervision/gcs/utils/StretchAnimation;

    invoke-static {v0}, Lcom/powervision/gcs/utils/StretchAnimation;->access$200(Lcom/powervision/gcs/utils/StretchAnimation;)Lcom/powervision/gcs/utils/StretchAnimation$AnimationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/utils/StretchAnimation$1;->this$0:Lcom/powervision/gcs/utils/StretchAnimation;

    invoke-static {v1}, Lcom/powervision/gcs/utils/StretchAnimation;->access$300(Lcom/powervision/gcs/utils/StretchAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/powervision/gcs/utils/StretchAnimation$AnimationListener;->animationEnd(Landroid/view/View;)V

    .line 94
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
