.class public Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "TestRtspActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mtextureview:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;)Landroid/view/TextureView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->mtextureview:Landroid/view/TextureView;

    return-object p0
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 27
    sget v0, Lcom/powervision/gcs/R$layout;->test_rtsp:I

    return v0
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    sget p1, Lcom/powervision/gcs/R$id;->test_rtsp_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->mtextureview:Landroid/view/TextureView;

    .line 33
    sget p1, Lcom/powervision/gcs/R$id;->testClick:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->mtextureview:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .line 46
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelper;->getHelper()Lcom/appunite/player/PVCamPlayerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->mtextureview:Landroid/view/TextureView;

    const/4 v3, 0x1

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/appunite/player/PVCamPlayerHelper;->initCamPlayer(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;III)V

    .line 47
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelper;->getHelper()Lcom/appunite/player/PVCamPlayerHelper;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$2;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;)V

    invoke-virtual {p1, p2}, Lcom/appunite/player/PVCamPlayerHelper;->setOnShowUpListener(Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;)V

    .line 53
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelper;->getHelper()Lcom/appunite/player/PVCamPlayerHelper;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$3;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$3;-><init>(Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;)V

    invoke-virtual {p1, p2}, Lcom/appunite/player/PVCamPlayerHelper;->setOnSurfaceSizeChangeListener(Lcom/appunite/player/PVCamPlayerHelper$OnSurfaceSizeChangeListener;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
