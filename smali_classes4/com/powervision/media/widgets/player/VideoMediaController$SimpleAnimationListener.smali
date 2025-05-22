.class Lcom/powervision/media/widgets/player/VideoMediaController$SimpleAnimationListener;
.super Ljava/lang/Object;
.source "VideoMediaController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/player/VideoMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/player/VideoMediaController;


# direct methods
.method private constructor <init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController$SimpleAnimationListener;->this$0:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/media/widgets/player/VideoMediaController;Lcom/powervision/media/widgets/player/VideoMediaController$1;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/player/VideoMediaController$SimpleAnimationListener;-><init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
