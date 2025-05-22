.class public Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/user/ui/adapter/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mImageDot:Landroid/widget/ImageView;

.field private mImageHeader:Landroid/widget/ImageView;

.field private mTextDate:Landroid/widget/TextView;

.field private mTextDesc:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 103
    sget v0, Lcom/powervision/user/R$id;->image_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mImageHeader:Landroid/widget/ImageView;

    .line 104
    sget v0, Lcom/powervision/user/R$id;->image_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mImageDot:Landroid/widget/ImageView;

    .line 105
    sget v0, Lcom/powervision/user/R$id;->text_item_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mTextDate:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/powervision/user/R$id;->text_item_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mTextDesc:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/powervision/user/R$id;->text_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mTextTitle:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/powervision/user/R$id;->view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mImageHeader:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mTextDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mTextDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mTextTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->mImageDot:Landroid/widget/ImageView;

    return-object p0
.end method
