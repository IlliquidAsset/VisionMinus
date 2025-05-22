.class Lcom/lewis/edit/ui/activity/AVEditActivity$3;
.super Ljava/lang/Object;
.source "AVEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/ui/activity/AVEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V
    .locals 0

    .line 1926
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$3;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1929
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$3;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$200(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$3;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$900(Lcom/lewis/edit/ui/activity/AVEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$3;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$200(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 1931
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$3;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$1000(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1932
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1933
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$3;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$1000(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1937
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    .line 1938
    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1939
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$3;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v2}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$1000(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
