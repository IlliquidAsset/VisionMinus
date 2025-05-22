.class Lcom/powervision/media/ui/activity/VideoPlayActivity$1;
.super Ljava/lang/Thread;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/VideoPlayActivity;->onImageDownloadClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$1;->this$0:Lcom/powervision/media/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 340
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getImageDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$1;->this$0:Lcom/powervision/media/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->access$200(Lcom/powervision/media/ui/activity/VideoPlayActivity;)Lcom/powervision/base/model/MediaModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/powervision/base/utils/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 344
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$1;->this$0:Lcom/powervision/media/ui/activity/VideoPlayActivity;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v1, v2}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->access$300(Lcom/powervision/media/ui/activity/VideoPlayActivity;Landroid/content/Context;Ljava/io/File;)V

    .line 345
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$1;->this$0:Lcom/powervision/media/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->access$400(Lcom/powervision/media/ui/activity/VideoPlayActivity;)Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/VideoPlayActivity$ControlHandler;->sendEmptyMessage(I)Z

    return-void
.end method
