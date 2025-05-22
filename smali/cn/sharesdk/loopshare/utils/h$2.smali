.class final Lcn/sharesdk/loopshare/utils/h$2;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/h;->a()Lcn/sharesdk/loopshare/beans/ConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$Subscriber<",
        "Lcn/sharesdk/loopshare/beans/ConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/h$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/loopshare/beans/ConfigData;)V
    .locals 2

    .line 285
    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/h;->a(Lcn/sharesdk/loopshare/beans/ConfigData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->e()Lcom/mob/tools/utils/Hashon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/i;->a(Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/h$2;->a:Ljava/lang/String;

    const-string v1, "event_id_config"

    invoke-static {v0, v1}, Lcom/mob/commons/eventrecoder/EventRecorder;->addEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/h;->b(Lcn/sharesdk/loopshare/beans/ConfigData;)Lcn/sharesdk/loopshare/beans/ConfigData;

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 283
    check-cast p1, Lcn/sharesdk/loopshare/beans/ConfigData;

    invoke-virtual {p0, p1}, Lcn/sharesdk/loopshare/utils/h$2;->a(Lcn/sharesdk/loopshare/beans/ConfigData;)V

    return-void
.end method
