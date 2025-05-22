.class public final synthetic Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$1X58V1fDYzXqxslwJeysWejY8aE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$1X58V1fDYzXqxslwJeysWejY8aE;->f$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/media/ui/activity/-$$Lambda$MediaLibPreviewActivity$1X58V1fDYzXqxslwJeysWejY8aE;->f$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->lambda$loadStuckWork$3$MediaLibPreviewActivity()V

    return-void
.end method
