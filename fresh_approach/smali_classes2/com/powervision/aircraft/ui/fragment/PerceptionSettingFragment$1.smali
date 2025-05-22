.class Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;
.super Ljava/lang/Object;
.source "PerceptionSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

.field final synthetic val$mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->val$mode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->val$mode:Ljava/lang/String;

    const-string v1, "FAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 94
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0, v3}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Z)V

    goto/16 :goto_3

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->val$mode:Ljava/lang/String;

    const-string v1, "POSCTL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v2}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Z)V

    goto/16 :goto_3

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->val$mode:Ljava/lang/String;

    const-string v4, "TRIPLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 106
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-static {v0, v2}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;Z)V

    .line 110
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecording()Z

    move-result v0

    const-string v1, "avoid_follow_warning"

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_215:I

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v2

    const-class v3, Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {v2, v1, v3}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)V

    goto :goto_3

    .line 114
    :cond_5
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_216:I

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v2

    const-class v3, Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {v2, v1, v3}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/PerceptionSettingFragment;I)V

    :cond_6
    :goto_3
    return-void
.end method
