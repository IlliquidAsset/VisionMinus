.class public interface abstract Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;
.super Ljava/lang/Object;
.source "MobPushWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/MobPushWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobPushReceiverWrapper"
.end annotation


# virtual methods
.method public abstract onAliasCallback(Landroid/content/Context;Ljava/lang/String;II)V
.end method

.method public abstract onCustomMessageReceive(Landroid/content/Context;Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;)V
.end method

.method public abstract onNotifyMessageOpenedReceive(Landroid/content/Context;Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;)V
.end method

.method public abstract onNotifyMessageReceive(Landroid/content/Context;Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;)V
.end method

.method public abstract onTagsCallback(Landroid/content/Context;[Ljava/lang/String;II)V
.end method
