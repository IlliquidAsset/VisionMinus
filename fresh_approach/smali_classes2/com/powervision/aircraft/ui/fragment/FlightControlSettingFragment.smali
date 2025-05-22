.class public Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "FlightControlSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;
    }
.end annotation


# static fields
.field private static final GET_CURRENT_MODE:I = 0xe

.field private static final GET_MAX_HOR_FAILED:I = 0xc

.field private static final GET_MAX_HOR_MODE:I = 0x8

.field private static final GET_MAX_VER_FAILED:I = 0xb

.field private static final GET_MAX_VER_MODE:I = 0x6

.field private static final GET_NEW_MODE_FAILED:I = 0xa

.field private static final GET_NEW_MODE_SUCCESS:I = 0x2

.field private static final GET_RTL_FAILED:I = 0xd

.field private static final GET_RTL_MODE:I = 0x4

.field private static final SET_MAX_HOR_MODE:I = 0x7

.field private static final SET_MAX_HOR_MODE_TIMEOUT:I = 0xf

.field private static final SET_MAX_VER_MODE:I = 0x5

.field private static final SET_NEW_MODE_FAILED:I = 0x9

.field private static final SET_NEW_MODE_SUCCESS:I = 0x1

.field private static final SET_RTL_MODE:I = 0x3


# instance fields
.field private LOCAL_MAX_HOR_VALUE:F

.field private LOCAL_MAX_RETURN_VALUE:F

.field private LOCAL_MAX_VER_VALUE:F

.field private TAG:Ljava/lang/String;

.field private ap03Manager:Lcom/powervision/sdk/Ap03Manager;

.field private closeBt:Landroid/widget/ImageView;

.field private currentMode:Ljava/lang/String;

.field private flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

.field private mCalibartionLayout:Landroid/widget/RelativeLayout;

.field private mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mMaxDistanceEdit:Landroid/widget/EditText;

.field private mMaxDistanceSwitch:Landroid/widget/ToggleButton;

.field private mMaxDistanceText:Landroid/widget/TextView;

.field private mMaxDistanceValue:Landroid/widget/TextView;

.field private mMaxHightEdit:Landroid/widget/EditText;

.field private mMaxHightValue:Landroid/widget/TextView;

.field private mMaxHorValue:F

.field private mMaxVerValue:F

.field private mNewModeContent:Landroid/widget/TextView;

.field private mNewModeSwitch:Landroid/widget/ToggleButton;

.field private mNewModeTitle:Landroid/widget/TextView;

.field private mReturnAltitude:F

.field private mReturnHightEdit:Landroid/widget/EditText;

.field private mRockerExpLayout:Landroid/widget/RelativeLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mUpMaxHorValue:F

.field private mUpMaxVerValue:F

.field private mUserLocationTv:Landroid/widget/TextView;

.field private newModeFlag:I

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private spUtil:Lcom/powervision/base/utils/SPHelperUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const-string v0, "FlightControlSettingFragment"

    .line 52
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->TAG:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)Landroid/widget/ToggleButton;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)Landroid/widget/ToggleButton;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->changeMaxDistanceState(Z)V

    return-void
.end method

.method private changeMaxDistanceState(Z)V
    .locals 2

    const-string v0, "GF_MAX_HOR_DIST"

    if-nez p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    goto :goto_0

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    :goto_0
    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 7

    .line 127
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    const-string v3, "m"

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 275
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->currentMode:Ljava/lang/String;

    const-string v0, "FOLLOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->currentMode:Ljava/lang/String;

    const-string v0, "CIRCLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->currentMode:Ljava/lang/String;

    const-string v0, "INTEL_SHOOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->currentMode:Ljava/lang/String;

    const-string v0, "DELAY_SHOOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v6}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 282
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 283
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 276
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 277
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 278
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 272
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "RTL_RETURN_ALT"

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 266
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "GF_MAX_HOR_DIST"

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 269
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "GF_MAX_VER_DIST"

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 209
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "NEW_USER"

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 206
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->TAG:Ljava/lang/String;

    const-string v0, "\u8bbe\u7f6e\u65b0\u624b\u6a21\u5f0f\u5931\u8d25"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 230
    :pswitch_6
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    if-nez p1, :cond_4

    .line 231
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHorValue:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 232
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_4

    .line 236
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHorValue:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_4
    if-ne p1, v6, :cond_10

    .line 242
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceValue:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHorValue:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_4

    .line 248
    :pswitch_7
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    if-nez p1, :cond_6

    .line 249
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUpMaxHorValue:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_5

    .line 250
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 252
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 254
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUpMaxHorValue:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    :cond_6
    if-ne p1, v6, :cond_7

    .line 260
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 263
    :cond_7
    :goto_1
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_185:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto/16 :goto_4

    .line 212
    :pswitch_8
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxVerValue:F

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_8

    .line 213
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxVerValue:F

    .line 215
    :cond_8
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    if-nez p1, :cond_9

    .line 216
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightEdit:Landroid/widget/EditText;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxVerValue:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_9
    if-ne p1, v6, :cond_10

    .line 218
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightValue:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxVerValue:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 222
    :pswitch_9
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    if-nez p1, :cond_a

    .line 223
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightEdit:Landroid/widget/EditText;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUpMaxVerValue:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    if-ne p1, v6, :cond_b

    .line 225
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightValue:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUpMaxVerValue:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_b
    :goto_2
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_185:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto/16 :goto_4

    .line 132
    :pswitch_a
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mReturnAltitude:F

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_c

    .line 133
    iput v1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mReturnAltitude:F

    .line 135
    :cond_c
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mReturnHightEdit:Landroid/widget/EditText;

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mReturnAltitude:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 138
    :pswitch_b
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_185:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto/16 :goto_4

    .line 195
    :pswitch_c
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 196
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    if-nez p1, :cond_d

    .line 197
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 198
    invoke-direct {p0, v5}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mOpenNewModeStatus(Z)V

    goto :goto_4

    :cond_d
    if-ne p1, v6, :cond_10

    .line 200
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 201
    invoke-direct {p0, v6}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mOpenNewModeStatus(Z)V

    goto :goto_4

    .line 141
    :pswitch_d
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    const-wide/16 v0, 0xc8

    if-nez p1, :cond_f

    .line 142
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$1;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    .line 148
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 149
    invoke-virtual {v2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 150
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    const-wide/16 v0, 0x190

    if-eqz p1, :cond_e

    .line 151
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$2;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    .line 157
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 158
    invoke-virtual {v2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_3

    .line 160
    :cond_e
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$3;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    .line 166
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 167
    invoke-virtual {v2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 169
    :goto_3
    invoke-direct {p0, v5}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mOpenNewModeStatus(Z)V

    .line 170
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_74:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_4

    :cond_f
    if-ne p1, v6, :cond_10

    .line 172
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$4;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$4;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    .line 178
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 179
    invoke-virtual {v2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 181
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$5;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$5;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    .line 187
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 188
    invoke-virtual {v2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 189
    invoke-direct {p0, v6}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mOpenNewModeStatus(Z)V

    .line 190
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_71:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    :cond_10
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mNewModeSwitch(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v0, 0x1

    const-string v1, "NEW_USER"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_74:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_75:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    .line 520
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Activation_9:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$11;

    invoke-direct {v7, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$11;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    new-instance v8, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$12;

    invoke-direct {v8, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$12;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    .line 519
    invoke-static/range {v2 .. v8}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method private mOpenNewModeStatus(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightValue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceValue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 304
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 306
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightValue:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceValue:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 314
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_flight_control_setting_layout:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 448
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 449
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    .line 450
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->spUtil:Lcom/powervision/base/utils/SPHelperUtils;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 319
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 321
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mTitle:Landroid/widget/TextView;

    .line 322
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->closeBt:Landroid/widget/ImageView;

    .line 325
    sget p1, Lcom/powervision/aircraft/R$id;->flight_user_location_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUserLocationTv:Landroid/widget/TextView;

    .line 327
    sget p1, Lcom/powervision/aircraft/R$id;->flight_rocker_exp_ly:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mRockerExpLayout:Landroid/widget/RelativeLayout;

    .line 329
    sget p1, Lcom/powervision/aircraft/R$id;->flight_sensor_calibration_ly:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mCalibartionLayout:Landroid/widget/RelativeLayout;

    .line 331
    sget p1, Lcom/powervision/aircraft/R$id;->flight_max_distance_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceText:Landroid/widget/TextView;

    .line 332
    sget p1, Lcom/powervision/aircraft/R$id;->flight_height_dinstance_et:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    .line 333
    sget p1, Lcom/powervision/aircraft/R$id;->flight_distance_cb:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    .line 334
    sget p1, Lcom/powervision/aircraft/R$id;->flight_rocker_mode_cb:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    .line 336
    sget p1, Lcom/powervision/aircraft/R$id;->flight_height_input_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightValue:Landroid/widget/TextView;

    .line 337
    sget p1, Lcom/powervision/aircraft/R$id;->flight_distance_input_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceValue:Landroid/widget/TextView;

    .line 338
    sget p1, Lcom/powervision/aircraft/R$id;->flight_height_input_et:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightEdit:Landroid/widget/EditText;

    .line 339
    sget p1, Lcom/powervision/aircraft/R$id;->flight_return_height_input_et:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mReturnHightEdit:Landroid/widget/EditText;

    .line 341
    sget p1, Lcom/powervision/aircraft/R$id;->flight_rocker_mode_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeTitle:Landroid/widget/TextView;

    .line 342
    sget p1, Lcom/powervision/aircraft/R$id;->flight_rocker_hint_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeContent:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$setListener$0$FlightControlSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 348
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public newModeCloseStatus()V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf29
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 635
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 636
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->white_alpha_60:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public newModeOpenStatus()V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf30
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    .line 642
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 456
    sget v0, Lcom/powervision/aircraft/R$id;->flight_user_location_tv:I

    if-ne p1, v0, :cond_1

    .line 457
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez p1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_199:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x64

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 462
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->flight_rocker_exp_ly:I

    if-ne p1, v0, :cond_2

    .line 463
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x65

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 464
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->flight_sensor_calibration_ly:I

    if-ne p1, v0, :cond_4

    .line 465
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz p1, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_198:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 469
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x69

    invoke-static {p1, v0, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 659
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 660
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownFloatParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 661
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 662
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownLongParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 663
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 664
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 396
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x6

    if-ne p2, p3, :cond_c

    .line 398
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    .line 399
    sget p2, Lcom/powervision/aircraft/R$id;->flight_height_dinstance_et:I

    const/high16 p3, 0x41a00000    # 20.0f

    const/4 v0, 0x1

    if-ne p1, p2, :cond_3

    .line 400
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float p2, p1, p3

    if-ltz p2, :cond_1

    const p2, 0x459c4000    # 5000.0f

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_1

    .line 407
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string p3, "GF_MAX_HOR_DIST"

    invoke-virtual {p2, p3, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    goto/16 :goto_3

    .line 409
    :cond_1
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_278:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 410
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->LOCAL_MAX_HOR_VALUE:F

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 402
    :cond_2
    :goto_0
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_278:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return v0

    .line 412
    :cond_3
    sget p2, Lcom/powervision/aircraft/R$id;->flight_height_input_et:I

    const/high16 v1, 0x43fa0000    # 500.0f

    if-ne p1, p2, :cond_7

    .line 413
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 418
    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float p2, p1, p3

    if-ltz p2, :cond_5

    cmpg-float p2, p1, v1

    if-gtz p2, :cond_5

    .line 420
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string p3, "GF_MAX_VER_DIST"

    invoke-virtual {p2, p3, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    goto :goto_3

    .line 422
    :cond_5
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_278:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 423
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightEdit:Landroid/widget/EditText;

    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->LOCAL_MAX_VER_VALUE:F

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 415
    :cond_6
    :goto_1
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_278:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return v0

    .line 425
    :cond_7
    sget p2, Lcom/powervision/aircraft/R$id;->flight_return_height_input_et:I

    if-ne p1, p2, :cond_c

    .line 426
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mReturnHightEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    .line 431
    :cond_8
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float p2, p1, p3

    if-ltz p2, :cond_9

    cmpg-float p2, p1, v1

    if-gtz p2, :cond_9

    .line 433
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string p3, "RTL_RETURN_ALT"

    invoke-virtual {p2, p3, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    goto :goto_3

    .line 435
    :cond_9
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_278:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 436
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mReturnHightEdit:Landroid/widget/EditText;

    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->LOCAL_MAX_RETURN_VALUE:F

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 428
    :cond_a
    :goto_2
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_278:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return v0

    .line 441
    :cond_b
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Check_22:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    :cond_c
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 476
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 477
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "NEW_USER"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    .line 478
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$8;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$8;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    .line 484
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0xc8

    .line 485
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 487
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$9;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$9;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    .line 493
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x190

    .line 494
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 496
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$10;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$10;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    .line 502
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x258

    .line 503
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onSetGetFloatParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 7

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "floats==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s1===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s2====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "v======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemo-flght-controler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPLOAD"

    .line 538
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FAILED"

    const-string v2, "TIMEOUT"

    const-string v3, "SUCCESS"

    const-string v4, "GF_MAX_HOR_DIST"

    const-string v5, "GF_MAX_VER_DIST"

    const-string v6, "RTL_RETURN_ALT"

    if-eqz v0, :cond_4

    .line 539
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 540
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 541
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    .line 542
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->LOCAL_MAX_RETURN_VALUE:F

    goto/16 :goto_0

    .line 543
    :cond_0
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 544
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUpMaxVerValue:F

    .line 545
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->LOCAL_MAX_VER_VALUE:F

    .line 546
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 547
    :cond_1
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 548
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUpMaxHorValue:F

    .line 549
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->LOCAL_MAX_HOR_VALUE:F

    .line 550
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 552
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 553
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 554
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    :cond_4
    const-string v0, "DOWNLOAD"

    .line 557
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 558
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 559
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 560
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mReturnAltitude:F

    .line 561
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->LOCAL_MAX_RETURN_VALUE:F

    .line 562
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 563
    :cond_5
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 564
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxVerValue:F

    .line 565
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->LOCAL_MAX_VER_VALUE:F

    .line 566
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 567
    :cond_6
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 568
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHorValue:F

    .line 569
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->LOCAL_MAX_HOR_VALUE:F

    .line 570
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 572
    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 573
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 574
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 575
    :cond_8
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 576
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 577
    :cond_9
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 578
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 580
    :cond_a
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_b
    :goto_0
    return-void
.end method

.method public onSetGetIntParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s1===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s2====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "i======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemo-flght-controler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPLOAD"

    .line 589
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AP03_NEW_USER_MODE"

    const-string v2, "FAILED"

    const-string v3, "NEW_USER"

    const-string v4, "TIMEOUT"

    const-string v5, "SUCCESS"

    if-eqz v0, :cond_2

    .line 590
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 592
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    .line 593
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    .line 595
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p2, 0x0

    .line 596
    iget p3, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 597
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    const/16 p3, 0xf4

    invoke-virtual {p2, p3, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 598
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->spUtil:Lcom/powervision/base/utils/SPHelperUtils;

    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/SPHelperUtils;->saveNewerMode(I)V

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p3, 0x9

    if-eqz p1, :cond_1

    .line 601
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 603
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v0, "DOWNLOAD"

    .line 605
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 606
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 607
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 608
    iput p4, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    .line 609
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->newModeFlag:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 612
    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p3, 0xa

    if-eqz p1, :cond_4

    .line 613
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 614
    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 615
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onSetGetLongParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->currentMode:Ljava/lang/String;

    .line 654
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->flyControllerHandler:Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$FlyControllerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->closeBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$FlightControlSettingFragment$GMLiWj3Tw8MFGk1iOXl2NEPprUw;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$FlightControlSettingFragment$GMLiWj3Tw8MFGk1iOXl2NEPprUw;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUserLocationTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mRockerExpLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mCalibartionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mReturnHightEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 354
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxHightEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 355
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 357
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownFloatParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 358
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 359
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownLongParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 360
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 362
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mNewModeSwitch:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$6;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$6;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mMaxDistanceSwitch:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$7;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment$7;-><init>(Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public switchReturnPointInfo(Landroid/util/SparseArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf23
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 624
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUserLocationTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_7:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 626
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUserLocationTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_9:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 628
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->mUserLocationTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/FlightControlSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
