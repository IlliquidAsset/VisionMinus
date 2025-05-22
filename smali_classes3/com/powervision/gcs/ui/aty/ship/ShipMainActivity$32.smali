.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;


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

    .line 3493
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceSizeChange(ZIIII)V
    .locals 0

    .line 3496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mtextureview width:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "  height:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "lzqText"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance p4, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;

    invoke-direct {p4, p0, p2, p3}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$32;II)V

    invoke-virtual {p1, p4}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
