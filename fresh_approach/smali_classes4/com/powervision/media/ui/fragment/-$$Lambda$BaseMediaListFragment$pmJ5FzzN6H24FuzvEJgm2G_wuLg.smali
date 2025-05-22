.class public final synthetic Lcom/powervision/media/ui/fragment/-$$Lambda$BaseMediaListFragment$pmJ5FzzN6H24FuzvEJgm2G_wuLg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

.field public final synthetic f$1:Lcom/powervision/base/views/LoadingProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;Lcom/powervision/base/views/LoadingProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$BaseMediaListFragment$pmJ5FzzN6H24FuzvEJgm2G_wuLg;->f$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    iput-object p2, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$BaseMediaListFragment$pmJ5FzzN6H24FuzvEJgm2G_wuLg;->f$1:Lcom/powervision/base/views/LoadingProgressBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$BaseMediaListFragment$pmJ5FzzN6H24FuzvEJgm2G_wuLg;->f$0:Lcom/powervision/media/ui/fragment/BaseMediaListFragment;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$BaseMediaListFragment$pmJ5FzzN6H24FuzvEJgm2G_wuLg;->f$1:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->lambda$null$0$BaseMediaListFragment(Lcom/powervision/base/views/LoadingProgressBar;)V

    return-void
.end method
