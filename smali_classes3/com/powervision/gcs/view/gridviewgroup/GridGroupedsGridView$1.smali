.class Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;
.super Landroid/database/DataSetObserver;
.source "GridGroupedsGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-static {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->access$000(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-static {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->access$000(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V

    return-void
.end method
