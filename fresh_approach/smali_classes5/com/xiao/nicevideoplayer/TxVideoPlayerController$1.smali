.class Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;
.super Landroid/content/BroadcastReceiver;
.source "TxVideoPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiao/nicevideoplayer/TxVideoPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;


# direct methods
.method constructor <init>(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "status"

    const/4 v0, 0x1

    .line 347
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 351
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->access$000(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/xiao/nicevideoplayer/R$drawable;->battery_charging:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 354
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->access$000(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/xiao/nicevideoplayer/R$drawable;->battery_full:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-string p1, "level"

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "scale"

    .line 357
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/16 p2, 0xa

    if-gt p1, p2, :cond_2

    .line 360
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->access$000(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/xiao/nicevideoplayer/R$drawable;->battery_10:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x14

    if-gt p1, p2, :cond_3

    .line 362
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->access$000(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/xiao/nicevideoplayer/R$drawable;->battery_20:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x32

    if-gt p1, p2, :cond_4

    .line 364
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->access$000(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/xiao/nicevideoplayer/R$drawable;->battery_50:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const/16 p2, 0x50

    if-gt p1, p2, :cond_5

    .line 366
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->access$000(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/xiao/nicevideoplayer/R$drawable;->battery_80:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    const/16 p2, 0x64

    if-gt p1, p2, :cond_6

    .line 368
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/TxVideoPlayerController$1;->this$0:Lcom/xiao/nicevideoplayer/TxVideoPlayerController;

    invoke-static {p1}, Lcom/xiao/nicevideoplayer/TxVideoPlayerController;->access$000(Lcom/xiao/nicevideoplayer/TxVideoPlayerController;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/xiao/nicevideoplayer/R$drawable;->battery_100:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_0
    return-void
.end method
