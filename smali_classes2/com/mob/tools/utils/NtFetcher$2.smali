.class Lcom/mob/tools/utils/NtFetcher$2;
.super Landroid/content/BroadcastReceiver;
.source "NtFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/NtFetcher;->registerRcv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/NtFetcher;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/NtFetcher;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/mob/tools/utils/NtFetcher$2;->this$0:Lcom/mob/tools/utils/NtFetcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 253
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/mob/tools/utils/NtFetcher$2;->this$0:Lcom/mob/tools/utils/NtFetcher;

    invoke-static {p1}, Lcom/mob/tools/utils/NtFetcher;->access$000(Lcom/mob/tools/utils/NtFetcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 257
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
