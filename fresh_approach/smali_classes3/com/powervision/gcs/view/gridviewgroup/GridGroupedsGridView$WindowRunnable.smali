.class Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;
.super Ljava/lang/Object;
.source "GridGroupedsGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$1;)V
    .locals 0

    .line 1045
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-static {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->access$600(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;->this$0:Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;

    invoke-static {v0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;->access$700(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView;)I

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsGridView$WindowRunnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
