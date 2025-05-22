.class public Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "GuideConnectHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;
    }
.end annotation


# instance fields
.field private dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field private mAfterSales:Landroid/widget/TextView;

.field private mIntoPaireBt:Landroid/widget/TextView;

.field private mbackBt:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 153
    new-instance v0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$1;-><init>(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->onRemoteControlerDisConnect()V

    return-void
.end method

.method private initTopBar()V
    .locals 1

    .line 55
    sget v0, Lcom/powervision/home/R$id;->guide_help_back_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mbackBt:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/powervision/home/R$id;->guide_into_remote_paire:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mIntoPaireBt:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/powervision/home/R$id;->guide_content4:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mAfterSales:Landroid/widget/TextView;

    .line 58
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->initView()V

    return-void
.end method

.method private initView()V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mAfterSales:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v2, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;

    const-string v3, "#3A75F2"

    invoke-direct {v2, p0, p0, v3}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity$WebClickableSpan;-><init>(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageIsJapan()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageisChina()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/16 v3, 0x14

    .line 73
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 75
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 77
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mAfterSales:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 78
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mAfterSales:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 79
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mAfterSales:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private onDeviceConnect()V
    .locals 1

    .line 141
    sget-boolean v0, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideConnectHelpActivity$cHeS7LSjfqiDmWiqD5jCaKSue5U;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideConnectHelpActivity$cHeS7LSjfqiDmWiqD5jCaKSue5U;-><init>(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onRemoteControlerDisConnect()V
    .locals 1

    .line 187
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideConnectHelpActivity$SE9QLiZQmkTByHMN30WBjryGP0o;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideConnectHelpActivity$SE9QLiZQmkTByHMN30WBjryGP0o;-><init>(Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 46
    sget v0, Lcom/powervision/home/R$layout;->home_activity_guide_connect_help_layout:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->initTopBar()V

    return-void
.end method

.method public synthetic lambda$onDeviceConnect$0$GuideConnectHelpActivity()V
    .locals 2

    .line 145
    const-class v0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-static {v0, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->finish()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRemoteControlerDisConnect$1$GuideConnectHelpActivity()V
    .locals 2

    .line 188
    const-class v0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;

    invoke-static {v0, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    sget v0, Lcom/powervision/home/R$string;->AP03_ConnectGuide_52_22:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 192
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 119
    sget v0, Lcom/powervision/home/R$id;->guide_help_back_iv:I

    if-ne p1, v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->finish()V

    goto :goto_0

    .line 121
    :cond_0
    sget v0, Lcom/powervision/home/R$id;->guide_into_remote_paire:I

    if-ne p1, v0, :cond_1

    .line 122
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 128
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 129
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 130
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->onDeviceConnect()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 109
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mbackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mIntoPaireBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->mAfterSales:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 113
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideConnectHelpActivity;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    return-void
.end method
