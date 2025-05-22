.class Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;
.super Landroid/os/Handler;
.source "GimbalSeniorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 209
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 210
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 234
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 235
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$502(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;I)I

    .line 226
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 227
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_2
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_11:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)I

    move-result p1

    if-nez p1, :cond_4

    .line 216
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 218
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->this$0:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 212
    :cond_5
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_11:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    :goto_0
    return-void
.end method
