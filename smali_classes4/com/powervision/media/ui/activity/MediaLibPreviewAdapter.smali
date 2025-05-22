.class public Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;
.super Lcom/powervision/base/base/BaseRecyclerViewAdapter;
.source "MediaLibPreviewAdapter.java"

# interfaces
.implements Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;,
        Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseRecyclerViewAdapter<",
        "Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;",
        ">;",
        "Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPlayListener:Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;

.field private mPlayState:I

.field private mRefreshPos:I

.field private mUIShow:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/powervision/base/base/BaseRecyclerViewAdapter;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mUIShow:Z

    .line 31
    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method private controlPlay(Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method private downloadLrv(Lcom/powervision/localhttp/entity/FileInfo;I)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mOnPlayListener:Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0, p1, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;->downFile(Lcom/powervision/localhttp/entity/FileInfo;I)V

    :cond_0
    return-void
.end method

.method private getImageResId(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 157
    sget p1, Lcom/powervision/media/R$mipmap;->media_slow_motion:I

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 159
    sget p1, Lcom/powervision/media/R$mipmap;->media_delay_shot:I

    return p1

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 161
    sget p1, Lcom/powervision/media/R$mipmap;->media_hdr:I

    return p1

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 163
    sget p1, Lcom/powervision/media/R$mipmap;->media_burst:I

    return p1

    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 165
    sget p1, Lcom/powervision/media/R$mipmap;->media_aeb_burst:I

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getPlayIconResId()I
    .locals 2

    .line 122
    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mPlayState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    sget v0, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    return v0

    .line 125
    :cond_0
    sget v0, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    return v0
.end method

.method private getPreviewShow(Z)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 135
    iget p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mPlayState:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getVideoShow(Z)Z
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media----state  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 146
    iget p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mPlayState:I

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mPlayState:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->onBindViewHolder(Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;I)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "record"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "media-----isVideo= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isShow= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->getVideoShow(Z)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mPlayState:I

    .line 105
    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mUIShow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mUIShow:Z

    .line 107
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mOnPlayListener:Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;->uiHideShow(Z)V

    .line 111
    :cond_0
    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mRefreshPos:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 42
    sget v0, Lcom/powervision/media/R$layout;->media_lib_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$ViewHolder;-><init>(Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onStart()V
    .locals 2

    const/4 v0, 0x1

    .line 92
    iput v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mPlayState:I

    .line 93
    iget-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mUIShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mUIShow:Z

    .line 95
    iget-object v1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mOnPlayListener:Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;

    if-eqz v1, :cond_0

    .line 96
    invoke-interface {v1, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;->uiHideShow(Z)V

    .line 99
    :cond_0
    iget v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mRefreshPos:I

    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setOnPlayListener(Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mOnPlayListener:Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter$OnPlayListener;

    return-void
.end method

.method public showHideUI(ZI)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->mUIShow:Z

    .line 86
    invoke-virtual {p0, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewAdapter;->notifyItemChanged(I)V

    return-void
.end method
