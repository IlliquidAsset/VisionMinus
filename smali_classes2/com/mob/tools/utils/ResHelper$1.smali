.class final Lcom/mob/tools/utils/ResHelper$1;
.super Ljava/lang/Object;
.source "ResHelper.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ResHelper;->getMediaUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/mob/tools/utils/ResHelper$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 656
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->access$002(Landroid/net/Uri;)Landroid/net/Uri;

    .line 657
    iget-object p1, p0, Lcom/mob/tools/utils/ResHelper$1;->val$object:Ljava/lang/Object;

    monitor-enter p1

    .line 658
    :try_start_0
    iget-object p2, p0, Lcom/mob/tools/utils/ResHelper$1;->val$object:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 659
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
