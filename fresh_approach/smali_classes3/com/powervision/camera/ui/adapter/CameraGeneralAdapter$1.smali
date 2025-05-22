.class Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;
.super Ljava/lang/Object;
.source "CameraGeneralAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

.field final synthetic val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 133
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$100(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    .line 136
    iget-object v3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v3}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;

    move-result-object v3

    check-cast p1, Landroid/widget/ToggleButton;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v3, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;->onVideoSound(Landroid/widget/ToggleButton;Z)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 138
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v2, "AP03_RECORD_NOISE_SWITCH"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;

    move-result-object v1

    check-cast p1, Landroid/widget/ToggleButton;

    invoke-interface {v1, p1, v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;->onNoiseReduction(Landroid/widget/ToggleButton;Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 145
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$100(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getIsSavePhoto()I

    move-result v0

    .line 146
    iget-object v3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v3}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;

    move-result-object v3

    check-cast p1, Landroid/widget/ToggleButton;

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v3, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;->onSavePictureOriginal(Landroid/widget/ToggleButton;Z)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 148
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$100(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getHeadlightState()I

    move-result v0

    .line 149
    iget-object v3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v3}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;

    move-result-object v3

    check-cast p1, Landroid/widget/ToggleButton;

    if-ne v0, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-interface {v3, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;->onHeadlights(Landroid/widget/ToggleButton;Z)V

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    .line 151
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$100(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWaterMarkType()I

    move-result v0

    .line 152
    iget-object v3, p0, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-static {v3}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;

    move-result-object v3

    check-cast p1, Landroid/widget/ToggleButton;

    if-ne v0, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-interface {v3, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;->onWaterMark(Landroid/widget/ToggleButton;Z)V

    :cond_8
    :goto_0
    return-void
.end method
