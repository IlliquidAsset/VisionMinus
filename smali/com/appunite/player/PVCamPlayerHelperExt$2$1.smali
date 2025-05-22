.class Lcom/appunite/player/PVCamPlayerHelperExt$2$1;
.super Ljava/lang/Object;
.source "PVCamPlayerHelperExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/player/PVCamPlayerHelperExt$2;->onError(Lcom/hisilicon/camplayer/HiCamPlayer;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appunite/player/PVCamPlayerHelperExt$2;


# direct methods
.method constructor <init>(Lcom/appunite/player/PVCamPlayerHelperExt$2;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$2$1;->this$1:Lcom/appunite/player/PVCamPlayerHelperExt$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt$2$1;->this$1:Lcom/appunite/player/PVCamPlayerHelperExt$2;

    iget-object v0, v0, Lcom/appunite/player/PVCamPlayerHelperExt$2;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    iget-boolean v0, v0, Lcom/appunite/player/PVCamPlayerHelperExt;->running:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt$2$1;->this$1:Lcom/appunite/player/PVCamPlayerHelperExt$2;

    iget-object v0, v0, Lcom/appunite/player/PVCamPlayerHelperExt$2;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$400(Lcom/appunite/player/PVCamPlayerHelperExt;I)V

    :cond_0
    return-void
.end method
