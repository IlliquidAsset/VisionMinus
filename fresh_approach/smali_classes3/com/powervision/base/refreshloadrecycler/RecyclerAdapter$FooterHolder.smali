.class Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FooterHolder"
.end annotation


# instance fields
.field mMessage:Landroid/widget/TextView;

.field mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;->this$0:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    .line 93
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 94
    sget p1, Lcom/powervision/base/R$id;->footer_progress:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 95
    sget p1, Lcom/powervision/base/R$id;->footer_message:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter$FooterHolder;->mMessage:Landroid/widget/TextView;

    return-void
.end method
