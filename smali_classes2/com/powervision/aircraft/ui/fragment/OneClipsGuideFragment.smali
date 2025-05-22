.class public Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "OneClipsGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraControllListener;


# instance fields
.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private mCancelText:Landroid/widget/TextView;

.field private mCheck:Landroid/widget/CheckBox;

.field private mContentText:Landroid/widget/TextView;

.field private mGuideImg:Landroid/widget/ImageView;

.field private mSureText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private modeCode:I

.field private saveCode:Ljava/lang/String;

.field private sparseIntArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public changeContentViewStatus(I)V
    .locals 1

    .line 76
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->modeCode:I

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mTitleText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_64:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mContentText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_65:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "JIAN_YUAN_REMINDER"

    .line 80
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->saveCode:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mGuideImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_recess_guide_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 83
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mTitleText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_68:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mContentText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_69:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "HUAN_RAO_REMINDER"

    .line 85
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->saveCode:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mGuideImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_surround_guide_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 88
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mTitleText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_66:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mContentText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_67:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "LUO_XUAN_REMINDER"

    .line 90
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->saveCode:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mGuideImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_screw_guide_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 93
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mTitleText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_70:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mContentText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_71:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "CHONG_TIAN_REMINDER"

    .line 95
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->saveCode:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mGuideImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_towering_guide_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 98
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mTitleText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_72:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mContentText:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_73:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "TUO_YUAN_REMINDER"

    .line 100
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->saveCode:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mGuideImg:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_ellipse_guide_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mCheck:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 43
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_clips_guide_layout:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeContentViewStatus = initData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "clips_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->modeCode:I

    .line 65
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->modeCode:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->changeContentViewStatus(I)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c\u56db\u6b65 \u83b7\u53d6\u6a21\u5f0f\u89d2\u6807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->modeCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onekey_clips_nemo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    sget p1, Lcom/powervision/aircraft/R$id;->clips_title_under:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mTitleText:Landroid/widget/TextView;

    .line 49
    sget p1, Lcom/powervision/aircraft/R$id;->clips_content:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mContentText:Landroid/widget/TextView;

    .line 50
    sget p1, Lcom/powervision/aircraft/R$id;->clips_cancle_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mCancelText:Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/powervision/aircraft/R$id;->clips_ok_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mSureText:Landroid/widget/TextView;

    .line 52
    sget p1, Lcom/powervision/aircraft/R$id;->check_box:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mCheck:Landroid/widget/CheckBox;

    .line 53
    sget p1, Lcom/powervision/aircraft/R$id;->clips_video_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mGuideImg:Landroid/widget/ImageView;

    .line 54
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mCheck:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public synthetic lambda$onSwitchRecordMode$0$OneClipsGuideFragment(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->modeCode:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xb2

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAEBMultiplePhotoStart()V
    .locals 0

    return-void
.end method

.method public onCameraStateChange(I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 118
    sget v0, Lcom/powervision/aircraft/R$id;->clips_ok_bt:I

    if-ne p1, v0, :cond_2

    .line 119
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne p1, v0, :cond_1

    .line 120
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->saveCode:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->modeCode:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xb2

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    goto :goto_0

    .line 128
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->clips_cancle_bt:I

    if-ne p1, v0, :cond_3

    .line 129
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onHDRMultiplePhotoStart()V
    .locals 0

    return-void
.end method

.method public onMultipleShotsStart()V
    .locals 0

    return-void
.end method

.method public onPhotograph(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    return-void
.end method

.method public onStartRecordVideo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStopRecordVideo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStorageFull(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSwitchPhotographMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSwitchRecordMode(Ljava/lang/String;)V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$OneClipsGuideFragment$UsF5UUSnHumjEw3MDKxBfGI6AbM;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$OneClipsGuideFragment$UsF5UUSnHumjEw3MDKxBfGI6AbM;-><init>(Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTimingStart()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mCancelText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->mSureText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/OneClipsGuideFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V

    return-void
.end method
