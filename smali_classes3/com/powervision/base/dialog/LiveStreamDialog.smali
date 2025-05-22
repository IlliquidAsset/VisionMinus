.class public Lcom/powervision/base/dialog/LiveStreamDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "LiveStreamDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;,
        Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;
    }
.end annotation


# instance fields
.field private audioStatusCallback:Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;

.field private audioSwitchBtn:Landroid/widget/ToggleButton;

.field private dialogMode:Ljava/lang/String;

.field private liveStreamCallback:Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;

.field private mCloseLive:Landroid/widget/ImageView;

.field private mLiveCodeText:Landroid/widget/EditText;

.field private mLiveTitle:Landroid/widget/TextView;

.field private mNextLayout:Landroid/widget/RelativeLayout;

.field private mNextStep:Landroid/widget/TextView;

.field private mSetUrlText:Landroid/widget/EditText;

.field private mStartLayout:Landroid/widget/RelativeLayout;

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private streamStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/dialog/LiveStreamDialog;)Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->audioStatusCallback:Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/base/dialog/LiveStreamDialog;)Landroid/widget/ToggleButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->audioSwitchBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/base/dialog/LiveStreamDialog;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->dialogMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/base/dialog/LiveStreamDialog;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    return-object p0
.end method

.method private setListener()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mCloseLive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->audioSwitchBtn:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/base/dialog/LiveStreamDialog$1;

    invoke-direct {v1, p0}, Lcom/powervision/base/dialog/LiveStreamDialog$1;-><init>(Lcom/powervision/base/dialog/LiveStreamDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mSetUrlText:Landroid/widget/EditText;

    new-instance v1, Lcom/powervision/base/dialog/LiveStreamDialog$2;

    invoke-direct {v1, p0}, Lcom/powervision/base/dialog/LiveStreamDialog$2;-><init>(Lcom/powervision/base/dialog/LiveStreamDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 150
    sget v0, Lcom/powervision/base/R$id;->live_close_img:I

    if-ne p1, v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->dismiss()V

    goto/16 :goto_0

    .line 152
    :cond_0
    sget v0, Lcom/powervision/base/R$id;->text_ok:I

    if-ne p1, v0, :cond_6

    .line 153
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->AP03_ConnectGuide_16:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mSetUrlText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rtmp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$string;->APP_Login_36:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mStartLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->AP03_DV_GeneralSetting_41:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mLiveTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->AP03_DV_GeneralSetting_40_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->liveStreamCallback:Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;

    if-eqz p1, :cond_6

    .line 162
    iget-object v0, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mSetUrlText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mLiveCodeText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;->nextStep(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->AP03_DV_GeneralSetting_41:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 166
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->liveStreamCallback:Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;

    if-eqz p1, :cond_3

    .line 167
    invoke-interface {p1}, Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;->startPushStream()V

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->dismiss()V

    goto :goto_0

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$string;->AP03_DV_GeneralSetting_45_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 171
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->liveStreamCallback:Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;

    if-eqz p1, :cond_5

    .line 172
    invoke-interface {p1}, Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;->stopPushStream()V

    .line 174
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->dismiss()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/powervision/base/R$style;->custom_dialog_style:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/powervision/base/dialog/LiveStreamDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 140
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/Window;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget p3, Lcom/powervision/base/R$layout;->custom_live_stream_layout:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    sget p2, Lcom/powervision/base/R$id;->live_close_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mCloseLive:Landroid/widget/ImageView;

    .line 72
    sget p2, Lcom/powervision/base/R$id;->text_ok:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    .line 73
    sget p2, Lcom/powervision/base/R$id;->live_stream_address_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextLayout:Landroid/widget/RelativeLayout;

    .line 74
    sget p2, Lcom/powervision/base/R$id;->live_stream_switch_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mStartLayout:Landroid/widget/RelativeLayout;

    .line 75
    sget p2, Lcom/powervision/base/R$id;->live_stream_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mLiveTitle:Landroid/widget/TextView;

    .line 76
    sget p2, Lcom/powervision/base/R$id;->edit_address:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mSetUrlText:Landroid/widget/EditText;

    .line 77
    sget p2, Lcom/powervision/base/R$id;->edit_live_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mLiveCodeText:Landroid/widget/EditText;

    .line 78
    sget p2, Lcom/powervision/base/R$id;->live_stream_toggle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->audioSwitchBtn:Landroid/widget/ToggleButton;

    .line 79
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string p2, "AP03_STREAM_AUDIO_STATUS"

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->streamStatus:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->audioSwitchBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->audioSwitchBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->dialogMode:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "start_push_stream"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mStartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/base/R$string;->AP03_ConnectGuide_16:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/base/R$color;->gray_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->dialogMode:Ljava/lang/String;

    const-string v1, "push_streaming"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mStartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/base/R$string;->AP03_DV_GeneralSetting_45_2:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/base/R$color;->live_red:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/powervision/base/dialog/LiveStreamDialog;->setListener()V

    return-void
.end method

.method public setAudioCallback(Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->audioStatusCallback:Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;

    return-void
.end method

.method public setStreamCallback(Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog;->liveStreamCallback:Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;

    return-void
.end method
