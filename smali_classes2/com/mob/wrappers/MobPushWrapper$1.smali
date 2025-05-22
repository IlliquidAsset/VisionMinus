.class final Lcom/mob/wrappers/MobPushWrapper$1;
.super Ljava/lang/Object;
.source "MobPushWrapper.java"

# interfaces
.implements Lcom/mob/pushsdk/MobPushCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/MobPushWrapper;->getRegistrationId(Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/pushsdk/MobPushCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$1;->val$callback:Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mob/wrappers/MobPushWrapper$1;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$1;->val$callback:Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p1}, Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
