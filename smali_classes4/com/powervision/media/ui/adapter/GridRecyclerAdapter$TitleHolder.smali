.class Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GridRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TitleHolder"
.end annotation


# instance fields
.field mGroupSelect:Landroid/widget/TextView;

.field mTextTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 370
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 371
    sget v0, Lcom/powervision/media/R$id;->media_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;->mTextTitle:Landroid/widget/TextView;

    .line 372
    sget v0, Lcom/powervision/media/R$id;->media_group_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;->mGroupSelect:Landroid/widget/TextView;

    return-void
.end method
