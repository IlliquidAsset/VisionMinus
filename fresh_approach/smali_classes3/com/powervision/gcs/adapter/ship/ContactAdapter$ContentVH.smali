.class Lcom/powervision/gcs/adapter/ship/ContactAdapter$ContentVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/adapter/ship/ContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentVH"
.end annotation


# instance fields
.field tvMobile:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    sget v0, Lcom/powervision/gcs/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/adapter/ship/ContactAdapter$ContentVH;->tvName:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/powervision/gcs/R$id;->tv_mobile:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ContactAdapter$ContentVH;->tvMobile:Landroid/widget/TextView;

    return-void
.end method
