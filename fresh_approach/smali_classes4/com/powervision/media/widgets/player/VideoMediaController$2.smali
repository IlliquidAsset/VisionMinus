.class Lcom/powervision/media/widgets/player/VideoMediaController$2;
.super Ljava/lang/Object;
.source "VideoMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/player/VideoMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/player/VideoMediaController;


# direct methods
.method constructor <init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$2;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$2;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-static {p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->access$100(Lcom/powervision/media/widgets/player/VideoMediaController;)Lcom/powervision/media/widgets/player/VideoPlayer;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/media/widgets/player/VideoPlayer;->hasPlay:Z

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$2;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-static {p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->access$200(Lcom/powervision/media/widgets/player/VideoMediaController;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
