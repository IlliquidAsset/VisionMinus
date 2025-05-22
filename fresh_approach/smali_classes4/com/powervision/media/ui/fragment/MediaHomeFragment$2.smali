.class Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;
.super Ljava/lang/Thread;
.source "MediaHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/fragment/MediaHomeFragment;->savePicture(Lcom/powervision/base/model/SelectModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

.field final synthetic val$sectionInfos:Ljava/util/List;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;Ljava/util/List;I)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    iput-object p2, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->val$sectionInfos:Ljava/util/List;

    iput p3, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 238
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 239
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->val$sectionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 241
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->val$sectionInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getImageDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->val$type:I

    if-nez v5, :cond_0

    const-string v5, ".jpg"

    goto :goto_1

    :cond_0
    const-string v5, ".mp4"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    iget v5, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->val$type:I

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3, v4}, Lcom/powervision/base/utils/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-virtual {v3}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5, v6}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->access$200(Lcom/powervision/media/ui/fragment/MediaHomeFragment;Landroid/content/Context;Ljava/io/File;)V

    mul-int/lit8 v3, v2, 0x64

    .line 245
    div-int/2addr v3, v0

    .line 246
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-static {v4}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->access$300(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "progress = = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 248
    iput v1, v4, Landroid/os/Message;->what:I

    .line 249
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 250
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-static {v3}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->access$300(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$2;->this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->access$300(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment$SaveHandler;->sendEmptyMessage(I)Z

    return-void
.end method
