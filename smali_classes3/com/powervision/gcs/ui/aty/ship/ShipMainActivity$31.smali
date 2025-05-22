.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 3479
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showUp(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V
    .locals 1

    .line 3482
    sget-object v0, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_PREPARED:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    if-ne p1, v0, :cond_0

    .line 3483
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$31;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
