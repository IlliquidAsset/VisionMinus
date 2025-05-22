.class final Lcom/mob/tools/gui/BitmapProcessor$1;
.super Ljava/lang/Thread;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/BitmapProcessor;->deleteCacheDir(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 179
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$600()V

    return-void
.end method
