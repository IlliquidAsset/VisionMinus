.class Lcom/xiao/nicevideoplayer/VideoOnlyController$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoOnlyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiao/nicevideoplayer/VideoOnlyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiao/nicevideoplayer/VideoOnlyController;


# direct methods
.method constructor <init>(Lcom/xiao/nicevideoplayer/VideoOnlyController;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController$1;->this$0:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "status"

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "level"

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "scale"

    .line 327
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

    goto :goto_0

    :cond_2
    const/16 p2, 0x14

    if-gt p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p2, 0x32

    if-gt p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p2, 0x50

    :goto_0
    return-void
.end method
