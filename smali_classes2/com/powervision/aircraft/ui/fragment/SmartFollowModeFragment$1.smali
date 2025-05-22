.class Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;
.super Ljava/lang/Object;
.source "SmartFollowModeFragment.java"

# interfaces
.implements Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->showAvoidanceDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;I)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Z)V
    .locals 1

    .line 302
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_213:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 307
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;)V

    :goto_0
    return-void
.end method

.method public modeSelect(I)V
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "helin"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public open(Z)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;)Lcom/powervision/base/dialog/AvoidanceDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/dialog/AvoidanceDialog;->setSelectEnable(Z)V

    if-eqz p1, :cond_0

    .line 286
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;->val$value:I

    goto :goto_0

    .line 288
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;->val$value:I

    xor-int/lit8 v0, v0, 0x4

    .line 290
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", param = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$1;->val$value:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "helin"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    return-void
.end method
