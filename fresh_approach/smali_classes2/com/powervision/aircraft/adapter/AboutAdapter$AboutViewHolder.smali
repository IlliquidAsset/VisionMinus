.class Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AboutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/adapter/AboutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AboutViewHolder"
.end annotation


# instance fields
.field private mBottomLine:Landroid/view/View;

.field private mCheckVersion:Landroid/widget/TextView;

.field private mVersionCode:Landroid/widget/TextView;

.field private mVersionName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    sget v0, Lcom/powervision/aircraft/R$id;->check_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;->mCheckVersion:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/powervision/aircraft/R$id;->version_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;->mVersionCode:Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/powervision/aircraft/R$id;->version_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;->mVersionName:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/powervision/aircraft/R$id;->bottom_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;->mBottomLine:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;->mVersionName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;->mVersionCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;->mCheckVersion:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;)Landroid/view/View;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;->mBottomLine:Landroid/view/View;

    return-object p0
.end method
