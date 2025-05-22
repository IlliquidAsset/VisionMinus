.class Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$3;
.super Ljava/lang/Object;
.source "NewHandheldPersenter.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$3;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 460
    iget-object p2, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$3;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 461
    iget-object p2, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$3;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {p2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object p2

    check-cast p2, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {p2, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->updateCurrentMode(Ljava/lang/String;)V

    :cond_0
    const-string p2, "FOLLOW"

    .line 463
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 464
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$3;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setFollowMode()V

    :cond_1
    return-void
.end method
