.class public interface abstract Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;
.super Ljava/lang/Object;
.source "ActivationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/ActivationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnConnectActivationResultListener"
.end annotation


# static fields
.field public static final CONNECT_ACTIVATION_LINK_DISCONNECT:I = 0x3

.field public static final CONNECT_ACTIVATION_LINK_FAILED:I = 0x1

.field public static final CONNECT_ACTIVATION_LINK_SUCCESS:I = 0x0

.field public static final CONNECT_ACTIVATION_LINK_TIMEOUT:I = 0x2


# virtual methods
.method public abstract setConnectActivationLinkDisconnect()V
.end method

.method public abstract setConnectActivationLinkFailed()V
.end method

.method public abstract setConnectActivationLinkSuccess()V
.end method

.method public abstract setConnectActivationLinkTimeout()V
.end method
