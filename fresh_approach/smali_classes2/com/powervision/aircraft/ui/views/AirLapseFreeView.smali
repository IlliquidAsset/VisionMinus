.class public Lcom/powervision/aircraft/ui/views/AirLapseFreeView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AirLapseFreeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;,
        Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;,
        Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;,
        Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;,
        Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;,
        Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirLapseView"


# instance fields
.field private closeListener:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;

.field private context:Landroid/content/Context;

.field private currentInterval:I

.field private currentLength:I

.field private currentSpeed:F

.field private handler:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;

.field private intervalAdapter:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;

.field private intervalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private lapseShootingInterval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lapseVideoLength:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lengthAdapter:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;

.field private mGroupZoomIn:Landroidx/constraintlayout/widget/Group;

.field private mGroupZoomOut:Landroidx/constraintlayout/widget/Group;

.field private mImageDot:Landroid/widget/ImageView;

.field private mImageZoomIn:Landroid/widget/ImageView;

.field private mImageZoomOut:Landroid/widget/ImageView;

.field private mTextIntervalTag:Landroid/widget/TextView;

.field private mTextMinNum:Landroid/widget/TextView;

.field private mTextMinTime:Landroid/widget/TextView;

.field private mTextShootingNum:Landroid/widget/TextView;

.field private mTextShootingTime:Landroid/widget/TextView;

.field private mTextSpeed:Landroid/widget/TextView;

.field private mTextSpeedTag:Landroid/widget/TextView;

.field private mTextVideoLengthTag:Landroid/widget/TextView;

.field private objectAnimator:Landroid/animation/ObjectAnimator;

.field private selectListener:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;

.field private speedListener:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;

.field private tempLapseShootingInterval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tempLapseVideoLength:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private test:Landroid/widget/Button;

.field private videoLengthMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private wheelShootingInterval:Lcom/powervision/base/views/widget/WheelView;

.field private wheelSpeed:Lcom/powervision/base/views/widget/WheelView;

.field private wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    .line 40
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    const/4 p2, 0x2

    .line 41
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentInterval:I

    const p2, 0x3fcccccd    # 1.6f

    .line 42
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentSpeed:F

    .line 328
    new-instance p2, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->handler:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;

    .line 91
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->closeListener:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentInterval:I

    return p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextShootingTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentInterval:I

    return p1
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextShootingNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextMinNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextMinTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->selectListener:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentSpeed:F

    return p0
.end method

.method static synthetic access$1502(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentSpeed:F

    return p1
.end method

.method static synthetic access$1600(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextSpeed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->speedListener:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setWheelData()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lapseShootingInterval:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lapseVideoLength:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lapseVideoLength:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Ljava/util/HashMap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->videoLengthMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lengthAdapter:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    return p0
.end method

.method static synthetic access$702(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    return p1
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/base/views/widget/WheelView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->context:Landroid/content/Context;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 95
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->context:Landroid/content/Context;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_lapse_free_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    sget v1, Lcom/powervision/aircraft/R$id;->wv_shooting_interval:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/views/widget/WheelView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelShootingInterval:Lcom/powervision/base/views/widget/WheelView;

    .line 99
    sget v1, Lcom/powervision/aircraft/R$id;->wv_video_length:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/views/widget/WheelView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    .line 100
    sget v1, Lcom/powervision/aircraft/R$id;->wv_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/views/widget/WheelView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelSpeed:Lcom/powervision/base/views/widget/WheelView;

    .line 101
    sget v1, Lcom/powervision/aircraft/R$id;->text_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextSpeed:Landroid/widget/TextView;

    .line 102
    sget v1, Lcom/powervision/aircraft/R$id;->text_shooting_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextShootingTime:Landroid/widget/TextView;

    .line 103
    sget v1, Lcom/powervision/aircraft/R$id;->text_shooting_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextShootingNum:Landroid/widget/TextView;

    .line 104
    sget v1, Lcom/powervision/aircraft/R$id;->layout_zoom_in:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomIn:Landroidx/constraintlayout/widget/Group;

    .line 105
    sget v1, Lcom/powervision/aircraft/R$id;->layout_zoom_out:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomOut:Landroidx/constraintlayout/widget/Group;

    .line 106
    sget v1, Lcom/powervision/aircraft/R$id;->image_zoom_in:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageZoomIn:Landroid/widget/ImageView;

    .line 107
    sget v1, Lcom/powervision/aircraft/R$id;->image_zoom_out:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageZoomOut:Landroid/widget/ImageView;

    .line 108
    sget v1, Lcom/powervision/aircraft/R$id;->text_mini_shooting_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextMinTime:Landroid/widget/TextView;

    .line 109
    sget v1, Lcom/powervision/aircraft/R$id;->text_mini_shooting_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextMinNum:Landroid/widget/TextView;

    .line 110
    sget v1, Lcom/powervision/aircraft/R$id;->image_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageDot:Landroid/widget/ImageView;

    .line 111
    sget v1, Lcom/powervision/aircraft/R$id;->text_interval:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextIntervalTag:Landroid/widget/TextView;

    .line 112
    sget v1, Lcom/powervision/aircraft/R$id;->text_speed_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextSpeedTag:Landroid/widget/TextView;

    .line 113
    sget v1, Lcom/powervision/aircraft/R$id;->text_video_length:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextVideoLengthTag:Landroid/widget/TextView;

    .line 115
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_93:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextIntervalTag:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(s)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AI_95:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextVideoLengthTag:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_95_1:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextSpeedTag:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(m/s)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget p1, Lcom/powervision/aircraft/R$id;->test:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->test:Landroid/widget/Button;

    .line 124
    new-instance v0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$1;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->initAnimation()V

    .line 135
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setAdapter()V

    return-void
.end method

.method private initAnimation()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageDot:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    .line 367
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 368
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 369
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x960

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setAdapter()V
    .locals 3

    .line 140
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getLapseShootingInterval()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lapseShootingInterval:Ljava/util/List;

    .line 141
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getLapseVideoLength()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lapseVideoLength:Ljava/util/List;

    .line 142
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getIntervalMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->intervalMap:Ljava/util/HashMap;

    .line 143
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getVideoLengthMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->videoLengthMap:Ljava/util/HashMap;

    .line 145
    new-instance v0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lapseShootingInterval:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->intervalAdapter:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;

    .line 146
    new-instance v0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lapseVideoLength:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lengthAdapter:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;

    .line 148
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelShootingInterval:Lcom/powervision/base/views/widget/WheelView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->intervalAdapter:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setAdapter(Lcom/powervision/base/views/widget/WheelView$WheelAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lengthAdapter:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setAdapter(Lcom/powervision/base/views/widget/WheelView$WheelAdapter;)V

    .line 151
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelSpeed:Lcom/powervision/base/views/widget/WheelView;

    new-instance v1, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$2;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setAdapter(Lcom/powervision/base/views/widget/WheelView$WheelAdapter;)V

    .line 163
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelShootingInterval:Lcom/powervision/base/views/widget/WheelView;

    new-instance v1, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setOnItemSelectedListener(Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    new-instance v1, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$4;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setOnItemSelectedListener(Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;)V

    .line 205
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelSpeed:Lcom/powervision/base/views/widget/WheelView;

    new-instance v1, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$5;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$5;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setOnItemSelectedListener(Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;)V

    .line 219
    sget v0, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->speedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelSpeed:Lcom/powervision/base/views/widget/WheelView;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelSpeed:Lcom/powervision/base/views/widget/WheelView;

    sget v2, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->speedIndex:I

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    .line 225
    :goto_0
    sget v0, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->lengthIndex:I

    if-ne v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    goto :goto_1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    sget v2, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->lengthIndex:I

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    .line 231
    :goto_1
    sget v0, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->intervalIndex:I

    if-ne v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelShootingInterval:Lcom/powervision/base/views/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    goto :goto_2

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelShootingInterval:Lcom/powervision/base/views/widget/WheelView;

    sget v1, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->intervalIndex:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageZoomIn:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/views/-$$Lambda$AirLapseFreeView$u3R8NYiIjRwXaZYxvq1OUw874Io;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$AirLapseFreeView$u3R8NYiIjRwXaZYxvq1OUw874Io;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageZoomOut:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/views/-$$Lambda$AirLapseFreeView$WwT_428tX3CnJmS6yHus2lZCy3c;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$AirLapseFreeView$WwT_428tX3CnJmS6yHus2lZCy3c;-><init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setData()V
    .locals 4

    .line 309
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDelayTime()F

    move-result v0

    float-to-int v0, v0

    .line 310
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getLapseFileDuration()I

    move-result v1

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setData: currentInterval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "currentSpeedIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->speedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AirLapseView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 314
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentInterval:I

    .line 315
    iput v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    .line 316
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->handler:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelShootingInterval:Lcom/powervision/base/views/widget/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    .line 319
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    :goto_0
    return-void
.end method

.method private setWheelData()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelShootingInterval:Lcom/powervision/base/views/widget/WheelView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lapseShootingInterval:Ljava/util/List;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    .line 325
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->lapseVideoLength:Ljava/util/List;

    iget v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public getCurrentInterval()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentInterval:I

    return v0
.end method

.method public getCurrentLength()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    return v0
.end method

.method public getCurrentSpeed()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentSpeed:F

    return v0
.end method

.method public getPhotoNum()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    mul-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public isTakingPhotoOver(I)Z
    .locals 1

    .line 347
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    mul-int/lit8 v0, v0, 0x1e

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUpdatePhotoNumbers(II)Z
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$setAdapter$0$AirLapseFreeView(Landroid/view/View;)V
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomIn:Landroidx/constraintlayout/widget/Group;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomOut:Landroidx/constraintlayout/widget/Group;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$setAdapter$1$AirLapseFreeView(Landroid/view/View;)V
    .locals 1

    .line 244
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomIn:Landroidx/constraintlayout/widget/Group;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomOut:Landroidx/constraintlayout/widget/Group;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public resetView()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomIn:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomOut:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 255
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->stopShooting()V

    .line 256
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setCloseListener(Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->closeListener:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;

    return-void
.end method

.method public setCurrentShootingNum(I)V
    .locals 5

    .line 275
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentInterval:I

    .line 276
    iget v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->currentLength:I

    .line 277
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextMinNum:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x1e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextMinTime:Landroid/widget/TextView;

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x1e

    mul-int p1, p1, v0

    sub-int/2addr v1, p1

    invoke-static {v1}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToDelay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurrentTime(Ljava/lang/String;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextShootingTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mTextMinTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelectListener(Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->selectListener:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;

    return-void
.end method

.method public setSpeedListener(Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->speedListener:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;

    return-void
.end method

.method public startShooting()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 287
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageZoomOut:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageDot:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomIn:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomOut:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public stopShooting()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    .line 299
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageZoomOut:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mImageDot:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomIn:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->mGroupZoomOut:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->handler:Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$FreeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 304
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setCurrentShootingNum(I)V

    return-void
.end method
