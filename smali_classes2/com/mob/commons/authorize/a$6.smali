.class Lcom/mob/commons/authorize/a$6;
.super Ljava/lang/Object;
.source "Authorizer.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/authorize/a;->a(ZZ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/mob/commons/authorize/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/authorize/a;ZZ[Ljava/lang/String;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/mob/commons/authorize/a$6;->d:Lcom/mob/commons/authorize/a;

    iput-boolean p2, p0, Lcom/mob/commons/authorize/a$6;->a:Z

    iput-boolean p3, p0, Lcom/mob/commons/authorize/a$6;->b:Z

    iput-object p4, p0, Lcom/mob/commons/authorize/a$6;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 4

    const-string p1, "duid"

    const/4 v0, 0x0

    .line 987
    :try_start_0
    iget-boolean v1, p0, Lcom/mob/commons/authorize/a$6;->a:Z

    if-nez v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/mob/commons/authorize/a$6;->d:Lcom/mob/commons/authorize/a;

    invoke-static {v1}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;)Z

    .line 991
    :cond_0
    iget-object v1, p0, Lcom/mob/commons/authorize/a$6;->d:Lcom/mob/commons/authorize/a;

    invoke-static {v1}, Lcom/mob/commons/authorize/a;->c(Lcom/mob/commons/authorize/a;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 993
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 996
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 997
    iget-boolean v3, p0, Lcom/mob/commons/authorize/a$6;->b:Z

    if-eqz v3, :cond_3

    .line 998
    iget-object v2, p0, Lcom/mob/commons/authorize/a$6;->d:Lcom/mob/commons/authorize/a;

    iget-boolean v3, p0, Lcom/mob/commons/authorize/a$6;->a:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;Z)Ljava/lang/String;

    move-result-object v2

    .line 999
    iget-boolean v3, p0, Lcom/mob/commons/authorize/a$6;->a:Z

    if-nez v3, :cond_3

    .line 1000
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    iget-object p1, p0, Lcom/mob/commons/authorize/a$6;->d:Lcom/mob/commons/authorize/a;

    invoke-static {p1, v1, v0}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;Ljava/util/HashMap;Z)V

    .line 1004
    :cond_3
    iget-object p1, p0, Lcom/mob/commons/authorize/a$6;->c:[Ljava/lang/String;

    aput-object v2, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1006
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method
