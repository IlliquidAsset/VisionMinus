.class Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;
.super Ljava/lang/Object;
.source "CameraHandheldGeneralAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

.field final synthetic val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    iput-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 123
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;

    move-result-object v0

    check-cast p1, Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    .line 126
    invoke-static {v3}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$100(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getGestureState()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v1, 0x1

    .line 125
    :cond_0
    invoke-interface {v0, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;->onGestureControl(Landroid/widget/ToggleButton;Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 128
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$200(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    check-cast p1, Landroid/widget/ToggleButton;

    .line 129
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AP03_MIRROR_REVERSE_SWITCH"

    .line 128
    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;->onMirrorReverse(Landroid/widget/ToggleButton;Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 132
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;

    move-result-object v0

    check-cast p1, Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    .line 133
    invoke-static {v3}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$100(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getIsSavePhoto()I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v1, 0x1

    .line 132
    :cond_3
    invoke-interface {v0, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;->onSavePictureOriginal(Landroid/widget/ToggleButton;Z)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    .line 138
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;

    move-result-object v0

    check-cast p1, Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    invoke-static {v3}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$100(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getHeadlightState()I

    move-result v3

    if-ne v3, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-interface {v0, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;->onHeadlights(Landroid/widget/ToggleButton;Z)V

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    .line 140
    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    invoke-static {v0}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$000(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;

    move-result-object v0

    check-cast p1, Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$1;->this$0:Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;

    invoke-static {v3}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;->access$100(Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter;)Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getWaterMarkType()I

    move-result v3

    if-ne v3, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-interface {v0, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$CheckedChangeListener;->onWaterMark(Landroid/widget/ToggleButton;Z)V

    :cond_8
    :goto_0
    return-void
.end method
