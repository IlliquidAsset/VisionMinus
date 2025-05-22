.class Lcom/mob/mcl/a/a;
.super Ljava/lang/Object;
.source "ApcHelper.java"

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# instance fields
.field final synthetic a:Lcom/mob/apc/APCMessage;


# direct methods
.method constructor <init>(Lcom/mob/mcl/a/b;Lcom/mob/apc/APCMessage;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mob/mcl/a/a;->a:Lcom/mob/apc/APCMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/mob/mcl/b/c;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    check-cast p1, Lcom/mob/mcl/b/c;

    invoke-virtual {p1}, Lcom/mob/mcl/b/c;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/mob/mcl/a/a;->a:Lcom/mob/apc/APCMessage;

    iput-object v0, p1, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    :cond_0
    return-void
.end method
