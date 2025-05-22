.class public Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ConnectRemotePairActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->video_player:I

    const-class v1, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const-string v2, "field \'videoPlayer\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->iv_scan:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivScan\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->ivScan:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->iv_clear:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivClear\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->ivClear:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->et_psn:I

    const-class v1, Landroid/widget/EditText;

    const-string v2, "field \'etPsn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->etPsn:Landroid/widget/EditText;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->tv_finish:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvFinish\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->tvFinish:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/powervision/gcs/R$id;->tv_psn_indicator:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvPsnIndicator\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->tvPsnIndicator:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/powervision/gcs/R$id;->progress_bar:I

    const-class v1, Landroidx/core/widget/ContentLoadingProgressBar;

    const-string v2, "field \'progress_bar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 38
    sget v0, Lcom/powervision/gcs/R$id;->rl_finish:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'rl_finish\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->rl_finish:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->ivScan:Landroid/widget/ImageView;

    .line 50
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->ivClear:Landroid/widget/ImageView;

    .line 51
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->etPsn:Landroid/widget/EditText;

    .line 52
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->tvFinish:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->tvPsnIndicator:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->progress_bar:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 55
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->rl_finish:Landroid/widget/RelativeLayout;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
