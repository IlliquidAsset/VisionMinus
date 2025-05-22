.class Lcom/powervision/media/presenter/impl/BurstPresenter$1;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "BurstPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/presenter/impl/BurstPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/presenter/impl/BurstPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/media/presenter/impl/BurstPresenter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/media/presenter/impl/BurstPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/BurstPresenter;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteBurstData(ILjava/lang/String;)V
    .locals 1

    .line 38
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->deleteBurstData(ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 42
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 44
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/BurstPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/BurstPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/BurstPresenter;->access$100(Lcom/powervision/media/presenter/impl/BurstPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IBurstView;

    iget-object p2, p0, Lcom/powervision/media/presenter/impl/BurstPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/BurstPresenter;

    invoke-static {p2}, Lcom/powervision/media/presenter/impl/BurstPresenter;->access$000(Lcom/powervision/media/presenter/impl/BurstPresenter;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/powervision/media/ui/view/IBurstView;->deleteBurstSuccess(Z)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/BurstPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/BurstPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/BurstPresenter;->access$200(Lcom/powervision/media/presenter/impl/BurstPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IBurstView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IBurstView;->deleteBurstFail()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 50
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/BurstPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/BurstPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/BurstPresenter;->access$300(Lcom/powervision/media/presenter/impl/BurstPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IBurstView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IBurstView;->deleteBurstFail()V

    goto :goto_0

    :cond_1
    const-string p1, "media"

    .line 53
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onFailure=deleteBurstData"

    invoke-interface {p1, v0, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/powervision/media/presenter/impl/BurstPresenter$1;->this$0:Lcom/powervision/media/presenter/impl/BurstPresenter;

    invoke-static {p1}, Lcom/powervision/media/presenter/impl/BurstPresenter;->access$400(Lcom/powervision/media/presenter/impl/BurstPresenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/ui/view/IBurstView;

    invoke-interface {p1}, Lcom/powervision/media/ui/view/IBurstView;->deleteBurstFail()V

    :goto_0
    return-void
.end method
