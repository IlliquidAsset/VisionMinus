.class final Lcn/sharesdk/loopshare/utils/b$5;
.super Lcom/mob/tools/RxMob$QuickSubscribe;
.source "AsyncProtocolInMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/b;->a(Ljava/lang/String;Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$QuickSubscribe<",
        "Lcn/sharesdk/loopshare/beans/SceneData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/b$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$QuickSubscribe;-><init>()V

    return-void
.end method


# virtual methods
.method protected doNext(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "Lcn/sharesdk/loopshare/beans/SceneData;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/b$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/h;->a(Ljava/lang/String;)Lcn/sharesdk/loopshare/beans/SceneData;

    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
