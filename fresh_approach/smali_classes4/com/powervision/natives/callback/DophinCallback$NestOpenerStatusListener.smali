.class public interface abstract Lcom/powervision/natives/callback/DophinCallback$NestOpenerStatusListener;
.super Ljava/lang/Object;
.source "DophinCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/DophinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NestOpenerStatusListener"
.end annotation


# static fields
.field public static final PVSDK_NEST_OPENER_STATUS_CLOSE:I = 0x0

.field public static final PVSDK_NEST_OPENER_STATUS_OPEN_NEST:I = 0x2

.field public static final PVSDK_NEST_OPENER_STATUS_PUT_HOOK:I = 0x1

.field public static final PVSDK_NEST_OPENER_STATUS_UNKNOW:I = 0xff


# virtual methods
.method public abstract nestOpener(I)V
.end method
