.class final Lcn/sharesdk/loopshare/utils/h$1;
.super Lcom/mob/tools/RxMob$QuickSubscribe;
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
        "Lcom/mob/tools/RxMob$QuickSubscribe<",
        "Lcn/sharesdk/loopshare/beans/ConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcn/sharesdk/loopshare/utils/h$1;->a:Z

    invoke-direct {p0}, Lcom/mob/tools/RxMob$QuickSubscribe;-><init>()V

    return-void
.end method


# virtual methods
.method protected doNext(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "Lcn/sharesdk/loopshare/beans/ConfigData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 266
    invoke-static {}, Lcn/sharesdk/loopshare/utils/a;->a()Lcn/sharesdk/loopshare/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/loopshare/utils/a;->b()Z

    move-result v0

    .line 267
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 268
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appkey"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "plat"

    const-string v3, "1"

    .line 269
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->c()Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sysver"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->c()Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appver"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->c()Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apppkg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->c()Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "duid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->c()Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v2

    const-string v3, "networktype"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-boolean v0, p0, Lcn/sharesdk/loopshare/utils/h$1;->a:Z

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/h;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcn/sharesdk/loopshare/beans/ConfigData;

    invoke-static {v1, v0, v2}, Lcn/sharesdk/loopshare/utils/h;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Lcn/sharesdk/loopshare/beans/ServerData;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/loopshare/beans/ConfigData;

    .line 278
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
