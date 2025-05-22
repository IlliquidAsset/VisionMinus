.class public Lcom/powervision/handheld/ui/views/NewCameraParamView;
.super Landroid/widget/RelativeLayout;
.source "NewCameraParamView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private mAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mEvText:Landroid/widget/TextView;

.field private mFormatText:Landroid/widget/TextView;

.field private mISOText:Landroid/widget/TextView;

.field private mImageSd:Landroid/widget/ImageView;

.field private mLayoutRoot:Landroid/widget/RelativeLayout;

.field private mSdText:Landroid/widget/TextView;

.field private mShutterText:Landroid/widget/TextView;

.field private mWbText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->context:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->inflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/handheld/R$layout;->handheld_camera_new_params_view_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcom/powervision/handheld/R$id;->camera_param_ios_Value:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mISOText:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/powervision/handheld/R$id;->camera_param_shutter_Value:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mShutterText:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/powervision/handheld/R$id;->camera_param_wb_Value:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mWbText:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/powervision/handheld/R$id;->camera_param_ev_Value:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mEvText:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/powervision/handheld/R$id;->camera_param_format_Value:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mFormatText:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/powervision/handheld/R$id;->camera_param_sd_Value:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mSdText:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/powervision/handheld/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mLayoutRoot:Landroid/widget/RelativeLayout;

    .line 53
    sget v0, Lcom/powervision/handheld/R$id;->camera_param_sd_img:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mImageSd:Landroid/widget/ImageView;

    return-void
.end method

.method private onStartStorageFullAnimation()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mImageSd:Landroid/widget/ImageView;

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 150
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 151
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onStopStorageFullAnimation()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private updateStorageDataIcon()V
    .locals 3

    .line 118
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isSDFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mImageSd:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->handheld_new_sd_full_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->onStartStorageFullAnimation()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mImageSd:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_sd_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->onStopStorageFullAnimation()V

    .line 126
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mImageSd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isEmmcFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mImageSd:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->handheld_new_emmc_full_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->onStartStorageFullAnimation()V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mImageSd:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_emmc_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->onStopStorageFullAnimation()V

    .line 136
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mImageSd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->onStopStorageFullAnimation()V

    .line 163
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public updatCapacityValue(ILjava/lang/String;)V
    .locals 2

    .line 95
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

    const-string v0, "P_camera"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/handheld/R$string;->aircraft_not_num:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p1, "0x"

    .line 98
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

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/handheld/R$string;->aircraft_not_num:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 101
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mSdText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updateStorageDataIcon()V

    return-void
.end method

.method public updateCameraView()V
    .locals 6

    .line 57
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getIsoType()I

    move-result v1

    .line 60
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExptimeValue()I

    move-result v2

    .line 61
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWbType()I

    move-result v3

    .line 62
    iget-object v4, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mWbText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->context:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/powervision/camera/utils/CameraUtil;->getWbValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getEvIntValue()I

    move-result v3

    .line 65
    iget-object v4, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mEvText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->context:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/powervision/camera/utils/CameraUtil;->getEVValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoFormatType()I

    move-result v3

    .line 68
    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mFormatText:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/powervision/camera/utils/CameraUtil;->getPhotoFileFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraMuxerFormatType()I

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mFormatText:Landroid/widget/TextView;

    const-string v3, "MP4"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mFormatText:Landroid/widget/TextView;

    const-string v3, "MOV"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mISOText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_21:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mShutterText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_21:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mISOText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/powervision/camera/utils/CameraUtil;->getIsoValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/powervision/camera/utils/CameraUtil;->getShutterValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mShutterText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updateStorageDataIcon()V

    return-void
.end method

.method public updateRecordingTime(I)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mSdText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/NewCameraParamView;->mSdText:Landroid/widget/TextView;

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
