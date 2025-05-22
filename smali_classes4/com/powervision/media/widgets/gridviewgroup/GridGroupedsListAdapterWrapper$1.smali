.class Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "GridGroupedsListAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper$1;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper$1;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper$1;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsListAdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method
