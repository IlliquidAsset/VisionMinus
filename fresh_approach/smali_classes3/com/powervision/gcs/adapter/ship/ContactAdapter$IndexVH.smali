.class Lcom/powervision/gcs/adapter/ship/ContactAdapter$IndexVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/adapter/ship/ContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexVH"
.end annotation


# instance fields
.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    sget v0, Lcom/powervision/gcs/R$id;->tv_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ContactAdapter$IndexVH;->tv:Landroid/widget/TextView;

    return-void
.end method
