.class public final synthetic Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$DgmFYLlFLx7wQyHmhSbCywnN7Ec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/fragment/MediaPreviewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$DgmFYLlFLx7wQyHmhSbCywnN7Ec;->f$0:Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    iput-object p2, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$DgmFYLlFLx7wQyHmhSbCywnN7Ec;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$DgmFYLlFLx7wQyHmhSbCywnN7Ec;->f$0:Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaPreviewFragment$DgmFYLlFLx7wQyHmhSbCywnN7Ec;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->lambda$loadPreviewImage$3$MediaPreviewFragment(Ljava/lang/String;)V

    return-void
.end method
