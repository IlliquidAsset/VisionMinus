.class public Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TrailCaptureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mImageOperate:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private mTextNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    sget v0, Lcom/powervision/aircraft/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 126
    sget v0, Lcom/powervision/aircraft/R$id;->image_operate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->mImageOperate:Landroid/widget/ImageView;

    .line 127
    sget v0, Lcom/powervision/aircraft/R$id;->text_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->mImageOperate:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    return-object p0
.end method
