.class public final synthetic Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$S4doWHoWmIDzhBPFl0iRsQFrCrs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$S4doWHoWmIDzhBPFl0iRsQFrCrs;->f$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    iput p2, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$S4doWHoWmIDzhBPFl0iRsQFrCrs;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$S4doWHoWmIDzhBPFl0iRsQFrCrs;->f$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    iget v1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$S4doWHoWmIDzhBPFl0iRsQFrCrs;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->lambda$onBindViewHolder$0$MediaLibListAdapter(ILandroid/view/View;)V

    return-void
.end method
