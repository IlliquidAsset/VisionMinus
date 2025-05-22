.class public Lcom/powervision/media/widgets/SimplePaddingDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SimplePaddingDecoration.java"


# instance fields
.field private dividerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$dimen;->dp_10:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/powervision/media/widgets/SimplePaddingDecoration;->dividerHeight:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 23
    iget p2, p0, Lcom/powervision/media/widgets/SimplePaddingDecoration;->dividerHeight:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
