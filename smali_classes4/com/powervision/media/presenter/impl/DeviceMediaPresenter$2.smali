.class Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;
.super Ljava/lang/Object;
.source "DeviceMediaPresenter.java"

# interfaces
.implements Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media"

    .line 252
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "DeviceMediaPresenter downloadCancel"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 254
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1700(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IDeviceMediaView;->cancelDownUpdate()V

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string p1, "media"

    .line 236
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceMediaPresenter downloadSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "temp"

    const-string v0, ""

    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/powervision/base/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    iget-object p2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/localhttp/entity/FileInfo;

    .line 242
    iget-object p4, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p4}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1400(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p4

    check-cast p4, Lcom/powervision/media/ui/view/IDeviceMediaView;

    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    invoke-interface {p4, v0, v1}, Lcom/powervision/media/ui/view/IDeviceMediaView;->updateDownloadInfo(II)V

    .line 243
    iget-object p4, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p4}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1500(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p4

    check-cast p4, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {p4, p2}, Lcom/powervision/media/ui/view/IDeviceMediaView;->notifyAdapter(Lcom/powervision/localhttp/entity/FileInfo;)V

    .line 244
    iget-object p4, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p4}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object p3, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p3, p1, p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1600(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;Ljava/lang/String;Lcom/powervision/localhttp/entity/FileInfo;)V

    :cond_0
    return-void
.end method

.method public downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "media"

    .line 259
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "DeviceMediaPresenter downloadTimeout"

    invoke-interface {p1, p3, p2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1800(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IDeviceMediaView;->updateDownError()V

    .line 261
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 0

    const-string p1, "media"

    .line 230
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DeviceMediaPresenter downloading= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1300(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IDeviceMediaView;

    iget-object p2, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p5, p5, p3

    float-to-int p3, p5

    invoke-interface {p1, p2, p3}, Lcom/powervision/media/ui/view/IDeviceMediaView;->updateDownloadInfo(II)V

    return-void
.end method

.method public onCancelAll()V
    .locals 3

    const-string v0, "media"

    .line 266
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DeviceMediaPresenter onCancelAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1200(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 268
    iget-object v0, p0, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter$2;->this$0:Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;

    invoke-static {v0}, Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;->access$1900(Lcom/powervision/media/presenter/impl/DeviceMediaPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/view/IDeviceMediaView;

    invoke-interface {v0}, Lcom/powervision/media/ui/view/IDeviceMediaView;->cancelDownUpdate()V

    return-void
.end method

.method public onHighPriorityDownloadAll()V
    .locals 3

    const-string v0, "media"

    .line 278
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DeviceMediaPresenter onHighPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLowPriorityDownloadAll()V
    .locals 3

    const-string v0, "media"

    .line 273
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DeviceMediaPresenter onLowPriorityDownloadAll"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
