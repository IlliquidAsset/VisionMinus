.class Lcom/appunite/player/PVCamPlayerHelper$6$1;
.super Ljava/lang/Object;
.source "PVCamPlayerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/player/PVCamPlayerHelper$6;->onError(Lcom/hisilicon/camplayer/HiCamPlayer;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appunite/player/PVCamPlayerHelper$6;


# direct methods
.method constructor <init>(Lcom/appunite/player/PVCamPlayerHelper$6;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$6$1;->this$1:Lcom/appunite/player/PVCamPlayerHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$6$1;->this$1:Lcom/appunite/player/PVCamPlayerHelper$6;

    iget-object v0, v0, Lcom/appunite/player/PVCamPlayerHelper$6;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    iget-boolean v0, v0, Lcom/appunite/player/PVCamPlayerHelper;->running:Z

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$6$1;->this$1:Lcom/appunite/player/PVCamPlayerHelper$6;

    iget-object v0, v0, Lcom/appunite/player/PVCamPlayerHelper$6;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/appunite/player/PVCamPlayerHelper;->sendReconnect(I)V

    :cond_0
    return-void
.end method
