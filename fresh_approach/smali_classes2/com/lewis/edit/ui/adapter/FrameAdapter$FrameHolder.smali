.class Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FrameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/ui/adapter/FrameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameHolder"
.end annotation


# instance fields
.field private mFrame:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lewis/edit/ui/adapter/FrameAdapter;


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/adapter/FrameAdapter;Landroid/view/View;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;->this$0:Lcom/lewis/edit/ui/adapter/FrameAdapter;

    .line 87
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    sget p1, Lcom/lewis/edit/R$id;->image_frame:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;->mFrame:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;->mFrame:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method setImageWH()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;->mFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;->this$0:Lcom/lewis/edit/ui/adapter/FrameAdapter;

    invoke-static {v1}, Lcom/lewis/edit/ui/adapter/FrameAdapter;->access$100(Lcom/lewis/edit/ui/adapter/FrameAdapter;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;->this$0:Lcom/lewis/edit/ui/adapter/FrameAdapter;

    invoke-static {v1}, Lcom/lewis/edit/ui/adapter/FrameAdapter;->access$200(Lcom/lewis/edit/ui/adapter/FrameAdapter;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;->mFrame:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
