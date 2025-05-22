.class Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$3;
.super Ljava/lang/Object;
.source "TestRtspActivity.java"

# interfaces
.implements Lcom/appunite/player/PVCamPlayerHelper$OnSurfaceSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceSizeChange(ZII)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;

    new-instance p2, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$3$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$3$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$3;)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
