.class Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EditViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/ui/adapter/EditViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EditViewHolder"
.end annotation


# instance fields
.field private mEditTv:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 99
    sget v0, Lcom/lewis/edit/R$id;->edit_function:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->mEditTv:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->mEditTv:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->setTextViewDrawableColor(I)V

    return-void
.end method

.method private setTextViewDrawableColor(I)V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->mEditTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 105
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->mEditTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
