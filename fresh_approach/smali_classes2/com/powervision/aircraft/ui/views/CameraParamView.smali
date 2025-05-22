.class public Lcom/powervision/aircraft/ui/views/CameraParamView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CameraParamView.java"

# interfaces
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;


# instance fields
.field capacity_value:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field dynamic_value:Landroid/widget/TextView;

.field ev_value:Landroid/widget/TextView;

.field iso_value:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private paramHandler:Landroid/os/Handler;

.field shutter_value:Landroid/widget/TextView;

.field wb_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->paramHandler:Landroid/os/Handler;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->context:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_camera_param_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v0, Lcom/powervision/aircraft/R$id;->iso_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->iso_value:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/powervision/aircraft/R$id;->shutter_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->shutter_value:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/powervision/aircraft/R$id;->wb_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->wb_value:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/powervision/aircraft/R$id;->ev_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->ev_value:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/powervision/aircraft/R$id;->dynamic_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->dynamic_value:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/powervision/aircraft/R$id;->capacity_value:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->capacity_value:Landroid/widget/TextView;

    .line 57
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnGetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onGetMuxerFormat$0$CameraParamView(Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoFormatType()I

    move-result v0

    .line 113
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->dynamic_value:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/powervision/camera/utils/CameraUtil;->getPhotoFileFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->dynamic_value:Landroid/widget/TextView;

    const-string v0, "MP4"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->dynamic_value:Landroid/widget/TextView;

    const-string v0, "MOV"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onDestoryParamter()V
    .locals 2

    .line 127
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnGetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;)V

    .line 128
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->paramHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onGetMuxerFormat(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->paramHandler:Landroid/os/Handler;

    new-instance v1, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraParamView$viDre-vS_03BhSJlUVSOwtI_2t0;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraParamView$viDre-vS_03BhSJlUVSOwtI_2t0;-><init>(Lcom/powervision/aircraft/ui/views/CameraParamView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatCapacityValue(ILjava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  updatCapacityValue()... value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ..type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "n_camera"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/aircraft/R$string;->aircraft_not_num:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p1, "0x"

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/aircraft/R$string;->aircraft_not_num:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 95
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->capacity_value:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateRecordingTime(I)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->capacity_value:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->capacity_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "min"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateViewsData()V
    .locals 7

    const-string v0, "camera_get_all"

    const-string v1, "  cameraParamView  ...updateViewsData() ... \u66f4\u65b0view "

    .line 61
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getIsoType()I

    move-result v1

    .line 64
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExptimeValue()I

    move-result v2

    .line 65
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result v3

    .line 67
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getEvIntValue()I

    move-result v4

    .line 68
    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->ev_value:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->context:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/powervision/camera/utils/CameraUtil;->getEVValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->iso_value:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/powervision/camera/utils/CameraUtil;->getIsoValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->shutter_value:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/powervision/camera/utils/CameraUtil;->getShutterValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->wb_value:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/powervision/camera/utils/CameraUtil;->getWbValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoFormatType()I

    move-result v1

    .line 75
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->dynamic_value:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/powervision/camera/utils/CameraUtil;->getPhotoFileFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraMuxerFormatType()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->dynamic_value:Landroid/widget/TextView;

    const-string v1, "MP4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraParamView;->dynamic_value:Landroid/widget/TextView;

    const-string v1, "MOV"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
