.class public Lcom/powervision/aircraft/ui/views/AircraftTopView;
.super Landroid/widget/LinearLayout;
.source "AircraftTopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private landing:Z

.field private locked:Z

.field private mBatteryElectric:Landroid/widget/TextView;

.field private mBatteryImg:Landroid/widget/ImageView;

.field private mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

.field private mCurrentMode:Landroid/widget/TextView;

.field private mFlightSetting:Landroid/widget/ImageView;

.field private mHomeImage:Landroid/widget/ImageView;

.field private mRemoteElectric:Landroid/widget/ImageView;

.field private mRemotePower:Landroid/widget/ImageView;

.field private mRemotePowerText:Landroid/widget/TextView;

.field private mSatelliteNum:Landroid/widget/TextView;

.field private mSetUnPass:Z

.field private modeStr:[Ljava/lang/String;

.field private msgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/warning/HoverMessage;",
            ">;"
        }
    .end annotation
.end field

.field private preMsg:Lcom/powervision/base/warning/HoverMessage;

.field private status:I

.field private tenClickDialog:Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;

.field private topMenuAgent:Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;

.field private warnStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mSetUnPass:Z

    const/4 p2, 0x1

    .line 186
    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->locked:Z

    .line 69
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->initView(Landroid/content/Context;)V

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/views/AircraftTopView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->showTenClickDialog()V

    return-void
.end method

.method private initNonFlyClick()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 98
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mCurrentMode:Landroid/widget/TextView;

    new-instance v2, Lcom/powervision/aircraft/ui/views/AircraftTopView$1;

    invoke-direct {v2, p0, v0}, Lcom/powervision/aircraft/ui/views/AircraftTopView$1;-><init>(Lcom/powervision/aircraft/ui/views/AircraftTopView;[J)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_top_menu_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 80
    sget v0, Lcom/powervision/aircraft/R$id;->icon_home:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mHomeImage:Landroid/widget/ImageView;

    .line 81
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mFlightSetting:Landroid/widget/ImageView;

    .line 82
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    .line 83
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mCurrentMode:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_satellite_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mSatelliteNum:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_battery_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mBatteryElectric:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_battery_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mBatteryImg:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/powervision/aircraft/R$id;->remote_control_signal:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemoteElectric:Landroid/widget/ImageView;

    .line 88
    sget v0, Lcom/powervision/aircraft/R$id;->remote_control_power:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemotePower:Landroid/widget/ImageView;

    .line 89
    sget v0, Lcom/powervision/aircraft/R$id;->remote_control_power_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemotePowerText:Landroid/widget/TextView;

    .line 90
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mHomeImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mFlightSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    invoke-virtual {p1, p0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->initNonFlyClick()V

    return-void
.end method

.method private resetTitle()V
    .locals 1

    .line 264
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isDroneConnectStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setConnectStatus(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setConnectStatus(I)V

    :goto_0
    return-void
.end method

.method private setCurrentTitle(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 2

    .line 272
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->preMsg:Lcom/powervision/base/warning/HoverMessage;

    .line 273
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getGroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getGroundColor()I

    move-result p1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 277
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/aircraft/R$color;->color_yellow:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 279
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/aircraft/R$color;->color_red:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 281
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/aircraft/R$color;->color_green:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showTenClickDialog()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->tenClickDialog:Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->tenClickDialog:Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;

    .line 121
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/InputNonFlyZoneDialog;->show()V

    return-void
.end method


# virtual methods
.method public closeWarn(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 3

    const-string v0, "colse 2"

    .line 238
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "colse 3"

    .line 240
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "colse contains"

    .line 243
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 245
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "colse isNotEmpty"

    .line 246
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/warning/HoverMessage;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colse not = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/warning/HoverMessage;

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentTitle(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_1

    .line 252
    :cond_1
    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->preMsg:Lcom/powervision/base/warning/HoverMessage;

    const-string p1, "colse isEmpty"

    .line 253
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->resetTitle()V

    goto :goto_1

    .line 258
    :cond_2
    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->preMsg:Lcom/powervision/base/warning/HoverMessage;

    .line 259
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->resetTitle()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getWarnStatus()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->warnStatus:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->topMenuAgent:Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;

    if-eqz v0, :cond_3

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 378
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 381
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_setting:I

    if-ne p1, v0, :cond_1

    .line 382
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->topMenuAgent:Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;->mGeneralSettings()V

    goto :goto_0

    .line 383
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_status:I

    if-ne p1, v0, :cond_2

    .line 384
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->topMenuAgent:Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;->startSelfCheckActivity()V

    goto :goto_0

    .line 385
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->icon_home:I

    if-ne p1, v0, :cond_3

    .line 386
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->topMenuAgent:Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;->mBackHome()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setBatteryElectric(F)V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mBatteryElectric:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mBatteryImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mBatteryElectric:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 310
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_20:I

    .line 311
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mBatteryElectric:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/aircraft/R$color;->content_red_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42200000    # 40.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 314
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_40:I

    goto :goto_0

    :cond_3
    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 316
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_60:I

    goto :goto_0

    :cond_4
    const/high16 v0, 0x42a00000    # 80.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 318
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_80:I

    goto :goto_0

    .line 320
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_device_battery_100:I

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mBatteryImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "BP_FLY_LAVE_BATTERY"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mBatteryElectric:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public setBatteryPower(I)V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemotePowerText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemotePower:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemotePowerText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    .line 337
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_remote_battery_20:I

    .line 338
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemotePowerText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/aircraft/R$color;->content_red_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    if-ge p1, v0, :cond_3

    .line 341
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_remote_battery_40:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_4

    .line 343
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_remote_battery_60:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x50

    if-ge p1, v0, :cond_5

    .line 345
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_remote_battery_80:I

    goto :goto_0

    .line 347
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_remote_battery_100:I

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemotePower:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemotePowerText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public setConnectStatus(I)V
    .locals 2

    .line 132
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->status:I

    .line 133
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 135
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mSetUnPass:Z

    if-eqz p1, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez p1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->getWarnStatus()I

    move-result p1

    const/16 v0, 0x15

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_62_22:I

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setText(I)V

    .line 140
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->color_yellow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    goto :goto_1

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_35:I

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setText(I)V

    .line 143
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->color_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    goto :goto_1

    .line 148
    :cond_2
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->landing:Z

    if-eqz p1, :cond_3

    .line 149
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_TakeoffAndlanding_12:I

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setText(I)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_38:I

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setText(I)V

    .line 153
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->color_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mSetUnPass:Z

    .line 157
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Home_2:I

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setText(I)V

    .line 158
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    const-string p1, "\u8bbe\u5907\u672a\u8fde\u63a5 =====================>"

    .line 159
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mCurrentMode:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$array;->fly_mode_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->modeStr:[Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mCurrentMode:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/powervision/base/utils/FlyModeUtil;->getFlyModeIndex(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setGeneralMenu(Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->topMenuAgent:Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;

    return-void
.end method

.method public setLanding(ZZ)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->landing:Z

    .line 199
    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setConnectStatus(I)V

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->locked:Z

    .line 191
    iget p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->status:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setConnectStatus(I)V

    return-void
.end method

.method public setOtherMode(Ljava/lang/String;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mCurrentMode:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRemoteElectric(I)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemoteElectric:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    :cond_1
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    .line 361
    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_rc_signal_1:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x1e

    if-ge p1, v0, :cond_3

    .line 363
    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_rc_signal_2:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x28

    if-ge p1, v0, :cond_4

    .line 365
    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_rc_signal_3:I

    goto :goto_0

    .line 367
    :cond_4
    sget p1, Lcom/powervision/aircraft/R$mipmap;->aircraft_rc_signal_4:I

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mRemoteElectric:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method public setSatelliteNum(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mSatelliteNum:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 299
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->preMsg:Lcom/powervision/base/warning/HoverMessage;

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentTitle(Lcom/powervision/base/warning/HoverMessage;)V

    .line 216
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 222
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentTitle(Lcom/powervision/base/warning/HoverMessage;)V

    .line 223
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentTitle(Lcom/powervision/base/warning/HoverMessage;)V

    .line 231
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->msgList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/warning/HoverMessage;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colse size == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setUnCheckPass(Z)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 169
    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mSetUnPass:Z

    if-nez v1, :cond_1

    .line 170
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mSetUnPass:Z

    .line 171
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v1

    iget-boolean v1, v1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_33:I

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setText(I)V

    .line 173
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->color_red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_49:I

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setText(I)V

    .line 176
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mConnectStatus:Lcom/powervision/aircraft/ui/views/MarqueeTextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$color;->color_yellow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/views/MarqueeTextView;->setTextColor(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 179
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mSetUnPass:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->mSetUnPass:Z

    .line 181
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setConnectStatus(I)V

    :cond_2
    return-void
.end method

.method public setWarnStatus(I)V
    .locals 0

    .line 408
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView;->warnStatus:I

    return-void
.end method
