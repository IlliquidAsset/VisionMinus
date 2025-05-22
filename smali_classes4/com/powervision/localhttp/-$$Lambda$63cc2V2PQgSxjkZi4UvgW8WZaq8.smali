.class public final synthetic Lcom/powervision/localhttp/-$$Lambda$63cc2V2PQgSxjkZi4UvgW8WZaq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/localhttp/PVW4DownloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/localhttp/PVW4DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/localhttp/-$$Lambda$63cc2V2PQgSxjkZi4UvgW8WZaq8;->f$0:Lcom/powervision/localhttp/PVW4DownloadManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/localhttp/-$$Lambda$63cc2V2PQgSxjkZi4UvgW8WZaq8;->f$0:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->handleDownloadMessageTimeout()V

    return-void
.end method
