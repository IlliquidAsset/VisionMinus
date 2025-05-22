.class Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MediaLibPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 299
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "media---onScrollStateChanged11111111111111"

    .line 300
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "fsdfasdfadsffasdfaf"

    const-string v1, "==============="

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    .line 303
    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Lcom/powervision/media/widgets/TextureVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 304
    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Lcom/powervision/media/widgets/TextureVideoPlayer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setScrollX(I)V

    .line 307
    :cond_0
    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$100(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 308
    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$100(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    .line 309
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p2

    .line 310
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$200(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {v0, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$202(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;I)I

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "media---onScrolled"

    .line 312
    invoke-static {v0, p2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$300(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V

    .line 314
    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Lcom/powervision/media/widgets/TextureVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/media/widgets/TextureVideoPlayer;->stopPlay()V

    .line 317
    :cond_1
    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p2, p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$402(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;I)I

    :cond_2
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 323
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const-string p1, "fsdfasdfadsffasdfaf"

    const-string p3, "---------------"

    .line 324
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$400(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$402(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;I)I

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "media---onScrolled "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$400(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Lcom/powervision/media/widgets/TextureVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/media/widgets/TextureVideoPlayer;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$000(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Lcom/powervision/media/widgets/TextureVideoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$1;->this$0:Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-static {p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$400(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setScrollX(I)V

    :cond_0
    return-void
.end method
