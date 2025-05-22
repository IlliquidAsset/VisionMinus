.class final Lcom/mob/wrappers/MobPushWrapper$2;
.super Ljava/lang/Object;
.source "MobPushWrapper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/MobPushWrapper;->getRegistrationId(Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$2;->val$callback:Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$2;->val$callback:Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mob/wrappers/MobPushWrapper$MobPushCallbackWrapper;->onSuccess(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
