.class public Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "DelayPhotoGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelText:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContentText:Landroid/widget/TextView;

.field private mSureText:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private modeCode:I

.field private sparseIntArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 30
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_clips_guide_layout:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "delay_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->modeCode:I

    .line 49
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->modeCode:I

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mTextTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_81:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mTitleText:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_81:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mContentText:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_82:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    sget p1, Lcom/powervision/aircraft/R$id;->clips_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mTextTitle:Landroid/widget/TextView;

    .line 36
    sget p1, Lcom/powervision/aircraft/R$id;->clips_title_under:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mTitleText:Landroid/widget/TextView;

    .line 37
    sget p1, Lcom/powervision/aircraft/R$id;->clips_content:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mContentText:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/powervision/aircraft/R$id;->clips_cancle_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mCancelText:Landroid/widget/TextView;

    .line 39
    sget p1, Lcom/powervision/aircraft/R$id;->clips_ok_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mSureText:Landroid/widget/TextView;

    .line 41
    sget p1, Lcom/powervision/aircraft/R$id;->check_box:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 70
    sget v0, Lcom/powervision/aircraft/R$id;->clips_ok_bt:I

    if-ne p1, v0, :cond_0

    .line 71
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->modeCode:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc2

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 76
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->clips_cancle_bt:I

    if-ne p1, v0, :cond_1

    .line 77
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 62
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mCancelText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayPhotoGuideFragment;->mSureText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
