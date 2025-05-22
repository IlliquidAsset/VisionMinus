.class public Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ConnectSeekerPairActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->video_player:I

    const-class v1, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    const-string v2, "field \'videoPlayer\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->iv_scan:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivScan\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->ivScan:Landroid/widget/ImageView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->et_psn:I

    const-class v1, Landroid/widget/EditText;

    const-string v2, "field \'etPsn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->etPsn:Landroid/widget/EditText;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->tv_finish:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvFinish\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->tvFinish:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;

    .line 42
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->videoPlayer:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 43
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->ivScan:Landroid/widget/ImageView;

    .line 44
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->etPsn:Landroid/widget/EditText;

    .line 45
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;->tvFinish:Landroid/widget/TextView;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
