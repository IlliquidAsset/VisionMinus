.class public Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "SmartOneKeyClipsModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backBt:Landroid/widget/ImageView;

.field private closeBt:Landroid/widget/ImageView;

.field private data:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEllipseLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mRecessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mScrewLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSurroundLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mToweringLayout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 27
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_smart_one_key_clips_layout:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mTitle:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_63:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->closeBt:Landroid/widget/ImageView;

    .line 35
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->backBt:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    sget p1, Lcom/powervision/aircraft/R$id;->clips_recess_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mRecessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    sget p1, Lcom/powervision/aircraft/R$id;->clips_surround_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mSurroundLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    sget p1, Lcom/powervision/aircraft/R$id;->clips_screw_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mScrewLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    sget p1, Lcom/powervision/aircraft/R$id;->clips_towering_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mToweringLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    sget p1, Lcom/powervision/aircraft/R$id;->clips_ellipse_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mEllipseLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 64
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    if-ne p1, v0, :cond_0

    .line 65
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_0

    .line 66
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_1

    .line 67
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_0

    .line 68
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->clips_recess_layout:I

    const-string v1, "onekey_clips_nemo"

    const/16 v2, 0xb1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 69
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    const-string p1, "\u6e10\u8fdc\u6a21\u5f0f"

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 72
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->clips_surround_layout:I

    if-ne p1, v0, :cond_3

    .line 73
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    const-string p1, "\u73af\u7ed5\u6a21\u5f0f"

    .line 75
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_3
    sget v0, Lcom/powervision/aircraft/R$id;->clips_screw_layout:I

    if-ne p1, v0, :cond_4

    .line 77
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    const-string p1, "\u87ba\u65cb\u6a21\u5f0f"

    .line 79
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_4
    sget v0, Lcom/powervision/aircraft/R$id;->clips_towering_layout:I

    if-ne p1, v0, :cond_5

    .line 81
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    const-string p1, "\u51b2\u5929\u6a21\u5f0f"

    .line 83
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$id;->clips_ellipse_layout:I

    if-ne p1, v0, :cond_6

    .line 85
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->data:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    const-string p1, "\u692d\u5706 \u6a21\u5f0f"

    .line 87
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 52
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->closeBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->backBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mRecessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mSurroundLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mScrewLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mToweringLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartOneKeyClipsModeFragment;->mEllipseLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
