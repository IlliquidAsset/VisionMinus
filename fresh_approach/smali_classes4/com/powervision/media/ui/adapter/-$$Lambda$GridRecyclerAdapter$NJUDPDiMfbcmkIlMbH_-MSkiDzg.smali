.class public final synthetic Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$NJUDPDiMfbcmkIlMbH_-MSkiDzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$NJUDPDiMfbcmkIlMbH_-MSkiDzg;->f$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    iput p2, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$NJUDPDiMfbcmkIlMbH_-MSkiDzg;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$NJUDPDiMfbcmkIlMbH_-MSkiDzg;->f$0:Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;

    iget v1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$NJUDPDiMfbcmkIlMbH_-MSkiDzg;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->lambda$onBindViewHolder$0$GridRecyclerAdapter(ILandroid/view/View;)V

    return-void
.end method
