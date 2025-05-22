.class public Lcom/powervision/handheld/ui/views/IntelligenceView;
.super Landroid/widget/RelativeLayout;
.source "IntelligenceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/views/IntelligenceView$IntelligenceInter;
    }
.end annotation


# instance fields
.field private delayLayout:Landroid/widget/RelativeLayout;

.field private intelligenceInter:Lcom/powervision/handheld/ui/views/IntelligenceView$IntelligenceInter;

.field private mCloseImg:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mHDRLayout:Landroid/widget/RelativeLayout;

.field private panoramicLayout:Landroid/widget/RelativeLayout;

.field private slowMotionLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/IntelligenceView;->initView()V

    .line 35
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/IntelligenceView;->setListener()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$layout;->handhel_intelligence_menu_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    sget v1, Lcom/powervision/handheld/R$id;->handheld_delay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->delayLayout:Landroid/widget/RelativeLayout;

    .line 41
    sget v1, Lcom/powervision/handheld/R$id;->handheld_slow_motion_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->slowMotionLayout:Landroid/widget/RelativeLayout;

    .line 42
    sget v1, Lcom/powervision/handheld/R$id;->handheld_panoramic_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->panoramicLayout:Landroid/widget/RelativeLayout;

    .line 43
    sget v1, Lcom/powervision/handheld/R$id;->handheld_hdr_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->mHDRLayout:Landroid/widget/RelativeLayout;

    .line 44
    sget v1, Lcom/powervision/handheld/R$id;->handheld_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->mCloseImg:Landroid/widget/ImageView;

    return-void
.end method

.method private setListener()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->delayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->slowMotionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->panoramicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->mHDRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->mCloseImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 58
    sget v0, Lcom/powervision/handheld/R$id;->handheld_delay_layout:I

    .line 61
    sget v0, Lcom/powervision/handheld/R$id;->handheld_slow_motion_layout:I

    .line 64
    sget v0, Lcom/powervision/handheld/R$id;->handheld_panoramic_layout:I

    .line 67
    sget v0, Lcom/powervision/handheld/R$id;->handheld_hdr_layout:I

    .line 70
    sget v0, Lcom/powervision/handheld/R$id;->handheld_close:I

    if-ne p1, v0, :cond_0

    .line 71
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->intelligenceInter:Lcom/powervision/handheld/ui/views/IntelligenceView$IntelligenceInter;

    invoke-interface {p1}, Lcom/powervision/handheld/ui/views/IntelligenceView$IntelligenceInter;->mCloseAI()V

    :cond_0
    return-void
.end method

.method public setIntelligenceListener(Lcom/powervision/handheld/ui/views/IntelligenceView$IntelligenceInter;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/IntelligenceView;->intelligenceInter:Lcom/powervision/handheld/ui/views/IntelligenceView$IntelligenceInter;

    return-void
.end method
