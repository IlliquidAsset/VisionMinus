.class public Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessageDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/user/ui/adapter/MessageDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private divider:Landroid/view/View;

.field private mGroupTextMore:Landroidx/constraintlayout/widget/Group;

.field private mImageShow:Landroid/widget/ImageView;

.field private mTextDate:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 89
    sget v0, Lcom/powervision/user/R$id;->group_text_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->mGroupTextMore:Landroidx/constraintlayout/widget/Group;

    .line 91
    sget v0, Lcom/powervision/user/R$id;->text_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->mTextTitle:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/powervision/user/R$id;->image_show:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->mImageShow:Landroid/widget/ImageView;

    .line 93
    sget v0, Lcom/powervision/user/R$id;->text_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->mTextDate:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/powervision/user/R$id;->view_divide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->divider:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->mGroupTextMore:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->mTextTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->mImageShow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->mTextDate:Landroid/widget/TextView;

    return-object p0
.end method
