.class public Lcom/powervision/gcs/view/ship/ShipLMHView;
.super Landroid/widget/LinearLayout;
.source "ShipLMHView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;
    }
.end annotation


# static fields
.field public static final SPEED_LEVEL_HIGH:I = 0x3

.field public static final SPEED_LEVEL_LOW:I = 0x1

.field public static final SPEED_LEVEL_MID:I = 0x2


# instance fields
.field private mLMHListener:Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;

.field rbH:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf49
    .end annotation
.end field

.field rbL:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf4a
    .end annotation
.end field

.field rbM:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf4b
    .end annotation
.end field

.field rg:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf67
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/ShipLMHView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipLMHView;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipLMHView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->gcs_ship_lmh_view_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 51
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const/16 p1, 0xf4a

    if-ne p2, p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->mLMHListener:Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;->onLMHButtonChecked(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xf4b

    if-ne p2, p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->mLMHListener:Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;->onLMHButtonChecked(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xf49

    if-ne p2, p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->mLMHListener:Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;->onLMHButtonChecked(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbH:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbL:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbM:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method public setLMHListener(Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->mLMHListener:Lcom/powervision/gcs/view/ship/ShipLMHView$LMHListener;

    return-void
.end method

.method public setLMHValue(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbH:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbM:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbL:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method
