.class final Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;
.super Landroid/database/DataSetObserver;
.source "GridGroupedsSimpleAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataSetObserverExtension"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;

    invoke-static {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->access$200(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;)Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->access$300(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapter;)[Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->access$102(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;[Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;)[Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    .line 101
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;

    invoke-static {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->access$200(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;)Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->access$300(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapter;)[Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->access$102(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;[Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;)[Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;

    .line 107
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsSimpleAdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method
