.class Lcom/appunite/player/PVCamPlayerHelper$1$3;
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

    .line 230
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$1$3;->this$1:Lcom/appunite/player/PVCamPlayerHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$1$3;->this$1:Lcom/appunite/player/PVCamPlayerHelper$1;

    iget-object v0, v0, Lcom/appunite/player/PVCamPlayerHelper$1;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-virtual {v0}, Lcom/appunite/player/PVCamPlayerHelper;->updateSurfaceView()V

    return-void
.end method
