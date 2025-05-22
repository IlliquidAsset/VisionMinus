.class Lcom/appunite/ffmpeg/FFmpegPlayer$RenderedFrame;
.super Ljava/lang/Object;
.source "FFmpegPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/ffmpeg/FFmpegPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RenderedFrame"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public height:I

.field public width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
