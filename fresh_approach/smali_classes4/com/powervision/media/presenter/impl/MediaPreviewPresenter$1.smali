.class Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;
.super Ljava/lang/Object;
.source "MediaPreviewPresenter.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media---"

    .line 139
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "MediaPreviewPresenter downloadCancel"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$102(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;I)I

    .line 141
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$900(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->cancelDownUpdate()V

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string p1, "media---"

    .line 93
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPreviewPresenter downloadSuccess---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    const-string v0, "temp"

    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    const-string p4, ".thm"

    .line 96
    invoke-virtual {p3, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, ".THM"

    invoke-virtual {p3, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p4, p1}, Lcom/powervision/base/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$400(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    check-cast p2, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p2, p1}, Lcom/powervision/media/ui/view/IMediaView;->loadPreviewImage(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/powervision/base/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string p2, ".LRV"

    .line 105
    invoke-virtual {p3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 p4, 0x0

    const/16 v0, 0x64

    if-nez p2, :cond_7

    const-string p2, ".lrv"

    invoke-virtual {p3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_4

    .line 111
    :cond_3
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isDone()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 113
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$600(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    check-cast p2, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p2, v1, v0}, Lcom/powervision/media/ui/view/IMediaView;->updateDownloadInfo(II)V

    .line 114
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2, p4}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$002(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;Lcom/powervision/localhttp/entity/MediaLib;)Lcom/powervision/localhttp/entity/MediaLib;

    .line 115
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2, v1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$102(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;I)I

    goto :goto_3

    .line 117
    :cond_4
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_5

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    .line 127
    :cond_6
    :goto_2
    iget-object p3, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p3}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$700(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/view/IMediaView;

    iget-object p4, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p4}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)I

    move-result p4

    mul-int/lit8 p4, p4, 0x64

    div-int/2addr p4, p2

    invoke-interface {p3, v1, p4}, Lcom/powervision/media/ui/view/IMediaView;->updateDownloadInfo(II)V

    .line 128
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)I

    move-result p3

    add-int/2addr p3, v1

    invoke-static {p2, p3}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$102(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;I)I

    .line 131
    :goto_3
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p3

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3, p4}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$800(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;Landroid/content/Context;Ljava/io/File;)V

    goto :goto_5

    .line 107
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$500(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1, v1, v0}, Lcom/powervision/media/ui/view/IMediaView;->updateDownloadInfo(II)V

    .line 108
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1, p4}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$002(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;Lcom/powervision/localhttp/entity/MediaLib;)Lcom/powervision/localhttp/entity/MediaLib;

    .line 109
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1, v1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$102(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;I)I

    :cond_8
    :goto_5
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media---"

    .line 146
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "MediaPreviewPresenter downloadTimeout"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$102(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;I)I

    .line 148
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaView;->updateDownError()V

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 1

    const-string p1, "media---"

    .line 68
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MediaPreviewPresenter downloading---"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    if-ne p4, p1, :cond_4

    .line 71
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 72
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result p1

    const/4 p2, 0x6

    const/high16 p3, 0x42c80000    # 100.0f

    const/4 p4, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$300(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaView;

    mul-float p5, p5, p3

    float-to-int p2, p5

    invoke-interface {p1, p4, p2}, Lcom/powervision/media/ui/view/IMediaView;->updateDownloadInfo(II)V

    goto :goto_3

    .line 73
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$000(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/localhttp/entity/MediaLib;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 83
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$200(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    check-cast p2, Lcom/powervision/media/ui/view/IMediaView;

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p5, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p5, v0

    mul-float p5, p5, p3

    int-to-float p1, p1

    div-float/2addr p5, p1

    float-to-int p1, p5

    invoke-interface {p2, p4, p1}, Lcom/powervision/media/ui/view/IMediaView;->updateDownloadInfo(II)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onCancelAll()V
    .locals 3

    const-string v0, "media---"

    .line 153
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaPreviewPresenter onCancelAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$102(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;I)I

    .line 155
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;->access$1100(Lcom/powervision/media/presenter/impl/MediaPreviewPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/view/IMediaView;

    invoke-interface {v0}, Lcom/powervision/media/ui/view/IMediaView;->cancelDownUpdate()V

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 3

    const-string v0, "media---"

    .line 165
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaPreviewPresenter onHighPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 3

    const-string v0, "media---"

    .line 160
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaPreviewPresenter onLowPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
