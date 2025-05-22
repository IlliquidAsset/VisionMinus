.class public interface abstract Lcom/mob/wrappers/PaySDKWrapper$PayCallback;
.super Ljava/lang/Object;
.source "PaySDKWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/PaySDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PayCallback"
.end annotation


# virtual methods
.method public abstract onPayEnd(Lcom/mob/wrappers/PaySDKWrapper$Order;II)V
.end method

.method public abstract onWillPay(Lcom/mob/wrappers/PaySDKWrapper$Order;ILjava/lang/String;)Z
.end method
