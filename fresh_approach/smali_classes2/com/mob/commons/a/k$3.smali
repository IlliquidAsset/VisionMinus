.class Lcom/mob/commons/a/k$3;
.super Landroid/content/BroadcastReceiver;
.source "DvcClt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/k;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/k;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/k;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/mob/commons/a/k$3;->a:Lcom/mob/commons/a/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 661
    iget-object p1, p0, Lcom/mob/commons/a/k$3;->a:Lcom/mob/commons/a/k;

    invoke-static {p1}, Lcom/mob/commons/a/k;->b(Lcom/mob/commons/a/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 662
    iget-object p1, p0, Lcom/mob/commons/a/k$3;->a:Lcom/mob/commons/a/k;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/mob/commons/a/k;->b(I)V

    .line 664
    iget-object p1, p0, Lcom/mob/commons/a/k$3;->a:Lcom/mob/commons/a/k;

    invoke-static {p1}, Lcom/mob/commons/a/k;->c(Lcom/mob/commons/a/k;)V

    :cond_0
    return-void
.end method
