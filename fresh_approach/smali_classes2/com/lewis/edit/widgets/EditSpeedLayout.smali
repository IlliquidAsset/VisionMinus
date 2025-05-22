.class public Lcom/lewis/edit/widgets/EditSpeedLayout;
.super Landroid/widget/FrameLayout;
.source "EditSpeedLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;
    }
.end annotation


# instance fields
.field private mRgLayout:Landroid/widget/RadioGroup;

.field private mSpeed:F

.field private mSpeedCancel:Landroid/widget/ImageView;

.field private mSpeedConfirm:Landroid/widget/ImageView;

.field private mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/widgets/EditSpeedLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    iput p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeed:F

    .line 32
    invoke-direct {p0}, Lcom/lewis/edit/widgets/EditSpeedLayout;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditSpeedLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$layout;->edit_layou_speed:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    sget v1, Lcom/lewis/edit/R$id;->rg_speed_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mRgLayout:Landroid/widget/RadioGroup;

    .line 41
    sget v1, Lcom/lewis/edit/R$id;->iv_speed_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedCancel:Landroid/widget/ImageView;

    .line 42
    sget v1, Lcom/lewis/edit/R$id;->iv_speed_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedConfirm:Landroid/widget/ImageView;

    .line 43
    invoke-direct {p0}, Lcom/lewis/edit/widgets/EditSpeedLayout;->setListener()V

    return-void
.end method

.method private setListener()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mRgLayout:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedConfirm:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public initShowView()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeed:F

    .line 67
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mRgLayout:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 68
    sget v1, Lcom/lewis/edit/R$id;->rb_speed_3:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 95
    sget p1, Lcom/lewis/edit/R$id;->rb_speed_1:I

    if-ne p1, p2, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    .line 97
    iput p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeed:F

    .line 98
    iget-object p2, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    invoke-interface {p2, p1}, Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;->onSpeedChange(F)V

    goto :goto_0

    .line 99
    :cond_0
    sget p1, Lcom/lewis/edit/R$id;->rb_speed_2:I

    if-ne p1, p2, :cond_1

    const/high16 p1, 0x3f400000    # 0.75f

    .line 101
    iput p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeed:F

    .line 102
    iget-object p2, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    invoke-interface {p2, p1}, Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;->onSpeedChange(F)V

    goto :goto_0

    .line 103
    :cond_1
    sget p1, Lcom/lewis/edit/R$id;->rb_speed_3:I

    if-ne p1, p2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 105
    iput p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeed:F

    .line 106
    iget-object p2, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    invoke-interface {p2, p1}, Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;->onSpeedChange(F)V

    goto :goto_0

    .line 107
    :cond_2
    sget p1, Lcom/lewis/edit/R$id;->rb_speed_4:I

    if-ne p1, p2, :cond_3

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 109
    iput p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeed:F

    .line 110
    iget-object p2, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    invoke-interface {p2, p1}, Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;->onSpeedChange(F)V

    goto :goto_0

    .line 111
    :cond_3
    sget p1, Lcom/lewis/edit/R$id;->rb_speed_5:I

    if-ne p1, p2, :cond_4

    const/high16 p1, 0x40000000    # 2.0f

    .line 113
    iput p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeed:F

    .line 114
    iget-object p2, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    invoke-interface {p2, p1}, Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;->onSpeedChange(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 79
    sget v0, Lcom/lewis/edit/R$id;->iv_speed_cancel:I

    if-ne v0, p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    invoke-interface {p1}, Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;->onSpeedCancel()V

    goto :goto_0

    .line 82
    :cond_1
    sget v0, Lcom/lewis/edit/R$id;->iv_speed_confirm:I

    if-ne v0, p1, :cond_3

    .line 84
    iget p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 85
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    invoke-interface {p1}, Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;->onSpeedCancel()V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    invoke-interface {v0, p1}, Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;->onSpeedConfirm(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSpeedListener(Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/lewis/edit/widgets/EditSpeedLayout;->mSpeedListener:Lcom/lewis/edit/widgets/EditSpeedLayout$WorkSpeedListener;

    return-void
.end method
