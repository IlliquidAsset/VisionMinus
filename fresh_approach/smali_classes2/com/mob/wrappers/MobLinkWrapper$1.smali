.class final Lcom/mob/wrappers/MobLinkWrapper$1;
.super Ljava/lang/Object;
.source "MobLinkWrapper.java"

# interfaces
.implements Lcom/mob/moblink/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/MobLinkWrapper;->getMobId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/moblink/ActionListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mob/wrappers/MobLinkWrapper$1;->val$callback:Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mob/wrappers/MobLinkWrapper$1;->val$callback:Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;

    invoke-interface {v0, p1}, Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mob/wrappers/MobLinkWrapper$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mob/wrappers/MobLinkWrapper$1;->val$callback:Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;

    invoke-interface {v0, p1}, Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
