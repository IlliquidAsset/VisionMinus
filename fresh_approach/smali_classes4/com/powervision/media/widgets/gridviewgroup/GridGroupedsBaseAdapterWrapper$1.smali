.class Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "GridGroupedsBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$1;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$1;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->updateCount()V

    .line 35
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$1;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$1;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->access$002(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;Z)Z

    .line 41
    iget-object v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$1;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method
