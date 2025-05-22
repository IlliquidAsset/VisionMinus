.class Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;
.super Landroid/os/CountDownTimer;
.source "SmartClipsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->showTimeDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;JJ)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 734
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_66:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 738
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Lcom/powervision/aircraft/smart/SmartClipsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setChildMode(I)V

    .line 739
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 721
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    long-to-int p2, p1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    return-void

    .line 725
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 728
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Lcom/powervision/base/utils/SoundPoolUtils;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(II)V

    :cond_2
    return-void
.end method
