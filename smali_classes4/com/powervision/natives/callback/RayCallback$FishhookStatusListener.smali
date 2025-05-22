.class public interface abstract Lcom/powervision/natives/callback/RayCallback$FishhookStatusListener;
.super Ljava/lang/Object;
.source "RayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FishhookStatusListener"
.end annotation


# static fields
.field public static final FISHHOOK_STATUS_OFF:I = 0x1

.field public static final FISHHOOK_STATUS_ON:I


# virtual methods
.method public abstract hookPut()V
.end method

.method public abstract hookReceiving()V
.end method
