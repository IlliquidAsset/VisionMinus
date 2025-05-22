.class public final synthetic Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$7izds4kh0YTQdTKxu3f9_hyFXKg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$7izds4kh0YTQdTKxu3f9_hyFXKg;->f$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    iput-object p2, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$7izds4kh0YTQdTKxu3f9_hyFXKg;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$7izds4kh0YTQdTKxu3f9_hyFXKg;->f$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaHomeFragment$7izds4kh0YTQdTKxu3f9_hyFXKg;->f$1:Landroid/app/Dialog;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->lambda$showBottomDialog$5$MediaHomeFragment(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
