.class public interface abstract Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;
.super Ljava/lang/Object;
.source "PVW4DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/PVW4DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AOADownloadListener"
.end annotation


# virtual methods
.method public abstract downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract downloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract downloadTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract downloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IF)V
.end method

.method public abstract onCancelAll()V
.end method

.method public abstract onHighPriorityDownloadAll()V
.end method

.method public abstract onLowPriorityDownloadAll()V
.end method
