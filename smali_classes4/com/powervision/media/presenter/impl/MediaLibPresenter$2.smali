.class Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;
.super Ljava/lang/Object;
.source "MediaLibPresenter.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/presenter/impl/MediaLibPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media--"

    .line 364
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "MediaLibPresenter downloadCancel"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    .line 366
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->cancelDownUpdate()V

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string p1, "media--"

    .line 324
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaLibPresenter downloadSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 326
    iget-object p4, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p4}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 327
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "temp"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/powervision/base/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/localhttp/entity/MediaLib;

    if-eqz p2, :cond_3

    .line 331
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isDone()Z

    move-result v0

    const/16 v1, 0x64

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 332
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210downloadSuccess "

    invoke-interface {p1, v2, v0}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 335
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2400(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {v0, p1, v1}, Lcom/powervision/media/ui/view/IMediaLibView;->updateDownloadInfo(II)V

    .line 336
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2500(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {v0, p2, p1}, Lcom/powervision/media/ui/view/IMediaLibView;->notifyAdapter(Lcom/powervision/localhttp/entity/MediaLib;I)V

    .line 337
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1, v3}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1902(Lcom/powervision/media/presenter/impl/MediaLibPresenter;I)I

    goto :goto_2

    .line 340
    :cond_0
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2600(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/view/IMediaLibView;

    iget-object v4, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v4}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v5}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, p2

    invoke-interface {v0, v4, v5}, Lcom/powervision/media/ui/view/IMediaLibView;->updateDownloadInfo(II)V

    .line 351
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8fde\u62cddownloadSuccess "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p1, p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1902(Lcom/powervision/media/presenter/impl/MediaLibPresenter;I)I

    .line 354
    :goto_2
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2700(Lcom/powervision/media/presenter/impl/MediaLibPresenter;Landroid/content/Context;Ljava/io/File;)V

    :cond_3
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media--"

    .line 371
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "MediaLibPresenter downloadTimeout"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$3000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IMediaLibView;->updateDownError()V

    .line 373
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 1

    const-string p1, "media--"

    .line 299
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaLibPresenter downloading---"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "--count--"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    if-ne p4, p1, :cond_4

    .line 301
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2000(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    if-eqz p1, :cond_4

    .line 303
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result p2

    const/4 p3, 0x6

    const/high16 p4, 0x42c80000    # 100.0f

    if-eq p2, p3, :cond_1

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result p2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2300(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    iget-object p2, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    mul-float p5, p5, p4

    float-to-int p3, p5

    invoke-interface {p1, p2, p3}, Lcom/powervision/media/ui/view/IMediaLibView;->updateDownloadInfo(II)V

    goto :goto_2

    .line 304
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    .line 309
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, p1

    .line 314
    :goto_1
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2200(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IMediaLibView;

    iget-object p3, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {p3}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$1900(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p5, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p5, v0

    mul-float p5, p5, p4

    int-to-float p2, p2

    div-float/2addr p5, p2

    float-to-int p2, p5

    invoke-interface {p1, p3, p2}, Lcom/powervision/media/ui/view/IMediaLibView;->updateDownloadInfo(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCancelAll()V
    .locals 3

    const-string v0, "media--"

    .line 378
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaLibPresenter onCancelAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$2800(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)V

    .line 380
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/MediaLibPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/MediaLibPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/MediaLibPresenter;->access$3100(Lcom/powervision/media/presenter/impl/MediaLibPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/view/IMediaLibView;

    invoke-interface {v0}, Lcom/powervision/media/ui/view/IMediaLibView;->cancelDownUpdate()V

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 3

    const-string v0, "media--"

    .line 390
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaLibPresenter onHighPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 3

    const-string v0, "media--"

    .line 385
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaLibPresenter onLowPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
