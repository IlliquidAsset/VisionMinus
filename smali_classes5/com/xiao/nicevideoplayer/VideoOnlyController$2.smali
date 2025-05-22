.class Lcom/xiao/nicevideoplayer/VideoOnlyController$2;
.super Landroid/os/CountDownTimer;
.source "VideoOnlyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiao/nicevideoplayer/VideoOnlyController;->startDismissTopBottomTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiao/nicevideoplayer/VideoOnlyController;


# direct methods
.method constructor <init>(Lcom/xiao/nicevideoplayer/VideoOnlyController;JJ)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController$2;->this$0:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController$2;->this$0:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->access$000(Lcom/xiao/nicevideoplayer/VideoOnlyController;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
