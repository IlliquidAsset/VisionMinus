.class public Lcom/powervision/aircraft/ui/recyclerCustom/NotifyItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "NotifyItemDecoration.java"


# instance fields
.field private distance:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 15
    iput p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/NotifyItemDecoration;->distance:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 20
    iget p2, p0, Lcom/powervision/aircraft/ui/recyclerCustom/NotifyItemDecoration;->distance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
