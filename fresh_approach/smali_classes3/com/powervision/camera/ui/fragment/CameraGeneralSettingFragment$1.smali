.class Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;
.super Ljava/lang/Object;
.source "CameraGeneralSettingFragment.java"

# interfaces
.implements Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureControl(Landroid/widget/ToggleButton;Z)V
    .locals 0

    return-void
.end method

.method public onHeadlights(Landroid/widget/ToggleButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 138
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->openOrCloseHeadLight(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->openOrCloseHeadLight(I)V

    :goto_0
    return-void
.end method

.method public onHistogramChange(Landroid/widget/ToggleButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 129
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->enableHistogram(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->enableHistogram(I)V

    :goto_0
    return-void
.end method

.method public onMirrorReverse(Landroid/widget/ToggleButton;Z)V
    .locals 0

    return-void
.end method

.method public onNoiseReduction(Landroid/widget/ToggleButton;Z)V
    .locals 1

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isChecked  =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "AP03_RECORD_NOISE_SWITCH"

    invoke-virtual {p1, v0, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSavePictureOriginal(Landroid/widget/ToggleButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 120
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setIsSaveLapsePhoto(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setIsSaveLapsePhoto(I)V

    :goto_0
    return-void
.end method

.method public onVideoSound(Landroid/widget/ToggleButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 105
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->enableAudio(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->enableAudio(I)V

    :goto_0
    return-void
.end method

.method public onWaterMark(Landroid/widget/ToggleButton;Z)V
    .locals 1

    xor-int/lit8 p1, p2, 0x1

    .line 147
    iget-object p2, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-static {p2}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setEnableLogo(I)V

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  set ... onWaterMark   value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "set_camera"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
