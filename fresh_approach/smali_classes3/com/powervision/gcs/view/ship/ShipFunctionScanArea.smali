.class public Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;
.super Landroid/widget/RelativeLayout;
.source "ShipFunctionScanArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipFunctionScanArea"


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

.field private mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

.field mIVAirLineRect:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfcc
    .end annotation
.end field

.field mImagePolygon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfcb
    .end annotation
.end field

.field mIvAirLineTriangle:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfcd
    .end annotation
.end field

.field mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfa1
    .end annotation
.end field

.field mTextPolygon:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1065
    .end annotation
.end field

.field mTextSpacing:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1103
    .end annotation
.end field

.field mTextTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x110b
    .end annotation
.end field

.field mTextType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x110f
    .end annotation
.end field

.field mToggle:Landroid/widget/ToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1131
    .end annotation
.end field

.field onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field onValueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field shipTvRect:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1066
    .end annotation
.end field

.field thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x111b
    .end annotation
.end field

.field tvFunctionDelete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1179
    .end annotation
.end field

.field tvFunctionHide:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x117a
    .end annotation
.end field

.field tvFunctionPause:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x117b
    .end annotation
.end field

.field tvShipTriangle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11a3
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 124
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$2;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$2;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onValueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 148
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 71
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 124
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$2;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$2;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onValueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 148
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 76
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 124
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$2;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$2;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onValueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 148
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$3;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 81
    sget p2, Lcom/powervision/gcs/R$layout;->ship_function_detail_scan_area:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 84
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMax(I)V

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onValueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onSpeedChanged(I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMax(I)V

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 105
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 108
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mToggle:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public disableViews()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIvAirLineTriangle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIVAirLineRect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mImagePolygon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    return-void
.end method

.method public enableViews()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIvAirLineTriangle:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIVAirLineRect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mImagePolygon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    return-void
.end method

.method public setActionText(I)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->setActionText(Ljava/lang/String;)V

    return-void
.end method

.method public setActionText(Ljava/lang/String;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvFunctionPause:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnFunctionListener(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    return-void
.end method

.method public setSpeedEnable(Z)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mSeeker:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->thresholdValueBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    return-void
.end method

.method ship_airline_polygon()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfcb
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextType:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_3:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextTips:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_AI_24:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mImagePolygon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->zidingyi_blue:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextPolygon:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->actionsheet_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIVAirLineRect:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_function_detail_rect_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->shipTvRect:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onPolygonAreaSelect()V

    :cond_0
    return-void
.end method

.method ship_airline_rect()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfcc
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextType:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_AI_26:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextTips:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_AI_22:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIvAirLineTriangle:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_function_detail_triangle_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mTextPolygon:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mImagePolygon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->zidingyi_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->shipTvRect:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->actionsheet_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIVAirLineRect:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_function_detail_rect_select:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onRectangleAreaSelect()V

    :cond_0
    return-void
.end method

.method ship_airline_triangle()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfcd
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIvAirLineTriangle:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_function_detail_triangle_select:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->tvShipTriangle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->actionsheet_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mIVAirLineRect:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_function_detail_rect_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->shipTvRect:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onTriangleAreaSelect()V

    :cond_0
    return-void
.end method

.method ship_detail_close_iv()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1000
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    invoke-interface {v0, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onClose(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V

    return-void
.end method

.method tv_function_delete()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1179
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onDelete()V

    return-void
.end method

.method tv_function_hide()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x117a
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onHide()V

    return-void
.end method

.method tv_function_pause()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x117b
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onStop()V

    return-void
.end method
