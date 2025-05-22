.class public Lcom/powervision/media/widgets/FSTitlebar;
.super Landroid/widget/RelativeLayout;
.source "FSTitlebar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;

.field private mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

.field private mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

.field private mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/FSTitlebar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/media/widgets/FSTitlebar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget p3, Lcom/powervision/media/R$layout;->media_view_bgatitlebar:I

    invoke-static {p1, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->initView()V

    .line 44
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->setListener()V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/powervision/media/widgets/FSTitlebar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 1

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/powervision/media/R$styleable;->FSTitlebar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/powervision/media/widgets/FSTitlebar;->initAttr(ILandroid/content/res/TypedArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 1

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public getLeftCtv()Landroidx/appcompat/widget/AppCompatCheckedTextView;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    return-object v0
.end method

.method public getRightCtv()Landroidx/appcompat/widget/AppCompatCheckedTextView;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    return-object v0
.end method

.method public getTitleCtv()Landroidx/appcompat/widget/AppCompatCheckedTextView;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    return-object v0
.end method

.method protected getViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VT:",
            "Landroid/view/View;",
            ">(I)TVT;"
        }
    .end annotation

    .line 258
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public hiddenLeftCtv()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public hiddenRightCtv()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public hiddenTitleCtv()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setVisibility(I)V

    return-void
.end method

.method protected initAttr(ILandroid/content/res/TypedArray;)V
    .locals 4

    .line 71
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_leftText:I

    if-ne p1, v0, :cond_0

    .line 72
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setLeftText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 73
    :cond_0
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_titleText:I

    if-ne p1, v0, :cond_1

    .line 74
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 75
    :cond_1
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_rightText:I

    if-ne p1, v0, :cond_2

    .line 76
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setRightText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 77
    :cond_2
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_leftDrawable:I

    if-ne p1, v0, :cond_3

    .line 78
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 79
    :cond_3
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_titleDrawable:I

    if-ne p1, v0, :cond_4

    .line 80
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 81
    :cond_4
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_rightDrawable:I

    if-ne p1, v0, :cond_5

    .line 82
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 83
    :cond_5
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_leftAndRightTextSize:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 84
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, v2}, Lcom/powervision/media/widgets/FSTitlebar;->sp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 85
    iget-object p2, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setTextSize(IF)V

    .line 86
    iget-object p2, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p2, v1, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 87
    :cond_6
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_titleTextSize:I

    if-ne p1, v0, :cond_7

    .line 88
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/powervision/media/widgets/FSTitlebar;->sp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 89
    :cond_7
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_leftAndRightTextColor:I

    if-ne p1, v0, :cond_8

    .line 90
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 91
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 92
    :cond_8
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_titleTextColor:I

    if-ne p1, v0, :cond_9

    .line 93
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 94
    :cond_9
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_titleDrawablePadding:I

    const/high16 v2, 0x40400000    # 3.0f

    if-ne p1, v0, :cond_a

    .line 95
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/powervision/media/widgets/FSTitlebar;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_0

    .line 96
    :cond_a
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_leftDrawablePadding:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_b

    .line 97
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/powervision/media/widgets/FSTitlebar;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_0

    .line 98
    :cond_b
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_rightDrawablePadding:I

    if-ne p1, v0, :cond_c

    .line 99
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/powervision/media/widgets/FSTitlebar;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_0

    .line 100
    :cond_c
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_leftAndRightPadding:I

    if-ne p1, v0, :cond_d

    .line 101
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/powervision/media/widgets/FSTitlebar;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 102
    iget-object p2, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p2, p1, v1, p1, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setPadding(IIII)V

    .line 103
    iget-object p2, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p2, p1, v1, p1, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 104
    :cond_d
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_leftMaxWidth:I

    const/high16 v2, 0x42aa0000    # 85.0f

    if-ne p1, v0, :cond_e

    .line 105
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/powervision/media/widgets/FSTitlebar;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setLeftCtvMaxWidth(I)V

    goto :goto_0

    .line 106
    :cond_e
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_rightMaxWidth:I

    if-ne p1, v0, :cond_f

    .line 107
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/powervision/media/widgets/FSTitlebar;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setRightCtvMaxWidth(I)V

    goto :goto_0

    .line 108
    :cond_f
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_titleMaxWidth:I

    if-ne p1, v0, :cond_10

    .line 109
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43100000    # 144.0f

    invoke-static {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleCtvMaxWidth(I)V

    goto :goto_0

    .line 110
    :cond_10
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_isTitleTextBold:I

    if-ne p1, v0, :cond_11

    .line 111
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 112
    :cond_11
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_isLeftTextBold:I

    if-ne p1, v0, :cond_12

    .line 113
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 114
    :cond_12
    sget v0, Lcom/powervision/media/R$styleable;->FSTitlebar_fstitlebar_isRightTextBold:I

    if-ne p1, v0, :cond_13

    .line 115
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_13
    :goto_0
    return-void
.end method

.method protected initView()V
    .locals 1

    .line 59
    sget v0, Lcom/powervision/media/R$id;->ctv_bgatitlebar_left:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/FSTitlebar;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    iput-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 60
    sget v0, Lcom/powervision/media/R$id;->ctv_bgatitlebar_right:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/FSTitlebar;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    iput-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 61
    sget v0, Lcom/powervision/media/R$id;->ctv_bgatitlebar_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/FSTitlebar;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    iput-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mDelegate:Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 236
    sget v0, Lcom/powervision/media/R$id;->ctv_bgatitlebar_left:I

    if-ne p1, v0, :cond_0

    .line 237
    iget-object p1, p0, Lcom/powervision/media/widgets/FSTitlebar;->mDelegate:Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;->onClickLeftCtv()V

    goto :goto_0

    .line 238
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->ctv_bgatitlebar_title:I

    if-ne p1, v0, :cond_1

    .line 239
    iget-object p1, p0, Lcom/powervision/media/widgets/FSTitlebar;->mDelegate:Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;->onClickTitleCtv()V

    goto :goto_0

    .line 240
    :cond_1
    sget v0, Lcom/powervision/media/R$id;->ctv_bgatitlebar_right:I

    if-ne p1, v0, :cond_2

    .line 241
    iget-object p1, p0, Lcom/powervision/media/widgets/FSTitlebar;->mDelegate:Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;->onClickRightCtv()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDelegate(Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/powervision/media/widgets/FSTitlebar;->mDelegate:Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;

    return-void
.end method

.method public setLeftCtvChecked(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public setLeftCtvMaxWidth(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setMaxWidth(I)V

    return-void
.end method

.method public setLeftDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 153
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->showLeftCtv()V

    return-void
.end method

.method public setLeftText(I)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setLeftText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->showLeftCtv()V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightCtvChecked(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public setRightCtvMaxWidth(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setMaxWidth(I)V

    return-void
.end method

.method public setRightDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 203
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->showRightCtv()V

    return-void
.end method

.method public setRightText(I)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setRightText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->showRightCtv()V

    return-void
.end method

.method public setRightText(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setTextColor(I)V

    .line 196
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->showRightCtv()V

    return-void
.end method

.method public setTitleBackground(I)V
    .locals 0

    return-void
.end method

.method public setTitleCtvChecked(Z)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public setTitleCtvMaxWidth(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setMaxWidth(I)V

    return-void
.end method

.method public setTitleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 176
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->showTitleCtv()V

    return-void
.end method

.method public setTitleText(I)V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p0}, Lcom/powervision/media/widgets/FSTitlebar;->showTitleCtv()V

    return-void
.end method

.method public showLeftCtv()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mLeftCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public showRightCtv()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mRightCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public showTitleCtv()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/powervision/media/widgets/FSTitlebar;->mTitleCtv:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setVisibility(I)V

    return-void
.end method
