.class Lcom/appunite/player/PVCamPlayerHelper$1$1;
.super Ljava/lang/Object;
.source "PVCamPlayerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/player/PVCamPlayerHelper$1;->work(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appunite/player/PVCamPlayerHelper$1;


# direct methods
.method constructor <init>(Lcom/appunite/player/PVCamPlayerHelper$1;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1$1;->this$1:Lcom/appunite/player/PVCamPlayerHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$1$1;->this$1:Lcom/appunite/player/PVCamPlayerHelper$1;

    iget-object v0, v0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-virtual {v0}, Lcom/appunite/player/PVCamPlayerHelper;->updateSurfaceView()V

    const-string v0, "lzqrtsp"

    const-string v1, "changeASR over"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
