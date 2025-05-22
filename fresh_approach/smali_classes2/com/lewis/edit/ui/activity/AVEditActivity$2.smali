.class Lcom/lewis/edit/ui/activity/AVEditActivity$2;
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

    .line 1884
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1888
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$200(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$300(Lcom/lewis/edit/ui/activity/AVEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$400(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/lewis/edit/widgets/GLVideoRenderer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    .line 1889
    invoke-static {v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$400(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/lewis/edit/widgets/GLVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewis/edit/widgets/GLVideoRenderer;->getMediaPlayState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$500(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/lewis/edit/model/entries/VideoEditInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewis/edit/model/entries/VideoEditInfo;->getCurrentPlayVideoPosition()I

    move-result v0

    .line 1893
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$300(Lcom/lewis/edit/ui/activity/AVEditActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$400(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/lewis/edit/widgets/GLVideoRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewis/edit/widgets/GLVideoRenderer;->getPlayCurrentPosition()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$200(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 1895
    :goto_0
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v2}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$600(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v2

    check-cast v2, Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget-object v3, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v3}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$000(Lcom/lewis/edit/ui/activity/AVEditActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->getVideoAllTime(Ljava/util/List;IIZ)V

    .line 1899
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 1900
    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1901
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$2;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v2}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$700(Lcom/lewis/edit/ui/activity/AVEditActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
