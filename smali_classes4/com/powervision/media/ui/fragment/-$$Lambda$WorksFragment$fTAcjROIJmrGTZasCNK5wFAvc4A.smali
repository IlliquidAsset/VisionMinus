.class public final synthetic Lcom/powervision/media/ui/fragment/-$$Lambda$WorksFragment$fTAcjROIJmrGTZasCNK5wFAvc4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/media/ui/adapter/WorksAdapter$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/fragment/WorksFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/fragment/WorksFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$WorksFragment$fTAcjROIJmrGTZasCNK5wFAvc4A;->f$0:Lcom/powervision/media/ui/fragment/WorksFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/powervision/base/model/MediaModel;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$WorksFragment$fTAcjROIJmrGTZasCNK5wFAvc4A;->f$0:Lcom/powervision/media/ui/fragment/WorksFragment;

    invoke-virtual {v0, p1}, Lcom/powervision/media/ui/fragment/WorksFragment;->lambda$setListener$0$WorksFragment(Lcom/powervision/base/model/MediaModel;)V

    return-void
.end method
