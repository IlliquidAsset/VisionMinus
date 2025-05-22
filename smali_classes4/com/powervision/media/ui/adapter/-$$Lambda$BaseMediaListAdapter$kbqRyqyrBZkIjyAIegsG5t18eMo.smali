.class public final synthetic Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

.field public final synthetic f$1:Lcom/powervision/base/model/MediaModel;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;->f$0:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    iput-object p2, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;->f$1:Lcom/powervision/base/model/MediaModel;

    iput p3, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;->f$2:I

    iput-object p4, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;->f$3:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;->f$0:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;->f$1:Lcom/powervision/base/model/MediaModel;

    iget v2, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;->f$2:I

    iget-object v3, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;->f$3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->lambda$getView$0$BaseMediaListAdapter(Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
