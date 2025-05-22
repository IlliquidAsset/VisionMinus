.class Lcom/mob/commons/b/g$1;
.super Landroid/content/BroadcastReceiver;
.source "Meizu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b/g;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b/g;


# direct methods
.method constructor <init>(Lcom/mob/commons/b/g;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/mob/commons/b/g$1;->a:Lcom/mob/commons/b/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const/16 v0, 0x7f

    .line 118
    :try_start_0
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x80

    .line 120
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_4

    const/16 p1, 0x81

    .line 126
    invoke-static {p1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const/16 p2, 0x47

    .line 128
    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    .line 129
    iget-object p1, p0, Lcom/mob/commons/b/g$1;->a:Lcom/mob/commons/b/g;

    invoke-static {p1}, Lcom/mob/commons/b/g;->a(Lcom/mob/commons/b/g;)Lcom/mob/commons/b/g$a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/b/g$a;->a(J)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x45

    .line 130
    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 131
    iget-object p1, p0, Lcom/mob/commons/b/g$1;->a:Lcom/mob/commons/b/g;

    invoke-static {p1}, Lcom/mob/commons/b/g;->b(Lcom/mob/commons/b/g;)Lcom/mob/commons/b/g$a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/b/g$a;->a(J)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x46

    .line 132
    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 133
    iget-object p1, p0, Lcom/mob/commons/b/g$1;->a:Lcom/mob/commons/b/g;

    invoke-static {p1}, Lcom/mob/commons/b/g;->c(Lcom/mob/commons/b/g;)Lcom/mob/commons/b/g$a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/b/g$a;->a(J)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x4b

    .line 134
    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 135
    iget-object p1, p0, Lcom/mob/commons/b/g$1;->a:Lcom/mob/commons/b/g;

    invoke-static {p1}, Lcom/mob/commons/b/g;->d(Lcom/mob/commons/b/g;)Lcom/mob/commons/b/g$a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/mob/commons/b/g$a;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method
