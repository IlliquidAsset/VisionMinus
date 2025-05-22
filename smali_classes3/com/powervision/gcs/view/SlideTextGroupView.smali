.class public Lcom/powervision/gcs/view/SlideTextGroupView;
.super Landroid/widget/LinearLayout;
.source "SlideTextGroupView.java"


# instance fields
.field private wordAim:[C

.field private words:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "\u5411\u53f3\u6ed1\u52a8\u5c4f\u5e55\u786e\u8ba4\u60a8\u5df2\u6e05\u695a\u4e86\u89e3\u98de\u884c\u89c4\u5219"

    .line 16
    iput-object p2, p0, Lcom/powervision/gcs/view/SlideTextGroupView;->words:Ljava/lang/String;

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/SlideTextGroupView;->wordAim:[C

    const/4 p2, 0x0

    .line 22
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/SlideTextGroupView;->setOrientation(I)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SlideTextGroupView;->wordAim:[C

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 25
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    iget-object v1, p0, Lcom/powervision/gcs/view/SlideTextGroupView;->wordAim:[C

    aget-char v1, v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 28
    invoke-virtual {p0}, Lcom/powervision/gcs/view/SlideTextGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/powervision/gcs/view/SlideTextGroupView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
