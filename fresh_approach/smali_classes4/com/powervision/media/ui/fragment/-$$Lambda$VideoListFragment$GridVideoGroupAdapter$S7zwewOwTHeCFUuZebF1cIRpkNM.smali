.class public final synthetic Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

.field public final synthetic f$1:Lcom/powervision/base/model/MediaModel;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;->f$0:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    iput-object p2, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;->f$1:Lcom/powervision/base/model/MediaModel;

    iput p3, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;->f$2:I

    iput-object p4, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;->f$3:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;->f$0:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;->f$1:Lcom/powervision/base/model/MediaModel;

    iget v2, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;->f$2:I

    iget-object v3, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;->f$3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->lambda$getView$1$VideoListFragment$GridVideoGroupAdapter(Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
