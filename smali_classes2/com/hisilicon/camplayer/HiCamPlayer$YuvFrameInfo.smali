.class public Lcom/hisilicon/camplayer/HiCamPlayer$YuvFrameInfo;
.super Ljava/lang/Object;
.source "HiCamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/camplayer/HiCamPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YuvFrameInfo"
.end annotation


# instance fields
.field height:I

.field pts:J

.field final synthetic this$0:Lcom/hisilicon/camplayer/HiCamPlayer;

.field uoffset:I

.field upitch:I

.field voffset:I

.field vpitch:I

.field width:I

.field ypitch:I


# direct methods
.method public constructor <init>(Lcom/hisilicon/camplayer/HiCamPlayer;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/hisilicon/camplayer/HiCamPlayer$YuvFrameInfo;->this$0:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
