.class public Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;
.super Landroid/widget/RelativeLayout;
.source "ShipFunctionAirlineSche.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipFunctionAirlineSche"


# instance fields
.field airlineSpeed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1006
    .end annotation
.end field

.field detailClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1000
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

.field onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x111b
    .end annotation
.end field

.field tvFunctionPause:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x117b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 38
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 43
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 48
    sget p2, Lcom/powervision/gcs/R$layout;->ship_function_detail_airline_sche:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 51
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMax(I)V

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 67
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;->onSpeedChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableActions()V
    .locals 2

    const-string v0, "ShipFunctionAirlineSche"

    const-string v1, "disableActions: "

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    return-void
.end method

.method public enableActions()V
    .locals 2

    const-string v0, "ShipFunctionAirlineSche"

    const-string v1, "enableActions: "

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    return-void
.end method

.method public isEnable()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setActionText(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->setActionText(Ljava/lang/String;)V

    return-void
.end method

.method public setActionText(Ljava/lang/String;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->tvFunctionPause:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnFunctionListener(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

    return-void
.end method

.method public ship_detail_close_iv()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1000
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

    invoke-interface {v0, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;->onClose(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V

    return-void
.end method

.method public tv_function_delete()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1179
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;->onReset()V

    :cond_0
    return-void
.end method

.method public tv_function_hide()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x117a
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;->onHidden()V

    :cond_0
    return-void
.end method

.method public tv_function_pause()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x117b
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche$IFunctionListener;->onStart()V

    :cond_0
    return-void
.end method
