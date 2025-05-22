.class public Lcom/powervision/base/views/AircraftGimBalView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AircraftGimBalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private gimbalSetAgent:Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;

.field private mCompleteBt:Landroid/widget/Button;

.field mHonriValueTv:Landroid/widget/TextView;

.field private mHonrizontalAddBt:Landroid/widget/Button;

.field private mHonrizontalReduceBt:Landroid/widget/Button;

.field mHonrizontalValue:I

.field private mYawAddBt:Landroid/widget/Button;

.field private mYawReduceBt:Landroid/widget/Button;

.field mYawValue:I

.field mYawValueTv:Landroid/widget/TextView;

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    .line 31
    iput v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    const/16 v0, 0x32

    .line 99
    iput v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->value:I

    .line 43
    invoke-direct {p0, p1}, Lcom/powervision/base/views/AircraftGimBalView;->initView(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/powervision/base/views/AircraftGimBalView;->setListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    .line 31
    iput p2, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    const/16 p2, 0x32

    .line 99
    iput p2, p0, Lcom/powervision/base/views/AircraftGimBalView;->value:I

    .line 49
    invoke-direct {p0, p1}, Lcom/powervision/base/views/AircraftGimBalView;->initView(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0}, Lcom/powervision/base/views/AircraftGimBalView;->setListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    .line 31
    iput p2, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    const/16 p2, 0x32

    .line 99
    iput p2, p0, Lcom/powervision/base/views/AircraftGimBalView;->value:I

    .line 55
    invoke-direct {p0, p1}, Lcom/powervision/base/views/AircraftGimBalView;->initView(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lcom/powervision/base/views/AircraftGimBalView;->setListener()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->context:Landroid/content/Context;

    .line 61
    sget v0, Lcom/powervision/base/R$layout;->aircraft_gimbal_fine_tuning_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 63
    sget v0, Lcom/powervision/base/R$id;->honrizontal_reduce_bt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalReduceBt:Landroid/widget/Button;

    .line 64
    sget v0, Lcom/powervision/base/R$id;->honrizontal_add_bt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalAddBt:Landroid/widget/Button;

    .line 65
    sget v0, Lcom/powervision/base/R$id;->honrizontal_velue_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValueTv:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/powervision/base/R$id;->yaw_reduce_bt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawReduceBt:Landroid/widget/Button;

    .line 68
    sget v0, Lcom/powervision/base/R$id;->yaw_add_bt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawAddBt:Landroid/widget/Button;

    .line 69
    sget v0, Lcom/powervision/base/R$id;->yaw_value_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonriValueTv:Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/powervision/base/R$id;->complete_bt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mCompleteBt:Landroid/widget/Button;

    return-void
.end method

.method private setListener()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalReduceBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalAddBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawReduceBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawAddBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mCompleteBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateHonrizontalValueViews(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 103
    iget p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    .line 104
    iget v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->value:I

    if-le p1, v0, :cond_1

    .line 105
    iput v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    goto :goto_0

    .line 108
    :cond_0
    iget p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    .line 109
    iget v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->value:I

    neg-int v1, v0

    if-ge p1, v1, :cond_1

    neg-int p1, v0

    .line 110
    iput p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    .line 114
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->gimbalSetAgent:Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;

    iget v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    invoke-interface {p1, v0}, Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;->setRollValue(I)V

    return-void
.end method

.method private updateYawValueViews(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 120
    iget p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    .line 121
    iget v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->value:I

    if-le p1, v0, :cond_1

    .line 122
    iput v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    goto :goto_0

    .line 125
    :cond_0
    iget p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    .line 126
    iget v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->value:I

    neg-int v1, v0

    if-ge p1, v1, :cond_1

    neg-int p1, v0

    .line 127
    iput p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    .line 130
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mYawValue"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->gimbalSetAgent:Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;

    iget v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    invoke-interface {p1, v0}, Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;->setYawValue(I)V

    return-void
.end method


# virtual methods
.method formatFloat(F)Ljava/lang/String;
    .locals 3

    const-string v0, "##0.0"

    .line 181
    invoke-virtual {p0, v0}, Lcom/powervision/base/views/AircraftGimBalView;->getDotSeparatorDecimalFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    float-to-double v1, p1

    .line 182
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDotSeparatorDecimalFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 2

    .line 186
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance p1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {p1}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v1, 0x2e

    .line 188
    invoke-virtual {p1, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 189
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 84
    sget v0, Lcom/powervision/base/R$id;->honrizontal_reduce_bt:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 85
    invoke-direct {p0, v1}, Lcom/powervision/base/views/AircraftGimBalView;->updateHonrizontalValueViews(Z)V

    goto :goto_0

    .line 86
    :cond_0
    sget v0, Lcom/powervision/base/R$id;->honrizontal_add_bt:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 87
    invoke-direct {p0, v2}, Lcom/powervision/base/views/AircraftGimBalView;->updateHonrizontalValueViews(Z)V

    goto :goto_0

    .line 88
    :cond_1
    sget v0, Lcom/powervision/base/R$id;->yaw_reduce_bt:I

    if-ne p1, v0, :cond_2

    .line 89
    invoke-direct {p0, v1}, Lcom/powervision/base/views/AircraftGimBalView;->updateYawValueViews(Z)V

    goto :goto_0

    .line 90
    :cond_2
    sget v0, Lcom/powervision/base/R$id;->yaw_add_bt:I

    if-ne p1, v0, :cond_3

    .line 91
    invoke-direct {p0, v2}, Lcom/powervision/base/views/AircraftGimBalView;->updateYawValueViews(Z)V

    goto :goto_0

    .line 92
    :cond_3
    sget v0, Lcom/powervision/base/R$id;->complete_bt:I

    if-ne p1, v0, :cond_4

    const/16 p1, 0x8

    .line 94
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/AircraftGimBalView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setGimbalSetListener(Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->gimbalSetAgent:Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;

    return-void
.end method

.method public setHonrizontalBtnColor(I)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalAddBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$mipmap;->honrizontal_add_unenable_img:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalReduceBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$mipmap;->honrizontal_reduce_img:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x3fb7000000000000L    # -50.0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalReduceBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$mipmap;->honrizontal_reduce_unenable_img:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalAddBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$mipmap;->honrizontal_add_img:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalReduceBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$mipmap;->honrizontal_reduce_img:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalAddBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$mipmap;->honrizontal_add_img:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setPitchValue(F)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValueTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, p1, v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/powervision/base/views/AircraftGimBalView;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-int p1, p1

    .line 169
    iput p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonrizontalValue:I

    .line 170
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/AircraftGimBalView;->setHonrizontalBtnColor(I)V

    return-void
.end method

.method public setYawBtnColor(I)V
    .locals 6

    int-to-double v0, p1

    const/4 p1, 0x0

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_0

    .line 150
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawAddBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/powervision/base/R$mipmap;->yaw_add_unenable_img:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawReduceBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/powervision/base/R$mipmap;->yaw_reduce_img:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawAddBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawReduceBt:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const-wide/high16 v3, -0x3fb7000000000000L    # -50.0

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_1

    .line 155
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawReduceBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/powervision/base/R$mipmap;->yaw_reduce_unenable_img:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawAddBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/powervision/base/R$mipmap;->yaw_add_img:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawAddBt:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawReduceBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawAddBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$mipmap;->yaw_add_img:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawReduceBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/powervision/base/views/AircraftGimBalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$mipmap;->yaw_reduce_img:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawAddBt:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    iget-object p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawReduceBt:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setYawValue(F)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/powervision/base/views/AircraftGimBalView;->mHonriValueTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, p1, v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/powervision/base/views/AircraftGimBalView;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mYawValue"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int p1, p1

    .line 176
    iput p1, p0, Lcom/powervision/base/views/AircraftGimBalView;->mYawValue:I

    .line 177
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/AircraftGimBalView;->setYawBtnColor(I)V

    return-void
.end method
