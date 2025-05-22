.class public final synthetic Lcom/powervision/media/ui/adapter/-$$Lambda$WorksAdapter$iakRmaYM4Y5u5MU378nA6W5bks0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/adapter/WorksAdapter;

.field public final synthetic f$1:Lcom/powervision/base/model/MediaModel;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/adapter/WorksAdapter;Lcom/powervision/base/model/MediaModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$WorksAdapter$iakRmaYM4Y5u5MU378nA6W5bks0;->f$0:Lcom/powervision/media/ui/adapter/WorksAdapter;

    iput-object p2, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$WorksAdapter$iakRmaYM4Y5u5MU378nA6W5bks0;->f$1:Lcom/powervision/base/model/MediaModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$WorksAdapter$iakRmaYM4Y5u5MU378nA6W5bks0;->f$0:Lcom/powervision/media/ui/adapter/WorksAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$WorksAdapter$iakRmaYM4Y5u5MU378nA6W5bks0;->f$1:Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/media/ui/adapter/WorksAdapter;->lambda$onBindViewHolder$0$WorksAdapter(Lcom/powervision/base/model/MediaModel;Landroid/view/View;)V

    return-void
.end method
