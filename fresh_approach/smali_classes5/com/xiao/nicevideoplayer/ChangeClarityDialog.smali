.class public Lcom/xiao/nicevideoplayer/ChangeClarityDialog;
.super Landroid/app/Dialog;
.source "ChangeClarityDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;
    }
.end annotation


# instance fields
.field private mCurrentCheckedIndex:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    sget v0, Lcom/xiao/nicevideoplayer/R$style;->dialog_change_clarity:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mListener:Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mCurrentCheckedIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mCurrentCheckedIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 30
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 32
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$1;

    invoke-direct {v1, p0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$1;-><init>(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 46
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 49
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/NiceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 51
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mListener:Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;->onClarityNotChanged()V

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public setClarityGrade(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 61
    iput p2, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mCurrentCheckedIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/xiao/nicevideoplayer/R$layout;->item_change_clarity:I

    iget-object v4, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 66
    new-instance v3, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;

    invoke-direct {v3, p0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog$2;-><init>(Lcom/xiao/nicevideoplayer/ChangeClarityDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v1, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 85
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 87
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    :goto_2
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 89
    iget-object v4, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOnClarityCheckedListener(Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->mListener:Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;

    return-void
.end method
