.class Lcom/xiao/nicevideoplayer/VideoOnlyController1$2;
.super Landroid/os/CountDownTimer;
.source "VideoOnlyController1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiao/nicevideoplayer/VideoOnlyController1;->startDismissTopBottomTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiao/nicevideoplayer/VideoOnlyController1;


# direct methods
.method constructor <init>(Lcom/xiao/nicevideoplayer/VideoOnlyController1;JJ)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1$2;->this$0:Lcom/xiao/nicevideoplayer/VideoOnlyController1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1$2;->this$0:Lcom/xiao/nicevideoplayer/VideoOnlyController1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->access$000(Lcom/xiao/nicevideoplayer/VideoOnlyController1;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
