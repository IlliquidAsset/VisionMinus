.class Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$1;
.super Ljava/lang/Object;
.source "CameraHandheldGeneralSettingFragment.java"

# interfaces
.implements Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureControl(Landroid/widget/ToggleButton;Z)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->enableGesture(I)V

    return-void
.end method

.method public onHeadlights(Landroid/widget/ToggleButton;Z)V
    .locals 1

    xor-int/lit8 p1, p2, 0x1

    .line 126
    iget-object p2, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p2}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->openOrCloseHeadLight(I)V

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  .....set ... onHeadlights   value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "set_camera"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHistogramChange(Landroid/widget/ToggleButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 117
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->enableHistogram(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->enableHistogram(I)V

    :goto_0
    return-void
.end method

.method public onMirrorReverse(Landroid/widget/ToggleButton;Z)V
    .locals 1

    .line 99
    new-instance p1, Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 101
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    const/16 v0, 0xf0

    invoke-virtual {p2, v0, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public onSavePictureOriginal(Landroid/widget/ToggleButton;Z)V
    .locals 1

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isChecked  =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 108
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setIsSaveLapsePhoto(I)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setIsSaveLapsePhoto(I)V

    :goto_0
    return-void
.end method

.method public onWaterMark(Landroid/widget/ToggleButton;Z)V
    .locals 1

    xor-int/lit8 p1, p2, 0x1

    .line 133
    iget-object p2, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-static {p2}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/camera/camera/CameraManager;->setEnableLogo(I)V

    .line 134
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
