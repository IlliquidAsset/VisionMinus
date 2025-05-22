.class public Lcom/powervision/base/adapter/LSpinnerAdapter;
.super Ljava/lang/Object;
.source "LSpinnerAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/appcompat/widget/AppCompatSpinner;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mList:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/widget/AppCompatSpinner;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 35
    iput-object p2, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 46
    iget-object p2, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/powervision/base/R$layout;->spinner_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 47
    sget p3, Lcom/powervision/base/R$id;->spinner_item:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$color;->blue:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 52
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 89
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    const/high16 v0, 0x41700000    # 15.0f

    .line 90
    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p3, 0x11

    .line 91
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    iget-object p3, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/powervision/base/R$color;->blue:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object p3, p0, Lcom/powervision/base/adapter/LSpinnerAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
