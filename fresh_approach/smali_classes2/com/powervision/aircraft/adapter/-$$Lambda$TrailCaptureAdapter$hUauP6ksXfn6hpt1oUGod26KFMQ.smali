.class public final synthetic Lcom/powervision/aircraft/adapter/-$$Lambda$TrailCaptureAdapter$hUauP6ksXfn6hpt1oUGod26KFMQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$TrailCaptureAdapter$hUauP6ksXfn6hpt1oUGod26KFMQ;->f$0:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    iput p2, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$TrailCaptureAdapter$hUauP6ksXfn6hpt1oUGod26KFMQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$TrailCaptureAdapter$hUauP6ksXfn6hpt1oUGod26KFMQ;->f$0:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    iget v1, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$TrailCaptureAdapter$hUauP6ksXfn6hpt1oUGod26KFMQ;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->lambda$onBindViewHolder$1$TrailCaptureAdapter(ILandroid/view/View;)V

    return-void
.end method
