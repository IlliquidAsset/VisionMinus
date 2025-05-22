.class public Lcom/powervision/aircraft/ui/views/BarrierGroup;
.super Landroid/widget/RelativeLayout;
.source "BarrierGroup.java"


# instance fields
.field private barrieView:Lcom/powervision/aircraft/ui/views/BarrierView;

.field private barrierText:Landroid/widget/TextView;

.field private barrierText1:Landroid/widget/TextView;

.field private barrierText2:Landroid/widget/TextView;

.field private barrierText3:Landroid/widget/TextView;

.field private barrierText4:Landroid/widget/TextView;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/BarrierGroup;->context:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierGroup;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_barrier_layout:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 31
    sget v1, Lcom/powervision/aircraft/R$id;->barrier_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/BarrierGroup;->barrierText:Landroid/widget/TextView;

    .line 36
    sget v1, Lcom/powervision/aircraft/R$id;->barrier_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/BarrierView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierGroup;->barrieView:Lcom/powervision/aircraft/ui/views/BarrierView;

    return-void
.end method


# virtual methods
.method public setBarrierValue(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierGroup;->barrierText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierGroup;->barrierText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBarrierView(FFFF)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/BarrierGroup;->barrieView:Lcom/powervision/aircraft/ui/views/BarrierView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/aircraft/ui/views/BarrierView;->getDistanceData(FFFF)V

    return-void
.end method
