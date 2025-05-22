.class Lcom/powervision/gcs/view/ship/ShipGuideView$1;
.super Ljava/lang/Object;
.source "ShipGuideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipGuideView;->setVideoRes(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipGuideView;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 163
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$000(Lcom/powervision/gcs/view/ship/ShipGuideView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$100(Lcom/powervision/gcs/view/ship/ShipGuideView;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$000(Lcom/powervision/gcs/view/ship/ShipGuideView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_1

    .line 165
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$102(Lcom/powervision/gcs/view/ship/ShipGuideView;I)I

    .line 166
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$000(Lcom/powervision/gcs/view/ship/ShipGuideView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$100(Lcom/powervision/gcs/view/ship/ShipGuideView;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/GuideBean;

    .line 167
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$200(Lcom/powervision/gcs/view/ship/ShipGuideView;Lcom/powervision/gcs/model/ship/GuideBean;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$108(Lcom/powervision/gcs/view/ship/ShipGuideView;)I

    .line 171
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$000(Lcom/powervision/gcs/view/ship/ShipGuideView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$100(Lcom/powervision/gcs/view/ship/ShipGuideView;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/GuideBean;

    .line 172
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/ship/ShipGuideView;->access$200(Lcom/powervision/gcs/view/ship/ShipGuideView;Lcom/powervision/gcs/model/ship/GuideBean;)V

    .line 174
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipGuideView;

    iget-object p1, p1, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->start()V

    return-void
.end method
