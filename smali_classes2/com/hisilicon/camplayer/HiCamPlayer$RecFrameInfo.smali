.class public Lcom/hisilicon/camplayer/HiCamPlayer$RecFrameInfo;
.super Ljava/lang/Object;
.source "HiCamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/camplayer/HiCamPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecFrameInfo"
.end annotation


# instance fields
.field frameSize:I

.field payload:I

.field pts:J

.field final synthetic this$0:Lcom/hisilicon/camplayer/HiCamPlayer;


# direct methods
.method public constructor <init>(Lcom/hisilicon/camplayer/HiCamPlayer;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer$RecFrameInfo;->this$0:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
